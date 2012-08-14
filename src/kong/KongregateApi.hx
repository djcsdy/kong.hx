package kong;

typedef KongregateApi = {
    var services:Services;
    var images:Images;
    #if flash9
    var sharedContent:SharedContent;
    #end
    var stats:Stats;
}
