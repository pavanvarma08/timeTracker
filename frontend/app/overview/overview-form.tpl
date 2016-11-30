
<div class="container">
    <navigation class="row"></navigation>

    <div class="text-center">
        <h1> <p class="bg-primary"> OVERVIEW </p></h1>
    </div>

    <div class="row">
        <div class="col-xs-3">


        </div>
        <div class="col-xs-6">
<div class="panel panel-default">
<form name="vm.overviewForm" ng-submit="vm.viewAdmin(vm.userId)" class="form-horizontal">
    <div class="panel-body ">
        <div class="form-group">
            <label  for="activityID"> Activities Title </label>
            <select name="activityID" id="activityID" ng-model="vm.activityID">
                <option value=" 1 is Not null">ALL</option>
                <option ng-repeat="activity in vm.activities"  value="{{activity.activityID}}">{{activity.title}}</option>
            </select>
        </div>
       <div class="form-group">
           <div class="text-center">
           <h3> <p class="bg-info"> Search for particular user </p> </h3>
           </div>
            <label  class="col-sm-4 control-label" for="userId"> User List </label>
           <div class="col-sm-5 -align-center">
            <select name="userId" id="userId" ng-model="vm.userId">
                <!--option value=" 1 is Not null">ALL</option-->
                <option ng-repeat="user in vm.users" value="{{user.userId}}">{{user.username}}</option>
            </select>
           </div>
        </div>

    </div>
    <h1>{{vm.userId}} {{vm.activityID}}</h1>
        <div class="panel-footer text-center">
            <button type="submit" class="btn btn-xs btn-success">Submit</button>
            <button type="reset" class="btn btn-xs btn-default" ng-click="vm.onReset()">Reset</button>
        </div>
</form>
</div>
        </div>
        <div class="col-xs-3">

        </div>
    </div>
{{vm.overview}}


<div class="col-xs-12 text-center">
<h1><p class="bg-success"> Advanced Search</p></h1>
</div>
<div class="row">
<table id="myTable" class="table table-striped table-bordered">
    <thead class="thead-inverse">
    <tr>
        <th> ActivityID </th>
        <th>UserID</th>
        <th> Date</th>
        <th> Time</th>

    </tr>
    </thead>
    <tbody>


    <tr ng-repeat="timelog in vm.overview" data="overview" >

        <td> {{timelog.activityID}} </td>
        <td> {{timelog.userID}}</td>
        <td> {{timelog.date}} </td>
        <td> {{timelog.time}}</td>

    </tr>
    </tbody>
</table>

</div>

    <div class="text-center">
        <h1> <p class="bg-warning"> overall data</p></h1>

    </div>

    <div class="row">

    <table id="myTable1" class="table table-striped table-bordered">
    <thead class="thead-inverse">
    <tr>
        <th> ActivityID </th>
        <th>UserID</th>
        <th> Date</th>
        <th> Time</th>

    </tr>
    </thead>
    <tbody>


    <tr ng-repeat="timelog in vm.timelogs" data="timelogs" >

        <td> {{timelog.activityID}} </td>
        <td> {{timelog.userID}}</td>
        <td> {{timelog.date}} </td>
        <td> {{timelog.time}}</td>

    </tr>
    </tbody>
</table>
</div></div>