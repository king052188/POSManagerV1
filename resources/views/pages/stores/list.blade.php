@extends("layout.portal")

@section("content")

    <article class="content static-tables-page">
        <div class="title-block">
            <h1 class="title"> Lists of Store </h1>
            <p class="title-description"> When blocks aren't enough </p>
        </div>

        <section class="section">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-block">
                            <div class="card-title-block">
                                <h3 class="title"> Lists of Store </h3>
                            </div>
                            <section class="example">
                                <table class="table table-inverse">
                                    <thead>
                                        <tr>
                                            <th style="width: 3%;">#</th>
                                            <th style="width: 7%;">Code</th>
                                            <th style="width: 18%;">Name</th>
                                            <th>Location</th>
                                            <th style="width: 8%;">Contact</th>
                                            <th style="width: 10%;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @for($i = 1; $i <= 10; $i++)
                                            <tr>
                                                <th scope="row">{{ $i }}</th>
                                                <td>CP{{ $i }}</td>
                                                <td>Cheap Part Guy</td>
                                                <td>14th St. Total Gas Station SBMA</td>
                                                <td>250-2622</td>
                                                <td>
                                                    <select>
                                                        <option>-- Select --</option>
                                                        <option>View/Edit</option>
                                                        <option>Sales Report</option>
                                                        <option>Customer Data</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        @endfor
                                    </tbody>
                                </table>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </section>



    </article>

@endsection