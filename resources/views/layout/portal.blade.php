<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Portal - POSManager v1 </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="stylesheet" href="{{ asset('/css/vendor.css', $IsSecured['ssl']) }}">
    <link rel="stylesheet" href="{{ asset('/css/app.css', $IsSecured['ssl']) }}">

    <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/numeral.js/1.5.6/numeral.min.js"></script>

    <script>
        var host = "{{ url('') }}";
    </script>

</head>

<body>
<div class="main-wrapper">
    <div class="app" id="app">
        <header class="header">
            <div class="header-block header-block-collapse hidden-lg-up">
                <button class="collapse-btn" id="sidebar-collapse-btn"> <i class="fa fa-bars"></i> </button>
            </div>

            {{--<div class="header-block header-block-search hidden-sm-down">--}}
                {{--<form role="search">--}}
                    {{--<div class="input-container"> <i class="fa fa-search"></i> <input type="search" placeholder="Search">--}}
                        {{--<div class="underline"></div>--}}
                    {{--</div>--}}
                {{--</form>--}}
            {{--</div>--}}

            {{--<div class="header-block header-block-buttons">--}}
                {{--<a href="https://github.com/modularcode/modular-admin-html" class="btn btn-sm header-btn">--}}
                    {{--<i class="fa fa-info"></i>--}}
                    {{--<span>News and Updates</span>--}}
                {{--</a>--}}
            {{--</div>--}}

            <div class="header-block header-block-nav">
                <ul class="nav-profile">
                    {{--<li class="notifications new"> <a href="" data-toggle="dropdown">--}}
                            {{--<i class="fa fa-bell-o"></i>--}}
                            {{--<sup>--}}
                                {{--<span class="counter">8</span>--}}
                            {{--</sup>--}}
                        {{--</a>--}}
                        {{--<div class="dropdown-menu notifications-dropdown-menu">--}}
                            {{--<ul class="notifications-container">--}}
                                {{--<li>--}}
                                    {{--<a href="" class="notification-item">--}}
                                        {{--<div class="img-col">--}}
                                            {{--<div class="img" style="background-image: url('assets/faces/3.jpg')"></div>--}}
                                        {{--</div>--}}
                                        {{--<div class="body-col">--}}
                                            {{--<p> <span class="accent">Zack Alien</span> pushed new commit: <span class="accent">Fix page load performance issue</span>. </p>--}}
                                        {{--</div>--}}
                                    {{--</a>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<a href="" class="notification-item">--}}
                                        {{--<div class="img-col">--}}
                                            {{--<div class="img" style="background-image: url('assets/faces/5.jpg')"></div>--}}
                                        {{--</div>--}}
                                        {{--<div class="body-col">--}}
                                            {{--<p> <span class="accent">Amaya Hatsumi</span> started new task: <span class="accent">Dashboard UI design.</span>. </p>--}}
                                        {{--</div>--}}
                                    {{--</a>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<a href="" class="notification-item">--}}
                                        {{--<div class="img-col">--}}
                                            {{--<div class="img" style="background-image: url('assets/faces/8.jpg')"></div>--}}
                                        {{--</div>--}}
                                        {{--<div class="body-col">--}}
                                            {{--<p> <span class="accent">Andy Nouman</span> deployed new version of <span class="accent">NodeJS REST Api V3</span> </p>--}}
                                        {{--</div>--}}
                                    {{--</a>--}}
                                {{--</li>--}}
                            {{--</ul>--}}
                            {{--<footer>--}}
                                {{--<ul>--}}
                                    {{--<li> <a href="">--}}
                                            {{--View All--}}
                                        {{--</a> </li>--}}
                                {{--</ul>--}}
                            {{--</footer>--}}
                        {{--</div>--}}
                    {{--</li>--}}
                    <li class="profile dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            <div class="img" style="background-image: url('https://avatars3.githubusercontent.com/u/3959008?v=3&s=40')"> </div>
                            <span class="name">
    			            King Paulo
    			            </span>
                        </a>
                        <div class="dropdown-menu profile-dropdown-menu" aria-labelledby="dropdownMenu1">
                            <a class="dropdown-item" href="#">
                                <i class="fa fa-user icon"></i>
                                Profile
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fa fa-gear icon"></i>
                                Settings
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">
                                <i class="fa fa-power-off icon"></i>
                                Logout
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </header>

        {{--// side navigations--}}
        <aside class="sidebar">
            <div class="sidebar-container">
                <div class="sidebar-header">
                    <div class="brand">  POSManager v2.1 </div>
                </div>
                <nav class="menu">
                    <ul class="nav metismenu" id="sidebar-menu">
                        <li class="active">
                            <a href="/dashboard">
                                <i class="fa fa-home"></i> Dashboard
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-th-large"></i> Stores
                                <i class="fa arrow"></i>
                            </a>
                            <ul>
                                {{--<a href="#" class="add-image" data-toggle="modal" data-target="#modal-media">--}}
                                <li><a href="#"  data-toggle="modal" data-target="#modal-media">Add Store</a></li>
                                <li><a href="/store/list-view">View Store</a></li>
                                <li><a href="/store/customer/all">Customer Data</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            {{--<footer class="sidebar-footer">--}}
                {{--<ul class="nav metismenu" id="customize-menu">--}}
                    {{--<li>--}}
                        {{--<ul>--}}
                            {{--<li class="customize">--}}
                                {{--<div class="customize-item">--}}
                                    {{--<div class="row customize-header">--}}
                                        {{--<div class="col-xs-4"> SYNC </div>--}}
                                        {{--<div class="col-xs-4"> <label class="title">YES</label> </div>--}}
                                        {{--<div class="col-xs-4"> <label class="title">NO</label> </div>--}}
                                    {{--</div>--}}
                                    {{--<div class="row hidden-md-down">--}}
                                        {{--<div class="col-xs-4"> <label class="title">Items:</label> </div>--}}
                                        {{--<div class="col-xs-4">--}}
                                            {{--<label>--}}
                                                {{--<input class="radio" type="radio" name="sidebarPosition" value="sidebar-fixed" >--}}
                                                {{--<span></span>--}}
                                            {{--</label>--}}
                                        {{--</div>--}}
                                        {{--<div class="col-xs-4">--}}
                                            {{--<label>--}}
                                                {{--<input class="radio" type="radio" name="sidebarPosition" value="">--}}
                                                {{--<span></span>--}}
                                            {{--</label>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="row">--}}
                                        {{--<div class="col-xs-4"> <label class="title">Invoices:</label> </div>--}}
                                        {{--<div class="col-xs-4">--}}
                                            {{--<label>--}}
                                                {{--<input class="radio" type="radio" name="headerPosition" value="header-fixed">--}}
                                                {{--<span></span>--}}
                                            {{--</label>--}}
                                        {{--</div>--}}
                                        {{--<div class="col-xs-4">--}}
                                            {{--<label>--}}
                                                {{--<input class="radio" type="radio" name="headerPosition" value="">--}}
                                                {{--<span></span>--}}
                                            {{--</label>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="row">--}}
                                        {{--<div class="col-xs-4"> <label class="title">Customer:</label> </div>--}}
                                        {{--<div class="col-xs-4">--}}
                                            {{--<label>--}}
                                                {{--<input class="radio" type="radio" name="footerPosition" value="footer-fixed">--}}
                                                {{--<span></span>--}}
                                            {{--</label>--}}
                                        {{--</div>--}}
                                        {{--<div class="col-xs-4">--}}
                                            {{--<label>--}}
                                                {{--<input class="radio" type="radio" name="footerPosition" value="">--}}
                                                {{--<span></span>--}}
                                            {{--</label>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                            {{--</li>--}}
                        {{--</ul>--}}
                        {{--<a href=""> <i class="fa fa-cog"></i> Customize </a>--}}
                    {{--</li>--}}
                {{--</ul>--}}
            {{--</footer>--}}
        </aside>
        {{--// end side navigations--}}

        <div class="sidebar-overlay" id="sidebar-overlay"></div>

        @yield('content')

        <footer class="footer">
            <div class="footer-block buttons"> <iframe class="footer-github-btn" src="https://ghbtns.com/github-btn.html?user=modularcode&repo=modular-admin-html&type=star&count=true" frameborder="0" scrolling="0" width="140px" height="20px"></iframe> </div>
            <div class="footer-block author">
                <ul>
                    <li> developed by <a href="#">CKT</a> </li>
                </ul>
            </div>
        </footer>
        <div class="modal fade" id="modal-media">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header"> <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span>
                        </button>
                        <h4 class="modal-title">Add New Store</h4>
                    </div>
                    <div class="modal-body modal-tab-container">
                        <ul class="nav nav-tabs modal-tabs" role="tablist">
                            <li class="nav-item"> <a class="nav-link active" href="#account" data-toggle="tab" role="tab">Account</a> </li>
                            <li class="nav-item"> <a class="nav-link" href="#information" data-toggle="tab" role="tab">Information</a> </li>
                            <li class="nav-item"> <a class="nav-link" href="#settings" data-toggle="tab" role="tab">Settings</a> </li>
                        </ul>
                        <div class="tab-content modal-tab-content">
                            <div class="tab-pane fade active in" id="account" role="tabpanel">
                                <div class="card card-block sameheight-item">
                                    <div class="title-block">
                                        <h3 class="title"> Create new account </h3>
                                    </div>
                                    <form role="form">
                                        <fieldset class="form-group">
                                            <label class="control-label" for="formGroupExampleInput">Username</label>
                                            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Placeholder text">
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label class="control-label" for="formGroupExampleInput2">Password</label>
                                            <input type="password" class="form-control" id="formGroupExampleInput2" placeholder="Placeholder text">
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label class="control-label" for="formGroupExampleInput3">Confirm Password</label>
                                            <input type="text" class="form-control" id="formGroupExampleInput3" placeholder="Placeholder text">
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label class="control-label">Role</label>
                                            <div>
                                                <label>
                                                    <input class="radio" name="inline-radios" type="radio">
                                                    <span>Admin</span>
                                                </label>
                                                <label>
                                                    <input class="radio" name="inline-radios" checked="checked" type="radio">
                                                    <span>Manager</span>
                                                </label>
                                                <label>
                                                    <input class="radio" name="inline-radios" type="radio">
                                                    <span>Cashier</span>
                                                </label>
                                                <label>
                                                    <input class="radio" name="inline-radios" type="radio">
                                                    <span>Sales</span>
                                                </label>
                                            </div>
                                        </fieldset>

                                        <fieldset class="form-group">
                                            <label class="control-label">Status</label>
                                            <div>
                                                <label>
                                                    <input class="radio squared" name="squared-radios" type="radio">
                                                    <span>Activate</span>
                                                </label>
                                                <label>
                                                    <input class="radio squared" name="squared-radios" checked="checked" type="radio">
                                                    <span>Inactivate</span>
                                                </label>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="information" role="tabpanel">
                                <div class="card card-block sameheight-item">
                                    <div class="title-block">
                                        <h3 class="title"> Add Store Information </h3>
                                    </div>
                                    <form role="form">
                                        <fieldset class="form-group">
                                            <label class="control-label" for="formGroupExampleInput">Store/Company Name</label>
                                            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Placeholder text">
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label class="control-label" for="formGroupExampleInput">Owner Name</label>
                                            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Placeholder text">
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label class="control-label" for="formGroupExampleInput2">Address 1</label>
                                            <input type="password" class="form-control" id="formGroupExampleInput2" placeholder="Placeholder text">
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label class="control-label" for="formGroupExampleInput2">Address 2</label>
                                            <input type="password" class="form-control" id="formGroupExampleInput2" placeholder="Placeholder text">
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label class="control-label" for="formGroupExampleInput2">City</label>
                                            <input type="password" class="form-control" id="formGroupExampleInput2" placeholder="Placeholder text">
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label class="control-label" for="formGroupExampleInput3">Province</label>
                                            <input type="text" class="form-control" id="formGroupExampleInput3" placeholder="Placeholder text">
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label class="control-label" for="formGroupExampleInput3">Zip Code</label>
                                            <input type="text" class="form-control" id="formGroupExampleInput3" placeholder="Placeholder text">
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label class="control-label" for="formGroupExampleInput3">Email</label>
                                            <input type="text" class="form-control" id="formGroupExampleInput3" placeholder="Placeholder text">
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label class="control-label" for="formGroupExampleInput3">Mobile</label>
                                            <input type="text" class="form-control" id="formGroupExampleInput3" placeholder="Placeholder text">
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="settings" role="tabpanel">
                                <div class="card card-block sameheight-item">
                                    <div class="title-block">
                                        <h3 class="title"> Account Settings </h3>
                                        <p>Set the store minimum and maximum amount allowed.<br /><i style="font-size: .8em;">(Leave it blank for no limit)</i></p>
                                    </div>
                                    <form role="form">
                                        <fieldset class="form-group">
                                            <label class="control-label">Minimum Amount</label>
                                            <div class="input-group">
                                                <span class="input-group-addon">₱</span>
                                                <input type="text" class="form-control" placeholder="Enter minimum amount">
                                                <span class="input-group-addon">.00</span>
                                            </div>
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label class="control-label">Maximum Amount</label>
                                            <div class="input-group">
                                                <span class="input-group-addon">₱</span>
                                                <input type="text" class="form-control" placeholder="Enter maximum amount">
                                                <span class="input-group-addon">.00</span>
                                            </div>
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label class="control-label">Type</label>
                                            <div>
                                                <label>
                                                    <input class="radio" name="inline-radios" type="radio">
                                                    <span>Outlet/Annex</span>
                                                </label>
                                                <label>
                                                    <input class="radio" name="inline-radios" checked="checked" type="radio">
                                                    <span>Franchise</span>
                                                </label>
                                                <label>
                                                    <input class="radio" name="inline-radios" type="radio">
                                                    <span>Consignment</span>
                                                </label>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer"> <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> <button type="button" class="btn btn-primary">Save</button> </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        <div class="modal fade" id="confirm-modal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header"> <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title"><i class="fa fa-warning"></i> Alert</h4>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure want to do this?</p>
                    </div>
                    <div class="modal-footer"> <button type="button" class="btn btn-primary" data-dismiss="modal">Yes</button> <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button> </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
    </div>
</div>
<!-- Reference block for JS -->
<div class="ref" id="ref">
    <div class="color-primary"></div>
    <div class="chart">
        <div class="color-primary"></div>
        <div class="color-secondary"></div>
    </div>
</div>
<script src="{{ asset('/js/vendor.js', $IsSecured['ssl']) }}"></script>
<script src="{{ asset('/js/app.js', $IsSecured['ssl']) }}"></script>
</body>

</html>