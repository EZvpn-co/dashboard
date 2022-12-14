{include file='admin/main.tpl'}

<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <h1 class="content-heading"> Edit the rules #{$rule->id}</h1>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12 col-sm-12">
            <section class="content-inner margin-top-no">
                <form id="main_form">
                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner">
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="source_node">The origin of the node</label>
                                    <select id="source_node" class="form-control maxwidth-edit" name="source_node">
                                        <option value="0">Please select the origin node</option>
                                        {foreach $source_nodes as $source_node}
                                            <option value="{$source_node->id}"
                                                    {if $rule->source_node_id == $source_node->id}selected{/if}>{$source_node->name}</option>
                                        {/foreach}
                                    </select>
                                </div>


                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="dist_node">The target node</label>
                                    <select id="dist_node" class="form-control maxwidth-edit" name="dist_node">
                                        <option value="-1">Not to transfer</option>
                                        {foreach $dist_nodes as $dist_node}
                                            <option value="{$dist_node->id}"
                                                    {if $rule->dist_node_id == $dist_node->id}selected{/if}>{$dist_node->name}</option>
                                        {/foreach}
                                    </select>
                                </div>

                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="port">port</label>
                                    <input class="form-control maxwidth-edit" id="port" name="port" type="text"
                                           value="{$rule->port}">
                                </div>

                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="priority">priority</label>
                                    <input class="form-control maxwidth-edit" id="priority" name="priority" type="text"
                                           value="{$rule->priority}">
                                </div>

                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="user_id">The userID</label>
                                    <input class="form-control maxwidth-edit" id="user_id" name="user_id" type="text"
                                           value="{$rule->user_id}">
                                </div>

                            </div>
                        </div>
                    </div>


                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner">

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-10 col-md-push-1">
                                            <button id="submit" type="submit"
                                                    class="btn btn-block btn-brand waves-attach waves-light">Modify the
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                {include file='dialog.tpl'}
                <section>

        </div>

    </div>
</main>


{include file='admin/footer.tpl'}


<script>
    {literal}
    $('#main_form').validate({
        rules: {
            priority: {required: true},
            port: {required: true},
            user_id: {required: true}
        },
        {/literal}
        submitHandler: () => {

            $.ajax({
                type: "PUT",
                url: "/admin/relay/{$rule->id}",
                dataType: "json",
                data: {
                    source_node: $$getValue('source_node'),
                    dist_node: $$getValue('dist_node'),
                    port: $$getValue('port'),
                    user_id: $$getValue('user_id'),
                    priority: $$getValue('priority')
                },
                success: data => {
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                        window.setTimeout("location.href=top.document.referrer", {$config['jump_delay']});
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: jqXHR => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${ldelim}data.msg{rdelim} There was an error with???`;
                }
            });
        }
    });

</script>
