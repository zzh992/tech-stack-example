$(document).ready(function(){
    var url=window.location.pathname;       
    var context=url.substring(ctx.length+1, url.length);
    if(context!==''){
        $("#sidebar").find("a[href='"+url+"']").parent().addClass("active open");
    }
});