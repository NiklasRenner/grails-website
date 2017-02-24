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

//added listener for clipboard.js
var clipboardDemos = new Clipboard('[data-clipboard-copy-link]');
clipboardDemos.on('success', function (e) {
    e.clearSelection();
    console.info('Action:', e.action);
    console.info('Text:', e.text);
    console.info('Trigger:', e.trigger);
});