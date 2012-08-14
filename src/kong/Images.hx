#if flash

package kong;

import flash.display.DisplayObject;

typedef Images = {
    /** Exports a display object to be converted to a user avatar.
     *
     * The provided avatar may be null, in which case a snapshot of the stage will be used instead.
     *
     * After the request is complete, [callback] will be called. Its argument is [true] if the player
     * accepted the avatar, or [false] if they decide not to use it. **/
    function submitAvatar(avatar:DisplayObject, callback:Bool->Void):Void;
}

#end
