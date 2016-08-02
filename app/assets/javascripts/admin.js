//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require simple-module
//= require simple-hotkeys
//= require simple-uploader
//= require simditor
//= require_tree ./admin
//= require ./semantic-ui.js
$(document).on('ready page:load', function() {
  $('.ui.form')
    .form({
      fields: {
        article[title]     : 'empty',
        article[content]   : 'empty'
      }
    });
});
