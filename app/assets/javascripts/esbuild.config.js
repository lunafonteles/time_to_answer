const esbuild = require('esbuild');

esbuild.build({
  entryPoints: [
    'app/assets/javascripts/controllers/application.js',
    'app/assets/javascripts/controllers/hello_controller.js',
  ],
  bundle: true,
  sourcemap: true,
  outdir: 'public/assets',
  publicPath: '/assets',
  external: ['@hotwired/stimulus'],
}).catch(() => process.exit(1));