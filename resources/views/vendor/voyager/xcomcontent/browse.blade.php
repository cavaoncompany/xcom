@extends('voyager::master')

@section('page_title', __('voyager::generic.viewing').' '.$dataType->display_name_plural)

@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="{{ $dataType->icon }}"></i> Xcom Contents
        </h1>
        {{-- @can('add', app($dataType->model_name))
            <a href="{{ route('voyager.'.$dataType->slug.'.create') }}" class="btn btn-success btn-add-new">
                <i class="voyager-plus"></i> <span>{{ __('voyager::generic.add_new') }}</span>
            </a>
        @endcan --}}
    
        @foreach(Voyager::actions() as $action)
            @if (method_exists($action, 'massAction'))
                @include('voyager::bread.partials.actions', ['action' => $action, 'data' => null])
            @endif
        @endforeach
        @include('voyager::multilingual.language-selector')
    </div>
@stop

<style>
.text-right{
    position:absolute;
    right:5px;
    bottom:0;
}
</style>

@section('content')
    <div class="page-content browse container-fluid">
        @include('voyager::alerts')
           
  <br>
  <!-- Nav pills -->
  <ul class="nav nav-pills" role="tablist" style="padding:10px; margin-left:60px;">
    <li class="nav-item active">
      <a class="nav-link " data-toggle="pill" href="#home">GENERAL CONTENTS</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="pill" href="#menu1">SERVICE</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="pill" href="#menu2">ABOUT</a>
    </li>
  </ul>
 

                          
  <?php  
        define('info', "XCOM INFORMATION");
        define('service', "SERVICE");
        define('about', "ABOUT");
        $infodata = array();
        $servicedata = array();
        $aboutdata = array();
  ?>                               
     @foreach($dataTypeContent as $data)
        @if ($data->section =="info")
         <?php    array_push($infodata, $data); ?>
        @endif
         @if ($data->section =="service")
         <?php    array_push($servicedata, $data); ?>
        @endif
        @if ($data->section =="about")
         <?php    array_push($aboutdata, $data); ?>
        @endif
     @endforeach 
    
  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
        @foreach($infodata as $data)
    
        <ul class="list-inline col-md-6">
        <li>
        <form>
            <div class="form-group ">
                <div class="card" style="width: 35rem; height:15rem">
                    <div class="card-body">
                        <h5 class="card-title">{{preg_replace('/(?<!\ )[A-Z]/', ' $0', $data->category)}}</h5>
                        <p class="card-text">  
                                {{$data->content}} 
                        </p>
                        <div class="text-right">
                            <a href="http://xcom-layout.herokuapp.com/admin/xcomcontent/{{$data->id}}/edit" class="card-link btn btn-warning" type="button" >Edit</a>
                            {{-- <a href="#" class="card-link btn btn-danger delete" type="button"  data-id={{$data->id}} id="delete-{{$data->id}}">Delete</a> --}}
                        </div>
                    </div>
                </div>
            </div>
        </form>
        </li>
        </ul>
           @endforeach
    </div>
    <div id="menu1" class="container tab-pane fade"><br>
          @foreach($servicedata as $data)

          <ul class="list-inline {{$data->category=='ServiceTitle'? 'col-md-12':'col-md-6'}}">
        <li>
        <form>
            <div class="form-group ">
                <div class="card" style="width: 35rem; height:15rem">
                    <div class="card-body">
                        <h5 class="card-title">{{preg_replace('/(?<!\ )[A-Z]/', ' $0', $data->category)}}</h5>
                        <p class="card-text">  
                                {{$data->content}} 
                        </p>
                        <div class="text-right">
                            <a href="http://xcom-layout.herokuapp.com/admin/xcomcontent/{{$data->id}}/edit" class="card-link btn btn-warning" type="button" >Edit</a>
                            {{-- <a href="#" class="card-link btn btn-danger delete" type="button" data-id={{$data->id}} id="delete-{{$data->id}}">Delete</a> --}}
                        </div>
                    </div>
                </div>
            </div>
        </form>
        </li>
        </ul>
           @endforeach
    </div>
    <div id="menu2" class="container tab-pane fade"><br>
     @foreach($aboutdata as $data)
       <ul class="list-inline col-md-6">
        <li>
        <form>
            <div class="form-group">
                <div class="card" style="width: 35rem; height:20rem">
                    <div class="card-body">
                        <h5 class="card-title">{{preg_replace('/(?<!\ )[A-Z]/', ' $0', $data->category)}}</h5>
                        <p class="card-text">  
                                {{$data->content}} 
                        </p>
                        <div class="text-right">
                            <a href="http://xcom-layout.herokuapp.com/admin/xcomcontent/{{$data->id}}/edit" class="card-link btn btn-warning" type="button" >Edit</a>
                            {{-- <a href="#" class="card-link btn btn-danger delete" type="button" data-id={{$data->id}} id="delete-{{$data->id}}" >Delete</a> --}}
                        </div>
                    </div>
                </div>
            </div>
        </form>
        </li>
        </ul>
           @endforeach
    </div>
  </div>
            
    </div><!-- /.modal -->
     {{-- Single delete modal --}}
    <div class="modal modal-danger fade" tabindex="-1" id="delete_modal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="{{ __('voyager::generic.close') }}"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><i class="voyager-trash"></i> {{ __('voyager::generic.delete_question') }} {{ strtolower($dataType->display_name_singular) }}?</h4>
                </div>
                <div class="modal-footer">
                    <form action="#" id="delete_form" method="POST">
                        {{ method_field('DELETE') }}
                        {{ csrf_field() }}
                        <input type="submit" class="btn btn-danger pull-right delete-confirm" style="margin-top:15px;" value="{{ __('voyager::generic.delete_confirm') }}">
                    </form>
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
@stop


@section('javascript')
    <!-- DataTables -->
    @if(!$dataType->server_side && config('dashboard.data_tables.responsive'))
        <script src="{{ voyager_asset('lib/js/dataTables.responsive.min.js') }}"></script>
    @endif
    <script>
        $(document).ready(function () {
            @if (!$dataType->server_side)
                var table = $('#dataTable').DataTable({!! json_encode(
                    array_merge([
                        "order" => $orderColumn,
                        "language" => __('voyager::datatable'),
                        "columnDefs" => [['targets' => -1, 'searchable' =>  false, 'orderable' => false]],
                    ],
                    config('voyager.dashboard.data_tables', []))
                , true) !!});
            @else
                $('#search-input select').select2({
                    minimumResultsForSearch: Infinity
                });
            @endif

            @if ($isModelTranslatable)
                $('.side-body').multilingual();
                //Reinitialise the multilingual features when they change tab
                $('#dataTable').on('draw.dt', function(){
                    $('.side-body').data('multilingual').init();
                })
            @endif
            $('.select_all').on('click', function(e) {
                $('input[name="row_id"]').prop('checked', $(this).prop('checked'));
            });
        });


        var deleteFormAction;
        $('.delete').on('click', function (e) {
            $('#delete_form')[0].action = '{{ route('voyager.'.$dataType->slug.'.destroy', ['id' => '__id']) }}'.replace('__id', $(this).data('id'));
            $('#delete_modal').modal('show');
        });

        @if($usesSoftDeletes)
            @php
                $params = [
                    's' => $search->value,
                    'filter' => $search->filter,
                    'key' => $search->key,
                    'order_by' => $orderBy,
                    'sort_order' => $sortOrder,
                ];
            @endphp
            $(function() {
                $('#show_soft_deletes').change(function() {
                    if ($(this).prop('checked')) {
                        $('#dataTable').before('<a id="redir" href="{{ (route('voyager.'.$dataType->slug.'.index', array_merge($params, ['showSoftDeleted' => 1]), true)) }}"></a>');
                    }else{
                        $('#dataTable').before('<a id="redir" href="{{ (route('voyager.'.$dataType->slug.'.index', array_merge($params, ['showSoftDeleted' => 0]), true)) }}"></a>');
                    }

                    $('#redir')[0].click();
                })
            })
        @endif
        $('input[name="row_id"]').on('change', function () {
            var ids = [];
            $('input[name="row_id"]').each(function() {
                if ($(this).is(':checked')) {
                    ids.push($(this).val());
                }
            });
            $('.selected_ids').val(ids);
        });
    </script>
@stop
