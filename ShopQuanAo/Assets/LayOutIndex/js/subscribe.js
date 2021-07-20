'use strict';
var subscribeme = $('.subscribe-me'); 
jQuery(document).ready(function () {
    if (subscribeme.length) {
        subscribeme.subscribeBetter({
            trigger: "onload",
            delay: 300
        });
        var screen = $('html').width() - subscribeme.width();
        screen /= 2;
        subscribeme.offset({ left: screen, right: screen });
    }
});