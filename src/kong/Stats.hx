package kong;

typedef Stats = {
    /** Submits a new value for a statistic.
     *
     * Before submitting values for a statistic, you must manually set up the statistic on the Kongregate
     * website. The process is described at http://developers.kongregate.com/docs/kongregate-apis/stats
     *
     * [statName] is the name you configured for the statistic.
     *
     * [value] is the new value for the statistic. It must be a positive integer or zero. */
    function submit(statName:String, value:Int):Void;
}
