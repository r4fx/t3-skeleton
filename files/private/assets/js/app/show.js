// another module which uses "mod"
// Example of use: <input type="button" onclick="APP.modules.show.useModule()" value="Click!">
APP.modules.show = (function () {
    // declaration of dependecies
    var mod = APP.modules.mod;

    function useModule() {
        mod.showModule(); // use module
    }

    return {
        useModule: useModule
    };
}());