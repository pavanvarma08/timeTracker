<nav class="navbar navbar-default navbar-fixed-top " style="background: black" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbarCollapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" ng-href="#/info">Timetracker</a>
        </div>

        <div class="collapse navbar-collapse navbarCollapse">
            <ul class="nav navbar-nav navbar-right">


                <li ><a ng-href="#/timelogs">Timelog</a></li>
                <li><a ng-href="#/users"></a></li>
                <li><a ng-href="">Overview</a></li>
                <li><a ng-href="#/">Logout</a></li>



            </ul>
        </div>
    </div>
</nav>


<div class="container">

    <div class="row">
        <h1><p class="bg-primary">Timelog</p></h1>
        </div>
    <div class="row">
        <timelog-form class="row"></timelog-form>

        <div class="col-xs-12 text-center" ng-if="!vm.hasTimelog()">
            <div class="alert alert-info" role="alert">
                <h4>Nothing here</h4>
                <p>Come back later</p>
            </div>
        </div>
    </div>


    <!--div class="form-group">
        <label for="repeatSelect"> Activities </label>
        <select name="repeatSelect" id="repeatSelect" ng-model="data">

            <option ng-repeat="activity in vm.activities" value="{{activity.title}}">{{activity.title}}</option>

        </select>

    </div-->

    <!--div class="row">
        <timelog class="col-xs-6" ng-repeat="activity in vm.timelogs" data="timelog"></timelog>
    </div-->
</div>