<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" >
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="SmoDav">
    <link rel="icon" href="{{ asset('images/favicon.png') }}" />
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Team Kazi</title>
    <script>
        window.Laravel = <?php echo json_encode([
            'csrfToken' => csrf_token(),
        ]); ?>
    </script>
    <script type="text/javascript">
        AppHelper = {};
        AppHelper.baseUrl = "{{ url('/') }}";
        AppHelper.assetsDirectory = "{{ url('/') }}";
        AppHelper.settings = {};
        {{--AppHelper.settings.firstDayOfWeek =<?php echo get_setting("first_day_of_week") * 1; ?> || 0;--}}
        {{--AppHelper.settings.currencySymbol = "<?php echo get_setting("currency_symbol"); ?>";--}}
        {{--AppHelper.settings.decimalSeparator = "<?php echo get_setting("decimal_separator"); ?>";--}}
        {{--AppHelper.settings.displayLength = "<?php echo get_setting("rows_per_page"); ?>";--}}
        {{--AppHelper.settings.timeFormat = "<?php echo get_setting("time_format"); ?>";--}}
        {{--AppHelper.settings.scrollbar = "<?php echo get_setting("scrollbar"); ?>";--}}
    </script>
    <?php
        $styles = [
            "bootstrap/css/bootstrap.min.css",
            "js/font-awesome/css/font-awesome.min.css",
            "js/datatable/css/jquery.dataTables.min.css",
            "js/datatable/TableTools/css/dataTables.tableTools.min.css",
            "js/select2/select2.css",
            "js/select2/select2-bootstrap.min.css",
            "js/bootstrap-datepicker/css/datepicker3.css",
            "js/bootstrap-timepicker/css/bootstrap-timepicker.min.css",
            "js/x-editable/css/bootstrap-editable.css",
            "js/dropzone/dropzone.min.css",
            "js/magnific-popup/magnific-popup.css",
            "js/malihu-custom-scrollbar/jquery.mCustomScrollbar.min.css",
            "css/font.css",
            "css/style.css",
            "css/custom-style.css"
        ];

        $scripts = [
            "js/jquery-1.11.3.min.js",
            "bootstrap/js/bootstrap.min.js",
            "js/jquery-validation/jquery.validate.min.js",
            "js/jquery-validation/jquery.form.js",
            "js/malihu-custom-scrollbar/jquery.mCustomScrollbar.concat.min.js",
            "js/datatable/js/jquery.dataTables.min.js",
            "js/select2/select2.js",
            "js/datatable/TableTools/js/dataTables.tableTools.min.js",
            "js/bootstrap-datepicker/js/bootstrap-datepicker.js",
            "js/bootstrap-timepicker/js/bootstrap-timepicker.min.js",
            "js/x-editable/js/bootstrap-editable.min.js",
            "js/fullcalendar/moment.min.js",
            "js/dropzone/dropzone.min.js",
            "js/magnific-popup/jquery.magnific-popup.min.js",
            "js/notificatoin_handler.js",
            "js/general_helper.js",
            "js/app.min.js"
        ];
    ?>
    @foreach($styles as $style)
        <link rel="stylesheet" href="{{ asset($style) }}">
    @endforeach
</head>
<body>
<?php $this->load->view('includes/topbar'); ?>
<div id="content" class="box">
    <?php $this->load->view('includes/left_menu'); ?>
    <div id="page-container" class="box-content">
        <div id="pre-loader">
            <div id="pre-loade" class="app-loader"><div class="loading"></div></div>
        </div>
        <div class="scrollable-page">
            <?php
            if (isset($content_view) && $content_view != "") {
                $this->load->view($content_view);
            }
            ?>
        </div>
    </div>
</div>
<?php $this->load->view('modal/index'); ?>
<div style='display: none;'>
    <script type='text/javascript'>
        <?php
        $error_message = $this->session->flashdata("error_message");
        $success_message = $this->session->flashdata("success_message");
        if (isset($error)) {
            echo 'appAlert.error("' . $error . '");';
        }
        if (isset($error_message)) {
            echo 'appAlert.error("' . $error_message . '");';
        }
        if (isset($success_message)) {
            echo 'appAlert.success("' . $success_message . '");';
        }
        ?>
    </script>
</div>
@foreach($scripts as $script)
    <script src="{{ asset($script) }}"></script>
@endforeach
</body>
</html>
















<!DOCTYPE html>
<html lang="en">
<head>

</head>
<body>
    <div id="app">
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">

                    <!-- Collapsed Hamburger -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Branding Image -->
                    <a class="navbar-brand" href="{{ url('/') }}">
                        {{ config('app.name', 'Laravel') }}
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    <ul class="nav navbar-nav">
                        &nbsp;
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Authentication Links -->
                        @if (Auth::guest())
                            <li><a href="{{ url('/login') }}">Login</a></li>
                            <li><a href="{{ url('/register') }}">Register</a></li>
                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu" role="menu">
                                    <li>
                                        <a href="{{ url('/logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endif
                    </ul>
                </div>
            </div>
        </nav>

        @yield('content')
    </div>

    <!-- Scripts -->
    <script src="/js/app.js"></script>
</body>
</html>
