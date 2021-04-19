<br>

<div class="form-group row">
<label class="col-form-label text-right col-lg-2 col-sm-12">
Name <span
            style="color: red"> * </span> </label>
    <div class="col-lg-10 col-md-9 col-sm-12">
        <input name="name" type="text" class="form-control {{$errors->has('name') ? 'is-invalid':''}}"
               value="{{ ($action == 'edit') ? $company->name : old('name') }}" placeholder="Name">
        <div class="row">
            <div class="col-md-12">
                @if($errors->has('name'))
                    <div class="alert alert-danger w-100 m-0" role="alert">
                        {{$errors->first('name')}}
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>

<div class="form-group row">
<label class="col-form-label text-right col-lg-2 col-sm-12">
Email <span
            style="color: red"> * </span> </label>
    <div class="col-lg-10 col-md-9 col-sm-12">
        <input name="email" type="text" class="form-control {{$errors->has('email') ? 'is-invalid':''}}"
               value="{{ ($action == 'edit') ? $company->email : old('email') }}" placeholder="Email">
        <div class="row">
            <div class="col-md-12">
                @if($errors->has('email'))
                    <div class="alert alert-danger w-100 m-0" role="alert">
                        {{$errors->first('email')}}
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>

<div class="form-group row">
<label class="col-form-label text-right col-lg-2 col-sm-12">
Mobile <span
            style="color: red"> * </span> </label>
    <div class="col-lg-10 col-md-9 col-sm-12">
        <input name="mobile" type="number" class="form-control {{$errors->has('mobile') ? 'is-invalid':''}}"
               value="{{ ($action == 'edit') ? $company->mobile : old('mobile') }}" placeholder="Mobile">
        <div class="row">
            <div class="col-md-12">
                @if($errors->has('mobile'))
                    <div class="alert alert-danger w-100 m-0" role="alert">
                        {{$errors->first('mobile')}}
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>





<div class="form-group row">
<label class="col-form-label text-right col-lg-2 col-sm-12">
Icon</label>

    <div class="col-lg-10 col-md-9 col-sm-12">

        <input type="file" class="form-control {{$errors->has('icon') ? 'is-invalid':''}}" id="customFile" name="icon">
        <div class="row">
            <div class="col-md-12">
                @if($errors->has('icon'))
                    <div class="alert alert-danger w-100 m-0" role="alert">
                        {{$errors->first('icon')}}
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>