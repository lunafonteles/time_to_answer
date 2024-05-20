namespace :dev do
  DEFAULT_PASSWORD = 123456

  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.production?
      puts "Você não está em ambiente de desenvolvimento/teste"
    else 
      show_spinner("Apagando BD...") do
        %x(rails db:drop)
      end

      show_spinner("Criando BD...") { %x(rails db:create) }
      show_spinner("Migrando BD...") { %x(rails db:migrate) }
      show_spinner("Populando BD...") { %x(rails db:seed)}
      show_spinner("Cadastrando administrador padrão...") { %x(rails dev:add_default_admin)}
      show_spinner("Cadastrando user padrão...") { %x(rails dev:add_default_user)}

    end
  end

  desc "Adiciona o administrador padrão"
  task add_default_admin: :environment do
    Admin.create!(
      email: 'adm@gmail.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  desc "Adiciona o usuário padrão"
  task add_default_user: :environment do
    User.create!(
      email: 'user@gmail.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  private 
  def show_spinner(msg)
    spinner = TTY::Spinner.new("[:spinner] #{msg}")
    spinner.auto_spin
    yield
    spinner.success('Concluído!')
  end
end
