
function getAjaxDataHistory()
{
    $.ajax({
        type: "POST",
        url: "site/data-history",
        dataType: "html",
        success: function(msg){
            $('.bodyParser').html(msg);
        }
    });
}

setInterval("getAjaxDataHistory()", 4000);