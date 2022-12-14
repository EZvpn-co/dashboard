{include file='admin/main.tpl'}
<style>
    table {
        width: 100%;
        display: table;
        border-collapse: collapse;
        border-spacing: 0;
    }
    table, th, td {
        border: none;
    }
    thead {
        color: rgba(0,0,0,0.6);
    }
    tr {
        border-bottom: 1px solid rgba(0,0,0,0.12);
    }
    td, th {
        padding: 15px 10px;
    }
    td, th {
        padding: 15px 5px;
        display: table-cell;
        text-align: left;
        vertical-align: middle;
        border-radius: 2px;
        font-weight: 500;
    }
    table, th, td {
        border: none;
    }
    tr {
        border-bottom: 1px solid rgba(0,0,0,0.12);
    }
</style>
<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <h1 class="content-heading">summary</h1>
        </div>
    </div>
    <div class="container">
        <section class="content-inner margin-top-no">
            <div class="row">
                <div class="col-xx-12">
                    <div class="card margin-bottom-no">
                        <div class="card-main">
                            <div class="card-inner">
                                <p>The following is a brief report system operation.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ui-card-wrap">
                <div class="row">
                    <div class="col-xx-12 col-sm-3">
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <h5>income</h5>
                                    <p id="income_text" style="margin-top: 10px;">loading</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xx-12 col-sm-3">
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <h5>Registering a new user</h5>
                                    <p id="newusers_text" style="margin-top: 10px;">loading</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xx-12 col-sm-3">
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <h5>The order details</h5>
                                    <p id="order_text" style="margin-top: 10px;">loading</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xx-12 col-sm-3">
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <h5>The repair order detail</h5>
                                    <p id="ticket_text" style="margin-top: 10px;">loading</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xx-12 col-sm-6">
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <h5>Invite the number</h5>
                                    <button class="mdl-button mdl-js-button mdl-button--raised" onclick="getRefUserCount('today')">today</button>
                                    <button class="mdl-button mdl-js-button mdl-button--raised" onclick="getRefUserCount('yesterday')">yesterday</button>
                                    <button class="mdl-button mdl-js-button mdl-button--raised" onclick="getRefUserCount('week')">This week,</button>
                                    <button class="mdl-button mdl-js-button mdl-button--raised" onclick="getRefUserCount('month')">This month,</button>
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>The userID</th>
                                            <th>The user name</th>
                                            <th>User mailbox</th>
                                            <th>Invite the number</th>
                                        </tr>
                                        </thead>
                                        <tbody id="ref_user_count">
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <h5>72Hours of node flow use rankings</h5>
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>nodeID</th>
                                            <th>The name of the node</th>
                                            <th>Use the traffic</th>
                                        </tr>
                                        </thead>
                                        <tbody id="node_traffic_text">
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">

                                    <div id="check_chart" style="height: 300px; width: 100%;"></div>

                                    <script src="//cdn.jsdelivr.net/gh/SuicidalCat/canvasjs.js@v2.3.1/canvasjs.min.js"></script>
                                    <script>
                                        var chart = new CanvasJS.Chart("check_chart",
                                                {
                                                    title: {
                                                        text: "User sign in(The total user {$sts->getTotalUser()}people)",
                                                        fontFamily: "Impact",
                                                        fontWeight: "normal"
                                                    },

                                                    legend: {
                                                        verticalAlign: "bottom",
                                                        horizontalAlign: "center"
                                                    },
                                                    data: [
                                                        {
                                                            //startAngle: 45,
                                                            indexLabelFontSize: 20,
                                                            indexLabelFontFamily: "Garamond",
                                                            indexLabelFontColor: "darkgrey",
                                                            indexLabelLineColor: "darkgrey",
                                                            indexLabelPlacement: "outside",
                                                            type: "doughnut",
                                                            showInLegend: true,
                                                            dataPoints: [
                                                                {
                                                                    y: {(1-($sts->getCheckinUser()/$sts->getTotalUser()))*100},
                                                                    legendText: "The user did not sign in {number_format((1-($sts->getCheckinUser()/$sts->getTotalUser()))*100,2)}% {$sts->getTotalUser()-$sts->getCheckinUser()}people",
                                                                    indexLabel: "The user did not sign in {number_format((1-($sts->getCheckinUser()/$sts->getTotalUser()))*100,2)}% {$sts->getTotalUser()-$sts->getCheckinUser()}people"
                                                                },
                                                                {
                                                                    y: {(($sts->getCheckinUser()-$sts->getTodayCheckinUser())/$sts->getTotalUser())*100},
                                                                    legendText: "Once signed in users {number_format((($sts->getCheckinUser()-$sts->getTodayCheckinUser())/$sts->getTotalUser())*100,2)}% {$sts->getCheckinUser()-$sts->getTodayCheckinUser()}people",
                                                                    indexLabel: "Once signed in users {number_format((($sts->getCheckinUser()-$sts->getTodayCheckinUser())/$sts->getTotalUser())*100,2)}% {$sts->getCheckinUser()-$sts->getTodayCheckinUser()}people"
                                                                },
                                                                {
                                                                    y: {$sts->getTodayCheckinUser()/$sts->getTotalUser()*100},
                                                                    legendText: "Today sign in the user {number_format($sts->getTodayCheckinUser()/$sts->getTotalUser()*100,2)}% {$sts->getTodayCheckinUser()}people",
                                                                    indexLabel: "Today sign in the user {number_format($sts->getTodayCheckinUser()/$sts->getTotalUser()*100,2)}% {$sts->getTodayCheckinUser()}people"
                                                                }
                                                            ]
                                                        }
                                                    ]
                                                });

                                        chart.render();

                                        function chartRender(chart) {
                                            chart.render();
                                            chart.ctx.shadowBlur = 8;
                                            chart.ctx.shadowOffsetX = 4;
                                            chart.ctx.shadowColor = "black";

                                            for (let i in chart.plotInfo.plotTypes) {
                                                let plotType = chart.plotInfo.plotTypes[i];
                                                for (let j in plotType.plotUnits) {
                                                    let plotUnit = plotType.plotUnits[j];
                                                    if (plotUnit.type === "doughnut") {
                                                        // For Column Chart
                                                        chart.renderDoughnut(plotUnit);
                                                    } else if (plotUnit.type === "bar") {
                                                        // For Bar Chart
                                                        chart.renderBar(plotUnit);
                                                    }
                                                }
                                            }
                                            chart.ctx.shadowBlur = 0;
                                            chart.ctx.shadowOffsetX = 0;
                                            chart.ctx.shadowColor = "transparent";
                                        }
                                    </script>

                                </div>

                            </div>
                        </div>
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">

                                    <div id="alive_chart" style="height: 300px; width: 100%;"></div>

                                    <script src="//cdn.jsdelivr.net/gh/YihanH/canvasjs.js@v2.2/canvasjs.min.js"></script>
                                    <script type="text/javascript">
                                        var chart = new CanvasJS.Chart("alive_chart",
                                                {
                                                    title: {
                                                        text: "User online(The total user {$sts->getTotalUser()}people)",
                                                        fontFamily: "Impact",
                                                        fontWeight: "normal"
                                                    },

                                                    legend: {
                                                        verticalAlign: "bottom",
                                                        horizontalAlign: "center"
                                                    },
                                                    data: [
                                                        {
                                                            //startAngle: 45,
                                                            indexLabelFontSize: 20,
                                                            indexLabelFontFamily: "Garamond",
                                                            indexLabelFontColor: "darkgrey",
                                                            indexLabelLineColor: "darkgrey",
                                                            indexLabelPlacement: "outside",
                                                            type: "doughnut",
                                                            showInLegend: true,
                                                            dataPoints: [
                                                                {
                                                                    y: {(($sts->getUnusedUser()/$sts->getTotalUser()))*100},
                                                                    legendText: "Never online users {number_format((($sts->getUnusedUser()/$sts->getTotalUser()))*100,2)}% {(($sts->getUnusedUser()))}people",
                                                                    indexLabel: "Never online users {number_format((($sts->getUnusedUser()/$sts->getTotalUser()))*100,2)}% {(($sts->getUnusedUser()))}people"
                                                                },
                                                                {
                                                                    y: {(($sts->getTotalUser()-$sts->getOnlineUser(86400)-$sts->getUnusedUser())/$sts->getTotalUser())*100},
                                                                    legendText: "One day before online users {number_format((($sts->getTotalUser()-$sts->getOnlineUser(86400)-$sts->getUnusedUser())/$sts->getTotalUser())*100,2)}% {($sts->getTotalUser()-$sts->getOnlineUser(86400)-$sts->getUnusedUser())}people",
                                                                    indexLabel: "One day before online users {number_format((($sts->getTotalUser()-$sts->getOnlineUser(86400)-$sts->getUnusedUser())/$sts->getTotalUser())*100,2)}% {($sts->getTotalUser()-$sts->getOnlineUser(86400)-$sts->getUnusedUser())}people"
                                                                },
                                                                {
                                                                    y: {($sts->getOnlineUser(86400)-$sts->getOnlineUser(3600))/$sts->getTotalUser()*100},
                                                                    legendText: "Internal line users a day {number_format(($sts->getOnlineUser(86400)-$sts->getOnlineUser(3600))/$sts->getTotalUser()*100,2)}% {($sts->getOnlineUser(86400)-$sts->getOnlineUser(3600))}people",
                                                                    indexLabel: "Internal line users a day {number_format(($sts->getOnlineUser(86400)-$sts->getOnlineUser(3600))/$sts->getTotalUser()*100,2)}% {($sts->getOnlineUser(86400)-$sts->getOnlineUser(3600))}people"
                                                                },
                                                                {
                                                                    y: {($sts->getOnlineUser(3600)-$sts->getOnlineUser(60))/$sts->getTotalUser()*100},
                                                                    legendText: "An hour internal line of users {number_format(($sts->getOnlineUser(3600)-$sts->getOnlineUser(60))/$sts->getTotalUser()*100,2)}% {($sts->getOnlineUser(3600)-$sts->getOnlineUser(60))}people",
                                                                    indexLabel: "An hour internal line of users {number_format(($sts->getOnlineUser(3600)-$sts->getOnlineUser(60))/$sts->getTotalUser()*100,2)}% {($sts->getOnlineUser(3600)-$sts->getOnlineUser(60))}people"
                                                                },
                                                                {
                                                                    y: {($sts->getOnlineUser(60))/$sts->getTotalUser()*100},
                                                                    legendText: "Internal line of users in a minute {number_format(($sts->getOnlineUser(60))/$sts->getTotalUser()*100,2)}% {($sts->getOnlineUser(60))}people",
                                                                    indexLabel: "Internal line of users in a minute {number_format(($sts->getOnlineUser(60))/$sts->getTotalUser()*100,2)}% {($sts->getOnlineUser(60))}people"
                                                                }
                                                            ]
                                                        }
                                                    ]
                                                });

                                        chart.render();
                                    </script>

                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-xx-12 col-sm-6">

                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <h5>Invite rebate</h5>
                                    <button class="mdl-button mdl-js-button mdl-button--raised" onclick="getRefMoneyCount('today')">today</button>
                                    <button class="mdl-button mdl-js-button mdl-button--raised" onclick="getRefMoneyCount('yesterday')">yesterday</button>
                                    <button class="mdl-button mdl-js-button mdl-button--raised" onclick="getRefMoneyCount('week')">This week,</button>
                                    <button class="mdl-button mdl-js-button mdl-button--raised" onclick="getRefMoneyCount('month')">This month,</button>
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>The userID</th>
                                            <th>The user name</th>
                                            <th>User mailbox</th>
                                            <th>The rebate amount</th>
                                        </tr>
                                        </thead>
                                        <tbody id="ref_money_count">
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <h5>72Hours of user traffic use rankings</h5>
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>The userID</th>
                                            <th>The user name</th>
                                            <th>email</th>
                                            <th>Use the traffic</th>
                                        </tr>
                                        </thead>
                                        <tbody id="user_traffic_text">
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <div id="node_chart" style="height: 300px; width: 100%;"></div>
                                    <script src="//cdn.jsdelivr.net/gh/YihanH/canvasjs.js@v2.2/canvasjs.min.js"></script>
                                    <script type="text/javascript">
                                        var chart = new CanvasJS.Chart("node_chart",
                                                {
                                                    title: {
                                                        text: "Node is online(Number of nodes {$sts->getTotalNodes()}a)",
                                                        fontFamily: "Impact",
                                                        fontWeight: "normal"
                                                    },

                                                    legend: {
                                                        verticalAlign: "bottom",
                                                        horizontalAlign: "center"
                                                    },
                                                    data: [
                                                        {
                                                            //startAngle: 45,
                                                            indexLabelFontSize: 20,
                                                            indexLabelFontFamily: "Garamond",
                                                            indexLabelFontColor: "darkgrey",
                                                            indexLabelLineColor: "darkgrey",
                                                            indexLabelPlacement: "outside",
                                                            type: "doughnut",
                                                            showInLegend: true,
                                                            dataPoints: [
                                                                {if $sts->getTotalNodes()!=0}
                                                                {
                                                                    y: {(1-($sts->getAliveNodes()/$sts->getTotalNodes()))*100},
                                                                    legendText: "Offline node {number_format((1-($sts->getAliveNodes()/$sts->getTotalNodes()))*100,2)}% {$sts->getTotalNodes()-$sts->getAliveNodes()}a",
                                                                    indexLabel: "Offline node {number_format((1-($sts->getAliveNodes()/$sts->getTotalNodes()))*100,2)}% {$sts->getTotalNodes()-$sts->getAliveNodes()}a"
                                                                },
                                                                {
                                                                    y: {(($sts->getAliveNodes()/$sts->getTotalNodes()))*100},
                                                                    legendText: "Online node {number_format((($sts->getAliveNodes()/$sts->getTotalNodes()))*100,2)}% {$sts->getAliveNodes()}a",
                                                                    indexLabel: "Online node {number_format((($sts->getAliveNodes()/$sts->getTotalNodes()))*100,2)}% {$sts->getAliveNodes()}a"
                                                                }
                                                                {/if}
                                                            ]
                                                        }
                                                    ]
                                                });

                                        chart.render();
                                    </script>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <div id="traffic_chart" style="height: 300px; width: 100%;"></div>
                                    <script src="//cdn.jsdelivr.net/gh/YihanH/canvasjs.js@v2.2/canvasjs.min.js"></script>
                                    <script type="text/javascript">
                                        var chart = new CanvasJS.Chart("traffic_chart",
                                                {
                                                    title: {
                                                        text: "Traffic usage(The total distribution of flow rate {$sts->getTotalTraffic()})",
                                                        fontFamily: "Impact",
                                                        fontWeight: "normal"
                                                    },

                                                    legend: {
                                                        verticalAlign: "bottom",
                                                        horizontalAlign: "center"
                                                    },
                                                    data: [
                                                        {
                                                            //startAngle: 45,
                                                            indexLabelFontSize: 20,
                                                            indexLabelFontFamily: "Garamond",
                                                            indexLabelFontColor: "darkgrey",
                                                            indexLabelLineColor: "darkgrey",
                                                            indexLabelPlacement: "outside",
                                                            type: "doughnut",
                                                            showInLegend: true,
                                                            dataPoints: [
                                                                {if $sts->getRawTotalTraffic()!=0}
                                                                {
                                                                    y: {(($sts->getRawUnusedTrafficUsage()/$sts->getRawTotalTraffic()))*100},
                                                                    label: "Total surplus available",
                                                                    legendText: "Total surplus available {number_format((($sts->getRawUnusedTrafficUsage()/$sts->getRawTotalTraffic()))*100,2)}% {(($sts->getUnusedTrafficUsage()))}",
                                                                    indexLabel: "Total surplus available {number_format((($sts->getRawUnusedTrafficUsage()/$sts->getRawTotalTraffic()))*100,2)}% {(($sts->getUnusedTrafficUsage()))}"
                                                                },
                                                                {
                                                                    y: {(($sts->getRawLastTrafficUsage()/$sts->getRawTotalTraffic()))*100},
                                                                    label: "The total has been used in the past",
                                                                    legendText: "The total has been used in the past {number_format((($sts->getRawLastTrafficUsage()/$sts->getRawTotalTraffic()))*100,2)}% {(($sts->getLastTrafficUsage()))}",
                                                                    indexLabel: "The total has been used in the past {number_format((($sts->getRawLastTrafficUsage()/$sts->getRawTotalTraffic()))*100,2)}% {(($sts->getLastTrafficUsage()))}"
                                                                },
                                                                {
                                                                    y: {(($sts->getRawTodayTrafficUsage()/$sts->getRawTotalTraffic()))*100},
                                                                    label: "Always have used today",
                                                                    legendText: "Always have used today {number_format((($sts->getRawTodayTrafficUsage()/$sts->getRawTotalTraffic()))*100,2)}% {(($sts->getTodayTrafficUsage()))}",
                                                                    indexLabel: "Always have used today {number_format((($sts->getRawTodayTrafficUsage()/$sts->getRawTotalTraffic()))*100,2)}% {(($sts->getTodayTrafficUsage()))}"
                                                                }
                                                                {/if}
                                                            ]
                                                        }
                                                    ]
                                                });

                                        chart.render();
                                    </script>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</main>


{include file='admin/footer.tpl'}

{literal}
<script>
    function getIncome(date) {
        $.ajax({
            type: "GET",
            url: "/admin/api/analytics/income",
            dataType: "json",
            data: {
                date: date,
            },
            success: function (data) {
                if (data.success) {
                    data = data.data;
                    var html_text = `Today's income???${data.todayIncome}<br>Yesterday the income???${data.yesterdayIncome}<br>This week the income???${data.thisWeekIncome}<br>Last week's income???${data.lastWeekIncome}<br>This month income???${data.thisMonthIncome}<br>Last month income???${data.lastMonthIncome}`;
                    $('#income_text').html(html_text);
                } else {
                    console.log(data.error)
                }
            }
        })
    }

    function getNodeTraffic(date) {
        $.ajax({
            type: "GET",
            url: "/admin/api/analytics/node",
            dataType: "json",
            data: {
                date: date,
            },
            success: function (data) {
                if (data.success) {
                    data = data.data;
                    var html_text = "";
                    data.forEach(function (item) {
                        html_text += `<tr><th>${item.node_id}</th><th>${item.node_name}</th><th>${item.traffic}</th></tr>`;
                    })
                    $('#node_traffic_text').html(html_text);
                } else {
                    console.log(data.error)
                }
            }
        })
    }

    function getUserTraffic(date) {
        $.ajax({
            type: "GET",
            url: "/admin/api/analytics/userTraffic",
            dataType: "json",
            data: {
                date: date,
            },
            success: function (data) {
                if (data.success) {
                    data = data.data;
                    var html_text = "";
                    data.forEach(function (item) {
                        html_text += `<tr><th>${item.user_id}</th><th>${item.user_name}</th><th>${item.email}</th><th>${item.traffic}</th></tr>`;
                    })
                    $('#user_traffic_text').html(html_text);
                } else {
                    console.log(data.error)
                }
            }
        })
    }

    function getNewUsers(date) {
        $.ajax({
            type: "GET",
            url: "/admin/api/analytics/new_users",
            dataType: "json",
            data: {
                date: date,
            },
            success: function (data) {
                console.log(data.ret);
                if (data.success) {
                    data = data.data;
                    var html_text = `Today a new user???${data.today}<br>Yesterday a new user???${data.yesterday}<br>This week the user???${data.thisWeek}<br>Last week a user???${data.lastWeek}<br>This month a new user???${data.thisMonth}<br>Last month a new user???${data.lastMonth}`;
                    $('#newusers_text').html(html_text);
                } else {
                    console.log(data.error)
                }
            }
        })
    }

    function getRefUserCount(type) {
        $.ajax({
            type: "GET",
            url: "/admin/api/analytics/ref_user_count",
            dataType: "json",
            data: {
                type: type,
            },
            success: function (data) {
                if (data.success) {
                    data = data.data;
                    var html_text = "";
                    data.forEach(function (item) {
                        html_text += `<tr><th>${item.user_id}</th><th>${item.user_name}</th><th>${item.email}</th><th>${item.ref_buy_count}people</th></tr>`;
                    })
                    $('#ref_user_count').html(html_text);
                } else {
                    console.log(data.error)
                }
            }
        })
    }

    function getRefMoneyCount(type) {
        $.ajax({
            type: "GET",
            url: "/admin/api/analytics/ref_money_count",
            dataType: "json",
            data: {
                type: type,
            },
            success: function (data) {
                if (data.success) {
                    data = data.data;
                    var html_text = "";
                    data.forEach(function (item) {
                        html_text += `<tr><th>${item.user_id}</th><th>${item.user_name}</th><th>${item.email}</th><th>???${item.ref_get_count}</th></tr>`;
                    })
                    $('#ref_money_count').html(html_text);
                } else {
                    console.log(data.error)
                }
            }
        })
    }

    function getOrderDetail() {
        $.ajax({
            type: "GET",
            url: "/admin/api/analytics/get_order_detail",
            dataType: "json",
            success: function (data) {
                if (data.success) {
                    data = data.data;
                    var html_text = `Today, the total order:${data.today_all}<br>Today's successful order:${data.today_success}<br>`+
                        `Successful order yesterday???${data.yesterday_success}<br>This week the order success???${data.week_success}<br>`+
                        `Successful orders this month???${data.month_success}<br>Order successfully last month???${data.last_month_success}`;
                    $('#order_text').html(html_text);
                } else {
                    console.log(data.error)
                }
            }
        })
    }
    function getTicketDetail() {
        $.ajax({
            type: "GET",
            url: "/admin/api/analytics/get_ticket_detail",
            dataType: "json",
            success: function (data) {
                if (data.success) {
                    data = data.data;
                    var html_text = `open???${data.open}<br>Today the repair order???${data.today_success}<br>`+
                        `Yesterday the repair order???${data.yesterday_success}<br>This week the repair order???${data.week_success}<br>`+
                        `This month the repair order???${data.month_success}<br>YueGong single???${data.last_month_success}`;
                    $('#ticket_text').html(html_text);
                } else {
                    console.log(data.error)
                }
            }
        })
    }

    String.prototype.replaceAll = function (stringToFind, stringToReplace) {
        if (stringToFind === stringToReplace) return this;
        var temp = this;
        var index = temp.indexOf(stringToFind);
        while (index != -1) {
            temp = temp.replace(stringToFind, stringToReplace);
            index = temp.indexOf(stringToFind);
        }
        return temp;
    };

    var date = new Date();
    date = date.toLocaleDateString();
    date = date.replaceAll('/','-');
    getIncome(date);
    getNewUsers(date);
    getNodeTraffic();
    getUserTraffic();
    getRefUserCount('today');
    getRefMoneyCount('today');
    getOrderDetail();
    getTicketDetail();
</script>
{/literal}
