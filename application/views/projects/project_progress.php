<div id="page-content" class="p20 clearfix">
    <div class="panel panel-default">
        <div class="page-title clearfix">
            <h1><?php echo lang('projects'); ?> Progress</h1>
        </div>
        <div class="table-responsive">
            <table id="project-table" class="display" cellspacing="0" width="100%">            
            </table>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {

        $("#project-table").appTable({
            source: '<?php echo_uri("projects/list_project_progress") ?>',
            columns: [
                {title: '<?php echo lang("id") ?>', "class": "w50"},
                {title: '<?php echo lang("title") ?> (Project - Task)'},
                {title: 'Project Deadline', "class": "w10p", "iDataSort": 4},
                {title: 'Task Deadline', "class": "w10p", "iDataSort": 6},
                {title: '<?php echo lang("status") ?>', "class": "w10p"}
            ],
            order: [[1, "asc"]],
            printColumns: [0, 1, 2, 3, 5, 7, 8, 9],
            xlsColumns: [0, 1, 2, 3, 5, 7, 9]
        });
    });
</script>