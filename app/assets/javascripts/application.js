// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
  //= require turbolinks
  //= require jquery
  //= require bootstrap-sprockets
  //= require_tree .
  //= require cocoon


// $(function(){
//   var imgs = $("#slideshow > li");
//   var imgLen = imgs.length;
//   var count = 0;
//   function changeImg(){
//     //スライド切替のポイント（配列を順番に処理し終わったら配列の先頭に戻る計算式）
//     count = (count + 1) % imgLen; 
//     imgs.removeClass("showSlide").eq(count).addClass("showSlide");
//   }
//   setInterval(changeImg, 5000); //切替の間隔（ミリ秒）
// })