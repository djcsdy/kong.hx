#if flash9

package kong;

/** An event that is fired when the player loads some shared content. */
typedef LoadEvent = {
    /** The unique ID of the shared content that was loaded. */
    var id:Int;

    /** The name of the shared content that was loaded. */
    var name:String;

    /** A permanent link to the shared content that was loaded. */
    var permalink:String;

    /** The content of the shared content that was loaded. */
    var content:String;

    /** The label of the shared content that was loaded. */
    var label:String;
}

#end