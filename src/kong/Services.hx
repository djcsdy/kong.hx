package kong;

typedef Services = {
    /** Initializes the connection to Kongregate.
     *
     * Except where otherwise noted, you must call this function before calling any other functions defined
     * by the Kongregate API. */
    function connect():Void;

    /** Displays the user registration UI.
     *
     * This is useful if the player is a guest but you want to authenticate them for a multiplayer game,
     * or to upsell an item. */
    function showRegistrationBox():Void;

    /** Gets the player's game authentication token, which is required when calling the authentication web service. */
    function getGameAuthToken():String;

    /** Tests of the player is a guest. A guest is an anonymous player who is not logged in to Kongregate. */
    function isGuest():Bool;

    function addEventListener(type:String, listener:Dynamic->Void);

    /** Retrieves the unique user ID of the current player. Returns "0" if the player is not logged in. */
    function getUserId():String;

    /** Retrieves the user name of the current player. If the player is not logged in, then they will be assigned
     * a temporary user name that begins with the string "Guest". **/
    function getUsername():String;
}
