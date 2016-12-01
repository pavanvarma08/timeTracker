<nav class="navbar navbar-default navbar-fixed-top " style="background: black" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbarCollapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand">TimeTracker</a>
        </div>

        <div class="collapse navbar-collapse navbarCollapse">
            <ul class="nav navbar-nav navbar-right">





                <li ><a ng-href="#/activity"  ng-if="(vm.hasCookies() && vm.adminCheck == 'TRUE')">Activity</a></li>
                <li><a ng-href="#/users" ng-if="(vm.hasCookies() && vm.adminCheck == 'TRUE')">User Page</a></li>
                <li><a ng-href="#/overview" ng-if="(vm.hasCookies() && vm.adminCheck == 'TRUE')">Overview</a></li>
                <li ><a ng-href="#/timelogs"  ng-if="(vm.hasCookies() && vm.adminCheck == 'FALSE')">Timelog</a></li>
                <li><a ng-href="#/overviewUser"  ng-if="(vm.hasCookies() && vm.adminCheck == 'FALSE')">OverviewU</a></li>

                <!--<li><a href="#/" ng-if="!vm.hasCookies()"> LOGIN</a></li>-->
                <li  ng-if="vm.hasCookies()"><a type = "btn" ng-click="vm.logout()"> <b>LOGOUT</b></a></li>



            </ul>
        </div>
    </div>
</nav>
