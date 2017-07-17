@extends("layout.portal")

@section("content")

    <article class="content dashboard-page">
        <section class="section">
            <div class="row sameheight-container">

                <div class="col-xl-12">
                    <div class="card sameheight-item items" data-exclude="xs,sm,lg">
                        <div class="card-header bordered">
                            <div class="header-block">
                                <h3 class="title"> Stores Sales Summary </h3>
                            </div>
                            <div class="header-block pull-right">
                                <label class="search">
                                    <input class="search-input" placeholder="search...">
                                    <i class="fa fa-search search-icon"></i>
                                </label>
                                <div class="pagination">
                                    <a href="" class="btn btn-primary btn-sm rounded">
                                        <i class="fa fa-angle-up"></i>
                                    </a>
                                    <a href="" class="btn btn-primary btn-sm rounded">
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <ul class="item-list striped">
                            <li class="item item-list-header hidden-sm-down">
                                <div class="item-row">
                                    <div class="item-col item-col-header fixed item-col-img xs"></div>
                                    <div class="item-col item-col-header item-col-title">
                                        <div>
                                            <span>Store</span>
                                        </div>
                                    </div>
                                    <div class="item-col item-col-header item-col-date">
                                        <div>
                                            <span>Over All Items Amount</span>
                                        </div>
                                    </div>
                                    <div class="item-col item-col-header item-col-date">
                                        <div>
                                            <span>Over All Items Amount Sales</span>
                                        </div>
                                    </div>
                                    <div class="item-col item-col-header item-col-date">
                                        <div>
                                            <span>Over All Items Amount Remaining</span>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="item">
                                <div class="item-row">
                                    <div class="item-col fixed item-col-img xs">
                                        <a href="">
                                            <div class="item-img xs rounded" style="background-image: url(http://icons.iconarchive.com/icons/paomedia/small-n-flat/32/shop-icon.png)"></div>
                                        </a>
                                    </div>
                                    <div class="item-col item-col-title no-overflow">
                                        <div>
                                            <a href="" class="">
                                                <h4 class="item-title no-wrap"> CPG - CDG Pacific Consolidation & Trading </h4>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item-col item-col-date">
                                        <div class="item-heading">Value</div>
                                        <div> ₱ 150,487,000.00 </div>
                                    </div>
                                    <div class="item-col item-col-date">
                                        <div class="item-heading">Sales</div>
                                        <div> ₱ 140,109,058 </div>
                                    </div>
                                    <div class="item-col item-col-date">
                                        <div class="item-heading">Remaining</div>
                                        <div> ₱ 10,377,942.00 </div>
                                    </div>
                                </div>
                            </li>

                            <li class="item">
                                <div class="item-row">
                                    <div class="item-col fixed item-col-img xs">
                                        <a href="">
                                            <div class="item-img xs rounded" style="background-image: url(http://icons.iconarchive.com/icons/paomedia/small-n-flat/32/shop-icon.png)"></div>
                                        </a>
                                    </div>
                                    <div class="item-col item-col-title no-overflow">
                                        <div>
                                            <a href="" class="">
                                                <h4 class="item-title no-wrap"> CP1 - Cheap Parts Guy </h4>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item-col item-col-date">
                                        <div class="item-heading">Value</div>
                                        <div> ₱ 890,050.00 </div>
                                    </div>
                                    <div class="item-col item-col-date">
                                        <div class="item-heading">Sales</div>
                                        <div> ₱ 249,058 </div>
                                    </div>
                                    <div class="item-col item-col-date">
                                        <div class="item-heading">Remaining</div>
                                        <div> ₱ 640,992.00 </div>
                                    </div>
                                </div>
                            </li>

                            <li class="item">
                                <div class="item-row">
                                    <div class="item-col fixed item-col-img xs">
                                        <a href="">
                                            <div class="item-img xs rounded" style="background-image: url(http://icons.iconarchive.com/icons/paomedia/small-n-flat/32/shop-icon.png)"></div>
                                        </a>
                                    </div>
                                    <div class="item-col item-col-title no-overflow">
                                        <div>
                                            <a href="" class="">
                                                <h4 class="item-title no-wrap"> CPS - Cheap Parts Guy </h4>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item-col item-col-date">
                                        <div class="item-heading">Value</div>
                                        <div> ₱ 250,000 </div>
                                    </div>
                                    <div class="item-col item-col-date">
                                        <div class="item-heading">Sales</div>
                                        <div> ₱ 74,058 </div>
                                    </div>
                                    <div class="item-col item-col-date">
                                        <div class="item-heading">Remaining</div>
                                        <div> ₱ 175,942.00 </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </section>
        <section class="section">
            <div class="row sameheight-container">

                <div class="col-xl-8">
                    <div class="card sameheight-item" data-exclude="xs">
                        <div class="card-header card-header-sm bordered">
                            <div class="header-block">
                                <h3 class="title">History</h3>
                            </div>
                            <ul class="nav nav-tabs pull-right" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" href="#daily" role="tab" data-toggle="tab">Daily</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#yearly" role="tab" data-toggle="tab">Yearly</a>
                                </li>
                            </ul>
                        </div>
                        <div class="card-block">
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active fade in" id="daily">
                                    <p class="title-description"> Sales Reports for Daily </p>
                                    <div id="dashboard-daily-chart"></div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="yearly">
                                    <p class="title-description"> Sales Reports for Yearly </p>
                                    <div id="dashboard-yearly-chart"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4">
                    <div class="card sameheight-item sales-breakdown" data-exclude="xs,sm,lg">
                        <div class="card-header">
                            <div class="header-block">
                                <h3 class="title"> Sales breakdown </h3>
                            </div>
                        </div>
                        <div class="card-block">
                            <div class="dashboard-sales-breakdown-chart" id="dashboard-sales-breakdown-chart"></div>
                        </div>
                    </div>
                </div>

            </div>
        </section>
    </article>

@endsection