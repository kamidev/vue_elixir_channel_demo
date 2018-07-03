mix.setPublicPath('../assets')
  .js('js/app.js', 'js/app.js')
  .sass('css/app.scss', 'css/app.css')
  .copyDirectory('./static', '..//static');

mix.options({
  clearConsole: false,
  processCssUrls: false
});