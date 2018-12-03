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
// jQuery
//= require jquery3

// Basic Rails
//= require rails-ujs
//= require activestorage

// Bootstrap 4.1
//= require popper
//= require bootstrap

//= require moment.min

$( document ).ready(function() {
  // Generate username
  function url_slug(username) {
    var slug;
    slug = username.toLowerCase();

    slug = slug.replace(/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/gi, 'a');
    slug = slug.replace(/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/gi, 'e');
    slug = slug.replace(/i|í|ì|ỉ|ĩ|ị/gi, 'i');
    slug = slug.replace(/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/gi, 'o');
    slug = slug.replace(/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/gi, 'u');
    slug = slug.replace(/ý|ỳ|ỷ|ỹ|ỵ/gi, 'y');
    slug = slug.replace(/đ/gi, 'd');

    slug = slug.replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '');

    slug = slug.replace(/ /gi, "");

    slug = slug.replace(/\-\-\-\-\-/gi, '');
    slug = slug.replace(/\-\-\-\-/gi, '');
    slug = slug.replace(/\-\-\-/gi, '');
    slug = slug.replace(/\-\-/gi, '');

    slug = '@' + slug + '@';
    slug = slug.replace(/\@\-|\-\@|\@/gi, '');
    
    return slug;
  }

  $('#user-name').keyup(function() {
	  var username = $(this).val();
	  $('#user-slug').val(url_slug(username));
	});

  // Scroll behavior
  var stage = 0;
  $(window).scroll(function () {
    var current = $(window).scrollTop();
    current++;
    
    var xheight = $(".up-next").height();
    if (current > stage) {
      $(".up-next").css("bottom",-xheight)
    } else {
      $(".up-next").css("bottom","0")
    }

    if ($(window).scrollTop() >= 50) {
      $(".main__content").addClass("fixed")
    } else {
      $(".main__content").removeClass("fixed")
    }

    stage = current;
  });

  // Account
  var user = $('meta[name=octolytics-actor-login]').attr("content");
  $("#update-account").load("/account/"+user+" .account-edit");
  $("#update-password").load("/account/"+user+" .password-edit");

  $(".direct-login").click(function() {
    $("body").addClass("noscroll");
    $(".login-modal").removeClass("hidden");
  });

  $(".account-action").click(function() {
    $(this).parent().addClass("active");
  });

  window.onclick = function(event) {
    if (!event.target.matches(".account-action") && !event.target.matches(".account-name")) {
      var account = document.getElementsByClassName("account");
      var i;
      for (i = 0; i < account.length; i++) {
        var openACCOUNT = account[i];
        if (openACCOUNT.classList.contains('active')) {
          openACCOUNT.classList.remove('active');
        }
      }
    }
  }

  // Truncate
  $(".truncate").css("-webkit-box-orient","vertical");

  // Disable contextmenu video player html5
  $("video").on("contextmenu",function() {
    return false;
  });

  // Course menu
  $(".nested").click(function() {
    $(this).toggleClass("active");
  })

  var topicHeight = Math.max.apply(null, $(".content-list-item.topic").map(function () {
    return $(this).height();
  }).get());

  var courseHeight = Math.max.apply(null, $(".content-list-item.course").map(function () {
    return $(this).height();
  }).get());

  $(".content-list-item.topic").css("height",(topicHeight));
  $(".content-list-item.course").css("height",(courseHeight));

  var url = window.location.pathname;
  var path = url.split( '/' );
  var cat = path[1]
  var subcat = path[2]
  var segment = path.pop();

  // console.log(cat, subcat, segment);
  if (cat == "examination" && segment != "examination") {
    
  }
});