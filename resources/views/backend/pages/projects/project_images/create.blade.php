<form id='create' action="" enctype="multipart/form-data" method="post" accept-charset="utf-8" class="needs-validation" novalidate>
    <div id="status"></div>
    <div class="col">
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <input type="hidden" class="form-control" id="project_id" name="project_id" value="{{ $id }}" placeholder="" required>
                    <span id="error_title" class="has-error"></span>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <label for="">Upload Multiple Images</label>
                <input type="file" class="form-control" id="multiple_images" name="multiple_images[]" multiple width="370" height="260">
                <p style="color: red; font-size: 12px">Photo format must be JPG, PNG, or GIF and Size must be 770 X 520 pixel (width X height)</p>
                <span id="error_title" class="has-error"></span>
            </div>
        </div>


        <div class="d-grid gap-2 col-sm-2">
            <button class="btn btn-primary button-submit" type="submit" data-loading-text="Loading...">
                <i class="fadeIn animated bx bx-save"></i>Upload</button>
        </div>

    </div>
</form>

<script>
    $('.button-submit').click(function() {
        $('#create').validate({

        submitHandler: function (form) {

            var myData = new FormData($("#create")[0]);
            myData.append('_token', CSRF_TOKEN);

            swal({
                title: "Are you sure to upload?",
                text: "Submit Form",
                type: "warning",
                showCancelButton: true,
                closeOnConfirm: false,
                showLoaderOnConfirm: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Yes, Upload!"
            }, function () {
                // console.log('hi');
                $.ajax({
                    url: '/admin/store_project_images',
                    type: 'POST',
                    data: myData,
                    dataType: 'json',
                    cache: false,
                    processData: false,
                    contentType: false,
                    success: function (data) {
                        if (data.type === 'success') {
                            $('#myModal').modal('hide');
                            swal("Done!", "It was succesfully done!", "success");
                            reload_table();
                        } else if (data.type === 'error') {
                            if (data.errors) {
                                $.each(data.errors, function (key, val) {
                                    $('#error_' + key).html(val);
                                });
                            }
                            $("#status").html(data.message);
                            swal("Error sending!", "Please fix the errors", "error");
                        }
                    }
                });
            });
        }
    });
    });
</script>

