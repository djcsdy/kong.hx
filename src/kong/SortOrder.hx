package kong;

/** Specifies constants that may be passed to the [sortOrder] argument of [SharedContent.browse()]. */
class SortOrder {
    /** Newest content first (this is the default if no sort order is specified). */
    public static inline var BY_NEWEST = "BY_NEWEST";

    /** Highest-rated content first. */
    public static inline var BY_RATING = "BY_RATING";

    /** Most-viewed content first. */
    public static inline var BY_LOAD_COUNT = "BY_LOAD_COUNT";

    /** Only show content made by the player's friends (newest first). */
    public static inline var BY_FRIENDS = "BY_FRIENDS";

    /** Only show content made by the current player (newest first). */
    public static inline var BY_OWN = "BY_OWN";
}