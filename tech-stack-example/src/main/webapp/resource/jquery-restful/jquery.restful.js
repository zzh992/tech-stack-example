(function($){
    function restfulService(url,options){
        this.url = url;
        this.options = options;
    }
    restfulService.prototype.get = function(id){
        var defer = $.Deferred();
        var ajaxOptions = $.extend({
            type : 'GET',
            url : this.url+'/'+id,
            success : function(data) {
                defer.resolve(data);
            }
        },this.options);
        $.ajax(ajaxOptions);
        return defer.promise();
    };
    restfulService.prototype.post = function(model){
        var defer = $.Deferred();
        var ajaxOptions = $.extend({
            type : 'POST',
            url : this.url,
            contentType : "application/json",
            data : JSON.stringify(model),
            success : function(data) {
                defer.resolve(data);
            }
        },this.options);
        $.ajax(ajaxOptions);
        return defer.promise();
    };
    restfulService.prototype.put = function(model){
        var defer = $.Deferred();
        var ajaxOptions = $.extend({
            type : 'PUT',
            url : this.url,
            contentType : "application/json",
            data : JSON.stringify(model),
            success : function(data) {
                defer.resolve(data);
            }
        },this.options);
        $.ajax(ajaxOptions);
        return defer.promise();
    };
    restfulService.prototype.del = function(id){
        var defer = $.Deferred();
        var ajaxOptions = $.extend({
            type : 'DELETE',
            url : this.url+'/'+id,
            success : function(data) {
                defer.resolve(data);
            }
        },this.options);
        $.ajax(ajaxOptions);
        return defer.promise();
    };

    restfulService.prototype.getAll = function(){
        var defer = $.Deferred();
        var ajaxOptions = $.extend({
            type : 'GET',
            url : this.url,
            success : function(data) {
                defer.resolve(data);
            }
        },this.options);
        $.ajax(ajaxOptions);
        return defer.promise();
    };

    restfulService.prototype.getBy = function(searchFilters){
        var defer = $.Deferred();
        var ajaxOptions = $.extend({
            type : 'GET',
            url : this.url+'?searchFilters='+JSON.stringify(searchFilters),
            success : function(data) {
                defer.resolve(data);
            }
        },this.options);
        $.ajax(ajaxOptions);
        return defer.promise();
    };


    $.restful = function(url,options){
        var service = new restfulService(url,options);
        return service;
    };
})(jQuery);