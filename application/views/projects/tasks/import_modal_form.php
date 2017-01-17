<?php echo form_open(get_uri("modules/tasks/import"), array("id" => "task-form", "class" => "general-form", "role" => "form", 'enctype' => 'multipart/form-data')); ?>
<div class="modal-body clearfix">
    <input type="hidden" name="id" value="<?php echo $model_info->id; ?>" />
    <input type="hidden" name="_token" id="token"/>
    <?php if($project_id) : ?>
    <input type="hidden" name="project_id" value="<?php echo $project_id; ?>" />
    <?php else : ?>
        <div class="form-group">
            <label for="title" class=" col-md-3"><?php echo lang('title'); ?></label>
            <div class=" col-md-9">
                <?php
                echo form_input(array(
                    "id" => "title",
                    "name" => "title",
                    "value" => $model_info->title,
                    "class" => "form-control",
                    "placeholder" => lang('title'),
                    "autofocus" => true,
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
    <?php endif; ?>
    <div class="form-group">
        <label for="points" class="col-md-3">Points Per Task
            <span class="help" data-toggle="tooltip" title="<?php echo lang('task_point_help_text'); ?>"><i class="fa fa-question-circle"></i></span>
        </label>
        <div class="col-md-9">
            <?php
                echo form_dropdown("points", $points_dropdown, array($model_info->points), "class='select2'");
            ?>
        </div>
    </div>
    <input type="hidden" name="milestone_id" value="0">

    <?php if ($show_assign_to_dropdown) { ?>
        <div class="form-group">
            <label for="assigned_to" class=" col-md-3"><?php echo lang('assign_to'); ?></label>
            <div class="col-md-9">
                <?php
                echo form_dropdown("assigned_to", $assign_to_dropdown, array($model_info->assigned_to), "class='select2'");
                ?>
            </div>
        </div>

        <div class="form-group">
            <label for="collaborators" class=" col-md-3"><?php echo lang('collaborators'); ?></label>
            <div class="col-md-9">
                <?php
                echo form_input(array(
                    "id" => "collaborators",
                    "name" => "collaborators",
                    "value" => $model_info->collaborators,
                    "class" => "form-control",
                    "placeholder" => lang('collaborators')
                ));
                ?>
            </div>
        </div>

    <?php } ?>

    <div class="form-group">
        <label for="status" class=" col-md-3"><?php echo lang('status'); ?></label>
        <div class="col-md-9">
            <?php
            $task_status = [
                'to_do - 0%' => 'ToDo - 0% Complete',
                'in_progress - 25%' => 'In Progress - 25% Complete',
                'in_progress - 50%' => 'In Progress - 50% Complete',
                'in_progress - 75%' => 'In Progress - 75% Complete',
                'done - 100%' => 'Done - 100% Complete'
            ];
            echo form_dropdown("status", $task_status, array($model_info->status), "class='select2'");
            ?>
        </div>
    </div>
    <div class="form-group">
        <label for="project_labels" class=" col-md-3"><?php echo lang('labels'); ?></label>
        <div class=" col-md-9">
            <?php
            echo form_input(array(
                "id" => "project_labels",
                "name" => "labels",
                "value" => $model_info->labels,
                "class" => "form-control",
                "placeholder" => lang('labels')
            ));
            ?>
        </div>
    </div>

    <div class="form-group">
        <label for="import_file" class=" col-md-3">Select File</label>
        <div class=" col-md-9">
            <input type="file" name="import_file" id="import_file" required accept=".xls,.xl,.xlsx">
        </div>
    </div>

    <div class="form-group">
        <label for="import_file" class=" col-md-3">Sample File</label>
        <div class=" col-md-9">
            <a href="/Import.xls">Download Sample</a>
        </div>
    </div>
</div>

<div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal"><span class="fa fa-close"></span> <?php echo lang('close'); ?></button>
    <button type="submit" class="btn btn-primary"><span class="fa fa-check-circle"></span> Import</button>
</div>
<?php echo form_close(); ?>

<script type="text/javascript">
    $(document).ready(function () {
        $.ajax({
            url: '/modules/token',
            success: function (response) {
                $('#token').val(response);
            }
        });
        $("#task-form").appForm({
            onSuccess: function (result) {
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            }
        });
        $("#task-form .select2").select2();
        $("#title").focus();

        setDatePicker("#start_date, #end_date, #deadline");

        $("#project_labels").select2({
            tags: <?php echo json_encode($label_suggestions); ?>
        });

        $("#collaborators").select2({
            tags: <?php echo json_encode($collaborators_dropdown); ?>
        });

        $('[data-toggle="tooltip"]').tooltip();

    });
</script>    