package kong;

import flash.events.Event;
import flash.display.Loader;
import flash.net.URLRequest;
import flash.system.Security;

class Kongregate {
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
        var parameters = flash.Lib.current.root.loaderInfo.parameters;
        var apiPath = parameters.kongregate_api_path;
        if (apiPath == null) {
            apiPath = "http://www.kongregate.com/flash/API_AS3_Local.swf";
        }
        Security.allowDomain(apiPath);
        var request = new URLRequest(apiPath);
        var loader = new Loader();
        loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function(event:Event) {
            var api = event.target.content;
            onLoad(cast api);
        });
        loader.load(request);
        flash.Lib.current.addChild(loader);
    }
    #end
}
