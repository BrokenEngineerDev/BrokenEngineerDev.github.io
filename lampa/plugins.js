// Lampa plugin loader. Add this file's URL once in Lampa (Settings -> Extensions -> Add plugin).
// To change the plugin set, edit PLUGIN_URLS and push; Lampa picks it up on next start.
(function () {
    'use strict';

    var PLUGIN_URLS = [
        'https://nb557.github.io/plugins/online_mod.js'
    ];

    Lampa.Utils.putScriptAsync(PLUGIN_URLS, function () {});
})();
