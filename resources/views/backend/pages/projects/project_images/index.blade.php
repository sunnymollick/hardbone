@extends('backend.layouts.defaults')
@section('title')
Project Images
@endsection
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h6><i class="lni lni-user" aria-hidden="true"></i> &nbsp; This Project Images
                    <span style="float: right;">
                        <button class="btn btn-primary btn-sm"
                        onclick="create({{ $id }})"><i class="fadeIn animated bx bx-user-plus"></i>
                            Add
                        </button>
                    </span>
                </h6>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12 col-sm-12">
        <div class="main-card mb-3 card">
            <div class="card-body">
                <div class="table-responsive">
                    <table id="manage_all" class="align-middle mb-0 table table-borderless table-striped table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Project Name</th>
                                <th>Image</th>
                                <th>Action </th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($project_images as $key => $image)
                            <tr>
                                <td>{{ $key + 1 }}</td>
                                <td>{{ $image->project->project_title }}</td>
                                <td><img src="{{ asset($image->image_path) }}" alt="Project Image" width="100"></td>
                                <td>
                                    <a data-toggle="tooltip" class="btn btn-success btn-sm view_image" id="{{ $image->id }}"
                                            data-project-id="{{ $image->project_id }}">
                                        <i class="lni lni-eye"></i>
                                        View
                                    </a>
                                    <a data-toggle="tooltip" class="btn btn-danger btn-sm delete"
                                        id="{{ $image->id }}"
                                        data-project-id="{{ $image->project_id }}">
                                        <i class="lni lni-trash"></i>
                                        Delete
                                    </a>
                                </td>
                            </tr>
                            @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('scripts')
<script>
    $(function() {
        //alert("alert");
        table = $('#manage_all').DataTable({
            processing: true,
            serverSide: false,
            "columnDefs": [{
                "className": "",
                "targets": "_all"
            }],
            "autoWidth": false,
        });
        $('.dataTables_filter input[type="search"]').attr('placeholder', 'Type here to search...').css({
            'width': '220px',
            'height': '30px'
        });
    });
</script>
<script type="text/javascript">

    function create(id) {

        $("#modal_data").empty();
        $('.modal-title').text('Add New Images'); // Set Title to Bootstrap modal title

        $.ajax({
            type: 'GET',
            url: '/admin/upload_images_for_project/' + id,
            success: function (data) {
                $("#modal_data").html(data.html);
                $('#myModal').modal('show'); // show bootstrap modal
            },
            error: function (result) {
                $("#modal_data").html("Sorry Cannot Load Data");
            }
    });
    }

    $(document).ready(function() {
        // View Form
        $("#manage_all").on("click", ".view_image", function() {

            var imageId = $(this).attr('id');
            var projectId = $(this).data('project-id');
            // ajax code here for passing to id
            $("#modal_data").empty();
            $('.modal-title').text('View Details');

            $.ajax({
                url: "/admin/get_images_by_project" + '/' + imageId,
                type: 'get',
                dataType: 'json',
                headers: {
                    'X-Requested-With': 'XMLHttpRequest',
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data: {
                    project_id: projectId
                },
                success: function (data) {
                    $("#modal_data").html(data.html);
                    //add modal title
                    $('#myModal').modal('show'); // show bootstrap modal
                },
                error: function (result) {
                    $("#modal_data").html("Sorry Cannot Load Data");
                }
            });

        });

        // Delete
        $("#manage_all").on("click", ".delete", function() {
            var imageId = $(this).attr('id');
            var projectId = $(this).data('project-id');


            swal({
                title: "Are you sure to submit?",
                text: "Submit Form",
                type: "warning",
                showCancelButton: true,
                closeOnConfirm: false,
                showLoaderOnConfirm: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Yes, Submit!"
            }, function () {

                $.ajax({
                    url: '/admin/delete_project_images' + '/' + imageId,
                    type: 'get',
                    data: {
                        project_id: projectId,
                        id: imageId,
                    },
                    dataType: 'json',
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


        });


    });

    function reload_table() {
        location.reload(); //reload the page
    }

</script>
@endsection
