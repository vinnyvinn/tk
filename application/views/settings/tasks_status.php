<div id="page-content" class="p20 row">
    <div class="col-sm-3 col-lg-2">
        <?php
        $tab_view['active_tab'] = "modules";
        $this->load->view("settings/tabs", $tab_view);
        ?>
    </div>

    <div class="col-sm-9 col-lg-10">
        <?php echo form_open(get_uri("settings/save_task_status_settings"), array("id" => "module-settings-form", "class" => "general-form dashed-row", "role" => "form")); ?>
        <div class="panel">
            <div class="panel-default panel-heading">
                <h4>Manage Task Status's</h4>
                <div>Select the task status's you want to load by default.</div>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label for="task_0" class="col-md-2">Task 0 %</label>
                    <div class="col-md-10">
                        <?php
                        echo form_checkbox("task_0", "1", get_setting("task_0") ? true : false, "id='task_0' class='ml15'");
                        ?>                       
                    </div>
                </div>
                <div class="form-group">
                    <label for="task_25" class="col-md-2">Task 25 %</label>
                    <div class="col-md-10">
                        <?php
                        echo form_checkbox("task_25", "1", get_setting("task_25") ? true : false, "id='task_25' class='ml15'");
                        ?>                       
                    </div>
                </div>
                <div class="form-group">
                    <label for="task_50" class="col-md-2">Task 50 %</label>
                    <div class="col-md-10">
                        <?php
                        echo form_checkbox("task_50", "1", get_setting("task_50") ? true : false, "id='task_50' class='ml15'");
                        ?>                       
                    </div>
                </div>
                <div class="form-group">
                    <label for="task_75" class="col-md-2">Task 75 %</label>
                    <div class="col-md-10">
                        <?php
                        echo form_checkbox("task_75", "1", get_setting("task_75") ? true : false, "id='task_75' class='ml15'");
                        ?>                       
                    </div>
                </div>
                <div class="form-group">
                    <label for="task_100" class="col-md-2">Task 100 %</label>
                    <div class="col-md-10">
                        <?php
                        echo form_checkbox("task_100", "1", get_setting("task_100") ? true : false, "id='task_100' class='ml15'");
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
        $("#module-settings-form").appForm({
            isModal: false,
            onSuccess: function (result) {
                appAlert.success(result.message, {duration: 10000});
                location.reload();
            }
        });
    });
</script>