<style type="text/css">

.label-container{
    position:fixed;
    bottom:48px;
    right:105px;
    display:table;
    visibility: hidden;
}

.label-text{
    color:#FFF;
    background:rgba(51,51,51,0.5);
    display:table-cell;
    vertical-align:middle;
    padding:10px;
    border-radius:3px;
}

.label-arrow{
    display:table-cell;
    vertical-align:middle;
    color:#333;
    opacity:0.5;
}

.my-float{
    font-size:24px;
    margin-top:18px;
}

@keyframes scale-in {
    from {transform: scale(0);opacity: 0;}
    to {transform: scale(1);opacity: 1;}
}

@keyframes rotate-in {
    from {transform: rotate(0deg);}
    to {transform: rotate(360deg);}
}

@keyframes rotate-out {
    from {transform: rotate(360deg);}
    to {transform: rotate(0deg);}
}

</style>

<a id="menu-share" class="scrollToTop" style="position:fixed; width:60px; height:60px; bottom:40px; right:40px; background-color:#1ccacc; color:#FFF; border-radius:50px; text-align:center; box-shadow: 2px 2px 3px #999; z-index:1000; animation: bot-to-top 2s ease-out;display: none">
    <i class="fa fa-arrow-up my-float"></i>
</a>

<div class="panel">
    <hr>
    <div class="row">
        <div class="col-sm-1">
        <h4><?php echo lang('tasks'); ?></h4>
        </div>
        <?php if ($can_create_tasks) { ?>
        <div class="col-sm-8">
            <?php echo form_open(get_uri("projects/save_instant_task"), array("id" => "instant_task-form", "class" => "form-inline", "role" => "form")); ?>
            <input type="hidden" name="project_id" value="<?php echo $project_id; ?>" />
                <div class="form-group mb-2">
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
                <div class="form-group mb-2">
                        <?php
                        echo form_input(array(
                            "id" => "deadline",
                            "name" => "deadline",
                            "value" => $model_info->deadline * 1 ? $model_info->deadline : "",
                            "class" => "form-control",
                            "placeholder" => "Due Date"
                        ));
                        ?>
                </div>

                <div class="form-group mb-2">
                    <label for="assigned_to" class=" col-md-3"><?php echo lang('assign_to'); ?></label>
                    <div class="col-md-9">
                        <select class="select2 validate-hidden" name="assigned_to" id="assigned_to" required>
                          <?php
                            $project_members = $this->Users_model->all_dropdown($project_id)->result();
                            $project_members_dropdown = array("" => "-");
                            foreach ($project_members as $member) {
                                echo "<option value=". $member->user_id . ">" . ucfirst($member->member_name) . "</option>";
                            }
                          ?>
                        </select>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary"><span class="fa fa-check-circle"></span> <?php echo lang('save'); ?></button>
            <?php echo form_close(); ?>
        </div>
        <?php } ?>
        <div class="col-sm-3">
            <div class="title-button-group">
                <?php
                if ($can_create_tasks) {
                    // echo modal_anchor(get_uri("projects/quick_task_modal_form"), "<i class='fa fa-fire'></i> " . 'Add Quick Task', array("class" => "btn btn-default", "title" => 'Add Quick Task', "data-post-project_id" => $project_id));
                    echo modal_anchor(get_uri("projects/task_import_modal_form"), "<i class='fa fa-plus-circle'></i> Import Tasks", array("class" => "btn btn-default", "title" => 'Import Tasks', "data-post-project_id" => $project_id));
                    echo modal_anchor(get_uri("projects/task_modal_form"), "<i class='fa fa-plus-circle'></i> " . lang('add_task'), array("class" => "btn btn-default", "title" => lang('add_task'), "data-post-project_id" => $project_id));
                }
                ?>
            </div>
        </div>
    </div>
    <div class="table-responsive">
        <table id="task-table" class="display" width="100%">
        </table>
    </div>

</div>

<script type="text/javascript">
    $(document).ready(function () {

        setDatePicker("#start_date, #end_date, #deadline");

        $("#instant_task-form").appForm({
            isModal: false,
            onSuccess: function(result) {
                appAlert.success(result.message, {duration: 10000});
                location.reload();
            }
        });

        $("#instant_task-form .select2").select2();
        
        //Click event to scroll to top
        $('.scrollToTop').click(function(){
            location.reload();
        });

        var userType = "<?php echo $this->login_user->user_type; ?>";

        var optionVisibility = false;
        if ("<?php echo ($can_edit_tasks || $can_delete_tasks); ?>") {
            optionVisibility = true;
        }

        if (userType === "client") {
            //don't show assignee and options to clients
            $("#task-table").appTable({
                source: '<?php echo_uri("projects/tasks_list_data/" . $project_id) ?>',
                order: [[0, "desc"]],
                filterDropdown: [{name: "milestone_id", class: "w200", options: <?php echo $milestone_dropdown; ?>}],
                checkBoxes: [
                    {text: 'ToDo', name: "status", value: "to_do - 0%", isChecked: true},
                    {text: '25%', name: "status", value: "in_progress - 25%", isChecked: true},
                    {text: '50%', name: "status", value: "in_progress - 50%", isChecked: true},
                    {text: '75%', name: "status", value: "in_progress - 75%", isChecked: true},
                    {text: 'Done', name: "status", value: "done - 100%", isChecked: false}
                ],
                columns: [

                    {title: ''},
                    {visible: false, searchable: false},
                    {visible: false, searchable: false},
                    {title: '<?php echo lang("title") ?>'},
                    {visible: false, searchable: false},
                    {visible: false, searchable: false},
                    {visible: false, searchable: false},
                    {visible: false, searchable: false},
                    {title: '<?php echo lang("start_date") ?>', "iDataSort": 4},
                    {visible: false, searchable: true},
                    {title: '<?php echo lang("deadline") ?>', "iDataSort": 4},
                    {visible: false, searchable: false},
                    {visible: false, searchable: false},
                    {visible: false, searchable: false},
                    {title: '<?php echo lang("status") ?>'},
                    {visible: false, searchable: false},
                    {title: '<i class="fa fa-bars"></i>', visible: optionVisibility, "class": "text-center option w100"}
                ],
                printColumns: [0, 1, 3, 6],
                xlsColumns: [0, 1, 3, 6],
                rowCallback: function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
                    $('td:eq(0)', nRow).addClass(aData[16]);
                }
            });
        } else {
            $("#task-table").appTable({
                source: '<?php echo_uri("projects/tasks_list_data/" . $project_id) ?>',
                // order: [[0, "desc"]],
                filterDropdown: [{name: "milestone_id", class: "w100", options: <?php echo $milestone_dropdown; ?>}, {name: "assigned_to", class: "w100", options: <?php echo $assigned_to_dropdown; ?>}],
                checkBoxes: [
                    {text: 'ToDo', name: "status", value: "to_do - 0%", isChecked: <?php echo (get_setting('task_0') == 1 ? "true" : "false"); ?>},
                    {text: '25%', name: "status", value: "in_progress - 25%", isChecked: <?php echo (get_setting('task_25') == 1 ? "true" : "false"); ?>},
                    {text: '50%', name: "status", value: "in_progress - 50%", isChecked: <?php echo (get_setting('task_50') == 1 ? "true" : "false"); ?>},
                    {text: '75%', name: "status", value: "in_progress - 75%", isChecked: <?php echo (get_setting('task_75') == 1 ? "true" : "false"); ?>},
                    {text: 'Done', name: "status", value: "done - 100%", isChecked: <?php echo (get_setting('task_100') == 1 ? "true" : "false"); ?>}
                ],
                columns: [
                     {title: ''},
                    {visible: false, searchable: false},
                    {title: '<i class="fa fa-bars"></i>', visible: optionVisibility, "class": "text-center option w80"},
                    {title: '<?php echo lang("title") ?>', "class": "w200"},
                    {visible: false, searchable: false},
                    {title: 'Actual (Max) Hrs.', 'class': 'text-center'},
                    {visible: false, searchable: false},
                    {visible: false, searchable: false},
                    {title: '<?php echo lang("start_date") ?>', "iDataSort": 4},
                    {visible: false, searchable: true},
                    {title: 'Date Created',"iDataSort": 4},
                    {title: '<?php echo lang("deadline") ?>', "iDataSort": 4},
                    {visible: false, searchable: false},
                    {title: '<?php echo lang("assigned_to") ?>', "class": "w200"},
                    {title: 'Priority'},
                    {title: '<?php echo lang("status") ?>', "class": "w200"},
                ],
                printColumns: [1, 2, 3, 5, 7, 9],
                xlsColumns: [1, 2, 3, 5, 7, 9],
               // summation: [{column: 4, dataType: 'float'}],
                /*rowCallback: function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
                    $('td:eq(0)', nRow).addClass(aData[16]);
                },*/
                "drawCallback": function () {
                    var api = this.api();
                    var rows = api.rows( {page:'current'} ).nodes();
                    var last=null;

                    api.column(1, {page:'current'} ).data().each( function ( group, i ) {
                        if ( last !== group ) {
                            $(rows).eq( i ).before(
                                '<tr class="group"><td colspan="10"><strong>'+group+'</strong></td></tr>'
                            );
                            last = group;
                        }
                    } );
                }
            });

            // var table = $("#task-table").DataTable();
            // $('#task-table tbody').on( 'click', 'tr.group', function () {
            //     var currentOrder = table.order()[0];
            //     console.log(currentOrder);
            //     if (currentOrder[0] === 1 && currentOrder[1] === 'asc' ) {
            //         table.order([1, 'desc']).draw();
            //     }
            //     else {
            //         table.order([1, 'asc']).draw();
            //     }
            // });
        }
    });
</script>

<?php $this->load->view("projects/tasks/update_task_script"); ?>