<form id='create' action="" enctype="multipart/form-data" method="post" accept-charset="utf-8" class="needs-validation"
      novalidate>
    <div id="status"></div>
    <div class="form-row">

        <div class="form-group col-md-12">
            <label for="">Client Name <span style="color: red;">*</span></label>
            <input type="text" class="form-control" id="name" name="name" value="{{ $client->name?:'N/A' }}" placeholder="" readonly>
                   placeholder="" readonly>
            <span id="error_title" class="has-error"></span>
        </div>
        <div class="clearfix"></div>

        <div class="form-group col-md-12 col-sm-12">
            <label for="">Oraganization Name <span style="color: red;">*</span></label>
            <input type="text" class="form-control" id="organization_name" name="organization_name" value="{{ $client->organization_name?:'N/A' }}"
                   placeholder="" readonly>
            <span id="error_title" class="has-error"></span>
        </div>
        <div class="clearfix"></div>

        <div class="form-group col-md-12 col-sm-12">
            <label for="">Email <span style="color: red;">*</span></label>
            <input type="email" class="form-control" id="email" name="email" value="{{ $client->email?:'N/A' }}" placeholder="" readonly>
            <span id="error_title" class="has-error"></span>
        </div>
        <div class="clearfix"></div>

        <div class="form-group col-md-12 col-sm-12">
            <label for="">Phone <span style="color: red;">*</span></label>
            <input type="phone" class="form-control" id="phone" name="phone" value="{{ $client->phone?:'N/A' }}"
                   placeholder="" readonly>
            <span id="error_title" class="has-error"></span>
        </div>
        <div class="clearfix"></div>

        <div class="form-group col-md-12 col-sm-12">
            <label for="">Address <span style="color: red;">*</span></label>
            <input type="text" class="form-control" id="address" name="address" value="{{ $client->address?:'N/A' }}" placeholder="" readonly>
            <span id="error_title" class="has-error"></span>
        </div>
        <div class="clearfix"></div>
        <div class="form-group col-md-12 col-sm-12">
            <label for="">TRN <span style="color: red;">*</span></label>
            <input type="text" class="form-control" id="trn" name="trn" value="{{ $client->trn?:'N/A' }}" placeholder="" readonly>
            <span id="error_title" class="has-error"></span>
        </div>
        <div class="clearfix"></div>

    </div>
</form>

