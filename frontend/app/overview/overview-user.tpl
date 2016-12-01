<div class="container">
    <navigation class="row"></navigation>

    <!--<div class="text-center">-->
        <!--<h1> <p class="bg-primary"> OVERVIEW </p></h1>-->
    <!--</div>-->


    <div class="text-right">
        <h1> <b>{{vm.hello.username}}</b></h1></div>


    <div class="row">
        <div class="col-xs-3"></div>
        <div class="col-xs-6">
            <!--div class="panel panel-default">
<form name="vm.overviewUser" ng-submit="vm.viewUser(vm.title)" class="form-horizontal">
    <div class="panel-body ">
    <div class="row">
        <div class="form-group">
            <label  for="title"> Activities Title </label>
            <select name="title" id="title" ng-model="vm.title">
                <option ng-repeat="activity in vm.activities" value="{{activity.title}}">{{activity.title}}</option>
            </select>
        </div>
    </div>
    </div>
        <div class="panel-footer text-center">
        <div class="text right">
            <button type="submit" class="btn btn-xs btn-success">Submit</button>
            <button type="reset" class="btn btn-xs btn-default" ng-click="vm.onReset()">Reset</button>
        </div>
        </div>
</form>
            </div-->
        </div>
            <div class="col-xs-3">

            </div>

    </div>


    <!--div class="col-xs-12 text-center">
        <h1><p class="bg-success"> Ongoing Activities</p></h1>
    </div>
    <div class="row">
        <table id="myTable1" class="table table-striped table-bordered">
            <thead class="thead-inverse">
            <tr>
                <th> Activity Title </th>
                <th> Date</th>
                <th> Time</th>

            </tr>
            </thead>
            <tbody>

            <tr ng-repeat="timelog in vm.overview" data="overview" >
                <td> {{timelog.title}} </td>
                <td> {{timelog.date}} </td>
                <td> {{timelog.time}}</td>



            </tr>
            </tbody>
        </table>
    </div-->


    <div class="col-xs-12 text-center">
        <h1><p class="bg-success"> Completed Activities</p></h1>
    </div>

    <div class="form-group pull-right col-xs-4"><input type="text" id="myInput" class="search form-control" ng-change="vm.myFunction()" ng-model="value" placeholder="Search for names.."/>
    </div>
    <div class="row">
        <table id="myTable" class="table table-striped table-bordered">
            <thead class="thead-inverse">
            <tr>
                <th> Activity Title </th>
                <th> Date</th>
                <th> Time</th>

            </tr>
            </thead>
            <tbody>

            <tr ng-repeat="log in vm.logs" data="logs" >
                <td> {{log.title}}</td>
                <td> {{log.date}} </td>
                <td> {{log.time}}</td>
            </tr>
            </tbody>
        </table>
    </div>



</div>

