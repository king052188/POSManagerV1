@extends("layout.portal")

@section("content")

    <article class="content static-tables-page">
        <div class="title-block">
            @if( $stores != null )
                <h3 class="title"> {{ $stores[0]->NAME }} Customers </h3>
            @else
                <h3 class="title"> Lists of Customers </h3>
            @endif
            <p class="title-description"> When blocks aren't enough </p>
        </div>

        <section class="section">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-block">
                            <div class="card-title-block">
                                @if( $stores != null )
                                    <h3 class="title"> {{ $stores[0]->NAME }} Customers </h3>
                                @else
                                    <h3 class="title"> Lists of Customers </h3>
                                @endif
                            </div>
                            <section class="example">
                                <div class="table-flip-scroll">
                                    <table id="tbl_store_lists" class="table table-striped table-bordered table-hover flip-content">
                                        <thead class="flip-header">
                                            <tr>
                                                <th style="width: 3%;">#</th>
                                                @if($populate["type"] == "all")
                                                    <th style="width: 10%;">Store</th>
                                                @endif
                                                <th style="width: 18%;">Name <span style="font-size: 1em; font-weight: 200;"><i>(Last, First, Middle)</i></span></th>
                                                <th>Address</th>
                                                <th style="width: 10%;">Email</th>
                                                <th style="width: 8%;">Contact</th>
                                                <th style="width: 10%;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        @if( COUNT($customers) > 0)
                                            @for($i = 0; $i < COUNT($customers); $i++)
                                                <tr>
                                                    <td scope="row"> {{ $customers[$i]->CUSTOMER_ID }} </td>
                                                    @if($populate["type"] == "all")
                                                        <td>{{ $customers[$i]->STORE_NAME }}</td>
                                                    @endif
                                                    <td> {{ $customers[$i]->LAST_NAME }}, {{ $customers[$i]->FIRST_NAME }}, {{ $customers[$i]->MIDDLE_NAME }} </td>
                                                    <td> {{ $customers[$i]->ADDRESS }} </td>
                                                    <td> {{ $customers[$i]->EMAIL_ADDRESS }} </td>
                                                    <td> {{ $customers[$i]->CONTACT_NO  }} </td>
                                                    <td>
                                                        <select class="store_lists_action">
                                                            <option value="0:">-- Select --</option>
                                                            <option value="view:{{ $customers[$i]->CUSTOMER_ID }}">View/Edit</option>
                                                            <option value="invoice:{{ $customers[$i]->CUSTOMER_ID }}">View Invoice</option>
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

@endsection