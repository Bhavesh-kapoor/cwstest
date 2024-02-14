$(document).on('submit', '#addstaff', function(ev) {
    $('.error').html('');

    ev.preventDefault(); // Prevent browers default submit.
    var formData = new FormData(this);
    var error = false;
    // Email validation pattern
    var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    // Validate email field
    var emailField = formData.get('email');
    if(emailField !=''){
        if (!emailField || !emailPattern.test(emailField)) {
            swal('Please enter a valid email address.', ' ', 'error');
    
            error = true;
        }
    }
   


    if (error == false) {
        $.ajax({
            url: $(this).attr('action'),
            type: 'post',
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            beforeSend: function() {
                $(".hstackloader").html('<lord-icon src="https://cdn.lordicon.com/dpinvufc.json" trigger="loop" colors="primary:#4bb543,secondary:#4bb543" style="width:50px;"> </lord-icon>');
                $(".hstack").css('display', 'none');
                $(".error").text('');
            },
            success: function(result) {
                if (result.code == 200) {
                    swal(result.message, ' ', 'success');
                    reloadpage();
                } else if (result.code == 401) {
                    $.each(result.message, function(prefix, val) {
                        $('#' + prefix + '_error').text(val[0]);
                    });
                    swal(result.message, ' ', 'error');
                } else {
                    swal(result.message, ' ', 'error');
                }
            },
            error: function(xhr) {
                $(".hstack").css('display', 'flex');
                $(".hstack").show();

            },
            complete: function() {
                $(".hstack").css('display', 'flex');
                $(".hstackloader").text('');
            },
        })
    }
})