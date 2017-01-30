<div id="page-content" class="m20 clearfix">

    <div class="panel panel-default">
        <div class="page-title clearfix">
            <h1>Task Summary</h1>
        </div>
        <div class="table-responsive">
            <table id="attendance-table" class="display" cellspacing="0" width="100%">            
            </table>
        </div>
    </div>

</div>


<script type="text/javascript">
    $(document).ready(function() {
        $("#attendance-table").appTable({
            source: '<?php echo_uri("attendance/task_summary_data"); ?>',
            order: [[1, "asc"]],
            dateRangeType: "weekly",
            columns: [
                {title: "<?php echo lang("team_member"); ?>", "class": "w15p"},
                {visible: false, searchable: false},
                {title: "Task", "class": "w15p"},
                {title: "Duration", "class": "w10p text-right"},
            ],
            printColumns: [0, 1, 2, 3],
            xlsColumns: [0, 1, 2, 3],
            "drawCallback": function ( settings ) {
                var api = this.api();
                var rows = api.rows({page:'current'}).nodes();
                var last=null;
                var totals = 0;

                api.column(1, {page:'current'}).data().each(function (group, i) {
                    totals += parseFloat($(rows).eq(i).find('td').eq(2).html());
                    if (last !== group) {
//                        $(rows).eq(i).before(
//                            '<tr class="group">' +
//                            '<td></td>' +
//                            '<td><strong>Total: </strong></td>' +
//                            '<td class="text-right"><strong>'+totals +'</strong></td>' +
//                            '</tr>'
//                        );
//
                        $(rows).eq(i)
                            .before('<tr class="group"><td colspan="4">'+group+'</td></tr>');

                        totals = 0;
                        last = group;
                    }
                } );
            }
        });
    });
</script>    
