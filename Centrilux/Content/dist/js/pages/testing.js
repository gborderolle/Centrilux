function test_Ajax1() {
    var name = "Javascript_m1";

    // Ajax call parameters
    console.log("Ajax call: /Testing1.aspx/test_Ajax. Params:");

    // Check user is Admin
    $.ajax({
        type: "POST",
        url: "/Testing1.aspx/test_Ajax",
        contentType: "application/json;charset=utf-8",
        data: '{name: "' + name + '"}',
        dataType: "json",
        success: function (response) {
            console.log("ok");
            alert(response.d);
        }, // end success
        failure: function (response) {
            console.log("failure");
        },
        error: function (xhr, ajaxOptions, thrownError) {
            console.log("error");
            alert(xhr.status + " / " + thrownError);
        }
    }); // Ajax
}

function test_Ajax2() {
    var name = "Javascript_m2";

    // Ajax call parameters
    console.log("Ajax call: /Pages/Testing2.aspx/test_Ajax. Params:");

    // Check user is Admin
    $.ajax({
        type: "POST",
        url: "/Pages/Testing2.aspx/test_Ajax",
        contentType: "application/json;charset=utf-8",
        data: '{name: "' + name + '"}',
        dataType: "json",
        success: function (response) {
            console.log("ok");
            alert(response.d);
        }, // end success
        failure: function (response) {
            console.log("failure");
        },
        error: function (xhr, ajaxOptions, thrownError) {
            console.log("error");
            alert(xhr.status + " / " + thrownError);
        }
    }); // Ajax
}