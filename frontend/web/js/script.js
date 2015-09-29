
function getAjaxDataHistory()
{
    $.ajax({
        type: "POST",
        url: "site/data-history",
        dataType: "json",
        success: function(msg){
            $('.bodyParser').html(msg);
        }
    });
}

setInterval("getAjaxDataHistory()", 4000);