//made footer always stick to bottom of screen, by adding margin if content isn't long enough
var resizeMargin = function () {
    var docHeight = $(window).height();
    var footerHeight = $('#contact').height();
    var footerTop = $('#contact').position().top + footerHeight;

    if (footerTop < docHeight) {
        $('#contact').css('margin-top', 10 + (docHeight - footerTop) + 'px');
    }
};

$(document).ready(resizeMargin);
$(window).resize(resizeMargin);

//added functionality for highlighting code syntax
$(document).ready(function () {
    $('pre code').each(function (i, block) {
        hljs.highlightBlock(block);
    });
});