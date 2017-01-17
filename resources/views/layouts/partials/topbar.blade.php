<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="fa fa-cog"></span>
        </button>
        <button id="sidebar-toggle" type="button" class="navbar-toggle"  data-target="#sidebar">
            <span class="sr-only">Toggle navigation</span>
            <span class="fa fa-bars"></span>
        </button>
        <a class="navbar-brand" href="<?php echo_uri('dashboard'); ?>"><img src="<?php echo get_file_uri(get_setting("system_file_path") . get_setting("site_logo")); ?>" /></a>


    </div>
    <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-left">

            <li class="hidden-xs pl15 pr15  b-l">
                <button class="hidden-xs" id="sidebar-toggle-md">
                    <span class="fa fa-dedent"></span>
                </button>
            </li>
            <?php echo my_open_timers(); ?>

        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="hidden-xs">
                <?php echo js_anchor("<i class='fa fa-bell-o'></i>", array("id" => "web-notification-icon", "class" => "dropdown-toggle", "data-toggle" => "dropdown")); ?>
                <div class="dropdown-menu aside-xl m0 p0 font-100p" style="width: 400px;" >
                    <div class="dropdown-details panel bg-white m0">
                        <div class="list-group">
                            <span class="list-group-item inline-loader p10"></span>
                        </div>
                    </div>
                    <div class="panel-footer text-sm text-center">
                        <?php echo anchor("notifications", lang('see_all')); ?>
                    </div>
                </div>
            </li>

            <?php if (get_setting("module_message")) { ?>
            <li class="hidden-xs <?php echo ($this->login_user->user_type === "client" && !get_setting("client_message_users")) ? "hide" : ""; ?>">
                <?php echo js_anchor("<i class='fa fa-envelope-o'></i>", array("id" => "message-notification-icon", "class" => "dropdown-toggle", "data-toggle" => "dropdown")); ?>
                <div class="dropdown-menu aside-xl m0 p0 w300 font-100p">
                    <div class="dropdown-details panel bg-white m0">
                        <div class="list-group">
                            <span class="list-group-item inline-loader p10"></span>
                        </div>
                    </div>
                    <div class="panel-footer text-sm text-center">
                        <?php echo anchor("messages", lang('see_all')); ?>
                    </div>
                </div>
            </li>
            <?php } ?>

            <li class="dropdown pr15 dropdown-user">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                    <span class="avatar-xs avatar pull-left mt-5 mr10" >
                        <img alt="..." src="<?php echo get_avatar($this->login_user->image); ?>">
                    </span><?php echo $this->login_user->first_name . " " . $this->login_user->last_name; ?> <span class="caret"></span></a>
                <ul class="dropdown-menu p0" role="menu">
                    <li class="divider"></li>
                    <li><a href="/signin/sign_out"><i class="fa fa-power-off mr10"></i> Sign Out</a></li>
                </ul>
            </li>
        </ul>
    </div><!--/.nav-collapse -->
</nav>

<script type="text/javascript">
    $(document).ready(function () {
        //load message notifications

        var messageOptions = {},
            notificationOptions = {},
            $messageIcon = $("#message-notification-icon"),
            $notificationIcon = $("#web-notification-icon");

        //check message notifications
        messageOptions.notificationUrl = "/messages/get_notifications'); ?>";
        messageOptions.notificationStatusUpdateUrl = "/messages/update_notification_checking_status";
        messageOptions.checkNotificationAfterEvery = "/check_notification_after_every";
        messageOptions.icon = "fa-envelope-o";
        messageOptions.notificationSelector = $messageIcon;
        checkNotifications(messageOptions);

        $messageIcon.click(function () {
            checkNotifications(messageOptions, true);
        });


        //check web notifications
        notificationOptions.notificationUrl = "/notifications/count_notifications";
        notificationOptions.notificationStatusUpdateUrl = "/notifications/update_notification_checking_status";
        notificationOptions.checkNotificationAfterEvery = "/check_notification_after_every";
        notificationOptions.icon = "fa-bell-o";
        notificationOptions.notificationSelector = $notificationIcon;


        checkNotifications(notificationOptions); //start checking notification after starting the message checking


        $notificationIcon.click(function () {
            notificationOptions.notificationUrl = "/notifications/get_notifications";
            checkNotifications(notificationOptions, true);
        });
    });
</script>
