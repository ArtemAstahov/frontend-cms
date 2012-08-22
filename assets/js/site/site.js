/* Bootstrap */
requirejs.config({
    deps : ['site', 'tests'],
    paths : {
        // Libs
        'jQuery' : '../libs/jquery/jquery-1.7.2',
        'Underscore' : '../libs/underscore',
        'Backbone' : '../libs/backbone',
        'QUnit' : '../libs/qunit-1.9.0',

        // Plugins
        'text' : '../libs/require/text'
    },
    shim : {
        'Backbone' : {
            deps : ['jQuery', 'Underscore'],
            exports : 'Backbone'
        }
    }

});
require(['router'], function (Router) {

    var site = Router.initialize();

    // Выстраиваем правильный URL страниц
    $(document).on('click', '.pagename a', function (e) {
        var href = $(this).attr('href');
        var protocol = this.protocol + '//';
        if (href.slice(protocol.length) !== protocol) {
            e.preventDefault();
            site.navigate(href, true);
        }
    });

// Выстраиваем правильный URL каталогов
    $(document).on('click', '.topmenu a', function (e) {
        var href = $(this).attr('href');
        var protocol = this.protocol + '//';
        if (href.slice(protocol.length) !== protocol) {
            e.preventDefault();
            site.navigate(href, true);
        }
    });

});