@extends("layout.portal")

@section("content")

    <article class="content static-tables-page">
        <div class="title-block">
            <h1 class="title"> Lists of Stores </h1>
            <p class="title-description"> When blocks aren't enough </p>
        </div>


        <section class="section">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-block">
                            <div class="card-title-block">
                                <h3 class="title"> Lists of Stores </h3>
                            </div>
                            <section class="example">
                                <div class="table-flip-scroll">
                                    <table id="tbl_store_lists" class="table table-striped table-bordered table-hover flip-content">
                                        <thead class="flip-header">
                                            <tr>
                                                <th style="width: 7%;">Store ID</th>
                                                <th style="width: 18%;">Name</th>
                                                <th style="width: 18%;">Manager</th>
                                                <th>Location</th>
                                                <th style="width: 8%;">Contact</th>
                                                <th style="width: 10%;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        @if( COUNT($stores) > 0)
                                            @for($i = 0; $i < COUNT($stores); $i++)
                                                <tr>
                                                    <td scope="row"> {{ $stores[$i]->STORE_ID }} </td>
                                                    <td> {{ $stores[$i]->NAME }} </td>
                                                    <td> {{ $stores[$i]->MGR_NAME != null ? $stores[$i]->MGR_NAME : "N/A"  }} </td>
                                                    <td> {{ $stores[$i]->ADDRESS }} </td>
                                                    <td> {{ $stores[$i]->CONTACT_NO }} </td>
                                                    <td>
                                                        <select class="store_lists_action">
                                                            <option value="0:">-- Select --</option>
                                                            <option value="view:{{ $stores[$i]->STORE_ID }}">View/Edit</option>
                                                            <option value="report:{{ $stores[$i]->STORE_ID }}">Sales Report</option>
                                                            <option value="customer:{{ $stores[$i]->STORE_ID }}">Customer Data</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                            @endfor
                                        @else
                                            <tr>
                                                <td colspan="6">No Store Found</td>
                                            </tr>
                                        @endif
                                        </tbody>
                                    </table>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </article>

    <script>
        $(document).ready(function(){
            init_onchange_dropdown();
        });
        function init_onchange_dropdown() {
            $("#tbl_store_lists > tbody  > tr").on('change', '.store_lists_action', function(){
                var selected =  $(this).val();
                var values = selected.split(":");

                console.log(values);

                switch (values[0]) {
                    case "view" :
                        break;
                    case "report" :
                        break;
                    case "customer" :
                            window.location.href=host+"/store/customer/"+values[1];

                        break;
                    default:
                        break;
                }

            });
        }

    </script>

@endsection