package kong;

class Kongregate {
    #if flash8
    #elseif flash
    static var api:KongregateApi = null;
    #end

    /** Retrieves the Kongregate API object, and calls [onLoad(api)] when complete.
     *
     * After retrieving the Kongregate API object you should call [api.services.connect()] to
     * connect to Kongregate. */
    #if flash8
    public static function loadApi(onLoad:KongregateApi->Void) {
        var api = flash.Lib._global.kongregate;
        onLoad(cast api);
    }
    #elseif flash
    public static function loadApi(onLoad:KongregateApi->Void) {
        if (api == null) {
            var parameters = flash.Lib.current.root.loaderInfo.parameters;
            var apiPath = parameters.kongregate_api_path;
            if (apiPath == null) {
                var scheme = if (~/^https:/.match(flash.Lib.current.root.loaderInfo.loaderURL)) "https" else "http";
                apiPath = scheme + "://www.kongregate.com/flash/API_AS3_Local.swf";
            }
            flash.system.Security.allowDomain(apiPath);
            var request = new flash.net.URLRequest(apiPath);
            var loader = new flash.display.Loader();
            loader.contentLoaderInfo.addEventListener(flash.events.Event.COMPLETE, function(event:flash.events.Event) {
                api = cast event.target.content;
                onLoad(api);
            });
            loader.load(request);
            flash.Lib.current.addChild(loader);
        } else {
            onLoad(api);
        }
    }
    #end
}
