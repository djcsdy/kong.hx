#if flash9

package kong;

import flash.display.DisplayObject;

typedef SharedContent = {
    /** Registers an event listener that will be called when shared content of the specified type
     * is loaded by the player.
     *
     * This function must be called <strong>before</strong> calling [api.services.connect()]. */
    function addLoadListener(type:String, listener:LoadEvent->Void):Void;

    /** Displays a list of shared content in the player's browser. This allows the player to view, rate,
     * or load shared content into your game.
     *
     * [contentType] is an arbitrary string that identifies the type of content to browse.
     *
     * [sortOrder] optionally specifies how to sort and filter content. If defined, it should be one of
     * the constants defined by [SortOrder]. If no sort order is specified then the default is
     * [SortOrder.BY_NEWEST].
     *
     * If [label] is defined, then the shared content browser will only display content that has the specified
     * label. */
    function browse(contentType:String, sortOrder:String=null, label:String=null):Void;

    /** Saves shared content to the Kongregate back-end.
     *
     * [type] is an arbitrary string that identifies the type of shared content. It must be no longer than 12
     * characters.
     *
     * [content] is a string representing the content of the shared content. The game will hang until this
     * content is sent, so it is strongly recommended that the content be smaller than 100kB.
     *
     * [callback] is a callback function that will be called when the content has been saved, or if there is an
     * error saving the content.
     *
     * [thumb] is a display object that will be used as a thumbnail image for the shared content. It is optional
     * but highly recommended. If [thumb] is not defined, then a snapshot of the stage will be used instead.
     *
     * [label] is an optional arbitrary string that may be used to filter the content when calling [browse]. */
    function save(type:String, content:String, callback:SaveEvent->Void, thumb:DisplayObject=null, label:String=null);
}

#end