{include file='admin/main.tpl'}

<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <h1 class="content-heading">Subscribe to the record</h1>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12 col-sm-12">
            <section class="content-inner margin-top-no">

                <div class="card">
                    <div class="card-main">
                        <div class="card-inner">
                            <p>Here is all users recently {$config['subscribeLog_keep_days']} Days of subscription record.</p>
                            <p>Display list item: {include file='table/checkbox.tpl'}</p>
                        </div>
                    </div>
                </div>

                <div class="table-responsive">
                    {include file='table/table.tpl'}
                </div>


        </div>


    </div>
</main>

{include file='admin/footer.tpl'}

<script>
    {include file='table/js_1.tpl'}

    window.addEventListener('load', () => {
        {include file='table/js_2.tpl'}
    });
</script>
