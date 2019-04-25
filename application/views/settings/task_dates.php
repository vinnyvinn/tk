<div id="page-content" class="p20 row">
    <div class="col-sm-3 col-lg-2">
        <?php
        $tab_view['active_tab'] = "modules";
        $this->load->view("settings/tabs", $tab_view);
        ?>
    </div>

    <div class="col-sm-9 col-lg-10">
        <?php echo form_open(get_uri("settings/save_task_dates_settings"), array("id" => "module-settings-form", "class" => "general-form dashed-row", "role" => "form")); ?>
        <div class="panel">
            <div class="panel-default panel-heading">
                <h4>Manage Task Dates</h4>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label for="start_date" class="col-md-2"><?php echo lang('start_date'); ?></label>
                    <div class="col-md-10">
                        <?php
                        echo form_checkbox("start_date", "1", get_setting("start_date") ? true : false, "id='start_date' class='ml15'");
                        ?>                       
                    </div>
                    <span>Mark checked to have start date set to current date by default</span>
                </div>
                <div class="form-group">
                    <label for="deadline_date" class=" col-md-2"><?php echo lang('deadline'); ?></label>
                    <div class="col-md-10">
                    <?php
                        // $data = [];
                        for ($i=0; $i < 32; $i++) { $data[$i] = $i . " days"; }
                        echo form_dropdown(
                                "deadline_date", $data, get_setting('deadline_date'), "class='select2 mini'"
                        );
                    ?>
                    </div>
                </div>

            </div>
            <div class="panel-footer">
                <button type="submit" class="btn btn-primary"><span class="fa fa-check-circle"></span> <?php echo lang('save'); ?></button>
            </div>
        </div>
        <?php echo form_close(); ?>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#module-settings-form .select2").select2();
        $("#module-settings-form").appForm({
            isModal: false,
            onSuccess: function (result) {
                appAlert.success(result.message, {duration: 10000});
                location.reload();
            }
        });
    });
</script>