@extends('layouts.app')



@section('content')

<div class="container">
  <a href="{{ route('employees.create') }}" class="btn btn-primary float-right mb-2 mt-3">Add employee</a>
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
    @foreach ($employees as $employee)
      <tr>
        <th scope="row">{{ $employee->id }}</th>
        <td><a href="{{ route('employees.show', $employee->id) }}">{{ $employee->name }}</a></td>
        <td>{{ $employee->email }}</td>
        <td>{{ $employee->mobile }}</td>
          <td class='position-text-custom'>
              <div>
                    <a class="mr-2" href="{{ route('employees.show', [$employee->id]) }}">
                      <i class="far fa-eye"></i> </a>
                    <a title="{{ __('main.edit') }}" class="mr-2" href="{{ route('employees.edit', [$employee->id]) }}"><i class="fas fa-edit"></i> </a>
                    <a title="{{ __('main.delete') }}" class="" href="{{ route('employees.destroy', [$employee->id]) }}" data-toggle="modal" data-target="#delete_{{$employee->id}}"><i class="fas fa-trash"></i> </a>
              </div>
          </td>
      </tr>
      <div class="modal fade" id="delete_{{$employee->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Delete Compnay: #{{ $employee->id }} ({{ $employee->name }})</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      </button>
                  </div>
                  <form action="{{ route('employees.destroy', [$employee->id]) }}" method="post">
                      @csrf
                      @method("DELETE")
                      <div class="modal-body">
                          Delete Compnay: #{{ $employee->id }} ({{ $employee->name }})
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
{{ $employees->links() }}

</div>


@endsection
