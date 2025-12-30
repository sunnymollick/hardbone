<form id='edit' action="" enctype="multipart/form-data" method="post" accept-charset="utf-8"
    class="needs-validation" novalidate>
    <div id="status"></div>
    <div class="col">
        <div class="row">
            <div class="col-sm">
                <div class="form-group">
                    <label for="">Project Name </label>
                    <input type="text" class="form-control" id="project_title" name="project_title"
                        value="{{ $project_title }}" placeholder="" readonly>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <img src="{{ asset($project_image->image_path) }}" alt="">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <br>

    </div>
</form>

<script>
    $('#table_field').on('click', '#remove', function() {
        $(this).closest('tr').remove();

    });
</script>
