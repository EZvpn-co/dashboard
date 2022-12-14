{include file='admin/main.tpl'}


<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <h1 class="content-heading">List of goods</h1>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12 col-sm-12">
            <section class="content-inner margin-top-no">

                <div class="card">
                    <div class="card-main">
                        <div class="card-inner">
                            <p>A list of all the goods in the system.</p>
                            <p>Display list item:
                                {include file='table/checkbox.tpl'}
                            </p>
                        </div>
                    </div>
                </div>

                <div class="table-responsive">
                    {include file='table/table.tpl'}
                </div>

                <div class="fbtn-container">
                    <div class="fbtn-inner">
                        <a class="fbtn fbtn-lg fbtn-brand-accent waves-attach waves-circle waves-light"
                           href="/admin/shop/create">+</a>

                    </div>
                </div>

                <div aria-hidden="true" class="modal modal-va-middle fade" id="delete_modal" role="dialog"
                     tabindex="-1">
                    <div class="modal-dialog modal-xs">
                        <div class="modal-content">
                            <div class="modal-heading">
                                <a class="modal-close" data-dismiss="modal">×</a>
                                <h2 class="modal-title">Confirm to the shelves?</h2>
                            </div>
                            <div class="modal-inner">
                                <p>Tip: the shelves will close all bought automatic renewal of this package!</p>
                                <p>Please confirm.</p>
                            </div>
                            <div class="modal-footer">
                                <p class="text-right">
                                    <button class="btn btn-flat btn-brand-accent waves-attach waves-effect"
                                            data-dismiss="modal" type="button">cancel
                                    </button>
                                    <button class="btn btn-flat btn-brand-accent waves-attach" data-dismiss="modal"
                                            id="delete_input" type="button">determine
                                    </button>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                {include file='dialog.tpl'}

        </div>


    </div>
</main>


{include file='admin/footer.tpl'}

<script>

    function delete_modal_show(id) {
        deleteid = id;
        $("#delete_modal").modal();
    }

    {include file='table/js_1.tpl'}

    window.addEventListener('load', () => {
        table_1 = $('#table_1').DataTable({
            ajax: {
                url: '{$table_config['ajax_url']}',
                type: "POST"
            },
            processing: true,
            order: [[2, 'desc']],
            stateSave: true,
            columnDefs: [{
                targets: ['_all'],
                className: 'mdl-data-table__cell--non-numeric'
            }],
            columns: [
                {foreach $table_config['total_column'] as $key => $value}
                {
                    "data": "{$key}"
                },
                {/foreach}
            ],
            {include file='table/lang_chinese.tpl'}
        })


        var has_init = JSON.parse(localStorage.getItem(`${ldelim}window.location.href{rdelim}-hasinit`));
        if (has_init !== true) {
            localStorage.setItem(`${ldelim}window.location.href{rdelim}-hasinit`, true);
        } else {
            {foreach $table_config['total_column'] as $key => $value}
            var checked = JSON.parse(localStorage.getItem(`${ldelim}window.location.href{rdelim}-haschecked-checkbox_{$key}`));
            if (checked == true) {
                $$.getElementById('checkbox_{$key}').checked = true;
            } else {
                $$.getElementById('checkbox_{$key}').checked = false;
            }
            {/foreach}
        }

        {foreach $table_config['total_column'] as $key => $value}
        modify_table_visible('checkbox_{$key}', '{$key}');
        {/foreach}


        function delete_id() {
            $.ajax({
                type: "DELETE",
                url: "/admin/shop",
                dataType: "json",
                data: {
                    id: deleteid
                },
                success: data => {
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                        $$.getElementById(`row_delete_${ldelim}deleteid{rdelim}`).setAttribute('disabled', 'true')
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: jqXHR => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${ldelim}data.msg{rdelim} An error has occurred。`;
                }
            });
        }

        $$.getElementById('delete_input').addEventListener('click', delete_id);
    })

</script>
