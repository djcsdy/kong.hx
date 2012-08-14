#if flash9

package kong;

/** An event that is passed to a callback function after shared content is saved by calling
 * [SharedContent.save()]. */
typedef SaveEvent = {
    /** True if the shared content was saved successfully, or false if there was an error. If false, then
     * none of the other properties will be defined. */
    var success:Bool;

    /** The unique ID of the shared content that was saved. */
    var id:Null<Int>;

    /** The name of the shared content that was saved. */
    var name:String;

    /** A permanent link to the shared content that was saved. */
    var permalink:String;

    /** The content of the shared content that was saved. */
    var content:String;

    /** The label of the shared content that was saved. */
    var label:String;
}

#end