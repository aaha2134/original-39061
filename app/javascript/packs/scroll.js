import $ from 'jquery';
global.$ = jQuery = $;
console.log("scroll.js loaded");

$(document).ready(function() {
  $('#reserve-btn-text').click(function() {
    $('html, body').animate({
      scrollTop: $("#item-list").offset().top
    }, 1000);
  });
});