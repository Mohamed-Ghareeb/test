@extends('layouts.app')



@section('content')
    @if (session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@endif
<div class="container">
  <a href="{{ route('companies.create') }}" class="btn btn-primary float-right mb-2 mt-3">Add Company</a>
  <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Mobile</th>
      <th scope="col">Actions</th>

    </tr>
  </thead>
  <tbody>
    @foreach ($companies as $company)
      <tr>
        <th scope="row">{{ $company->id }}</th>
        <td><a href="{{ route('companies.show', $company->id) }}">{{ $company->name }}</a></td>
        <td>{{ $company->email }}</td>
        <td>{{ $company->mobile }}</td>
          <td class='position-text-custom'>
              <div>
                    <a class="mr-2" href="{{ route('companies.show', [$company->id]) }}">
                      <i class="far fa-eye"></i> </a>
                    <a title="{{ __('main.edit') }}" class="mr-2" href="{{ route('companies.edit', [$company->id]) }}"><i class="fas fa-edit"></i> </a>
                    <a title="{{ __('main.delete') }}" class="" href="{{ route('companies.destroy', [$company->id]) }}" data-toggle="modal" data-target="#delete_{{$company->id}}"><i class="fas fa-trash"></i> </a>
              </div>
          </td>
      </tr>
      <div class="modal fade" id="delete_{{$company->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Delete Compnay: #{{ $company->id }} ({{ $company->name }})</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      </button>
                  </div>
                  <form action="{{ route('companies.destroy', [$company->id]) }}" method="post">
                      @csrf
                      @method("DELETE")
                      <div class="modal-body">
                          Delete Compnay: #{{ $company->id }} ({{ $company->name }})
                      </div>
                      <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                          <button type="submit" class="btn btn-danger">Delete</button>
                      </div>
                  </form>
              </div>
          </div>
      </div>

    @endforeach
  </tbody>
</table>
<div class="float-right mt-4">
  {{ $companies->links() }}
</div>

</div>


@endsection
