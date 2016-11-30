<<<<<<< HEAD

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
=======
<div class="panel panel-default">
<form name="vm.overviewForm" ng-submit="vm.viewAdmin(vm.userId)" class="form-horizontal">
    <div class="panel-body ">
    <div class="row">
        <div class="form-group">
            <label  for="activityID"> Activities Title </label>
            <select name="activityID" id="activityID" ng-model="vm.activityID">
                <!--option value=" 1 is Not null">ALL</option-->
                <option ng-repeat="activity in vm.activities"  value="{{activity.activityID}}">{{activity.title}}</option>
            </select>
        </div>

       <div class="form-group">
            <label  for="userId"> User List </label>
>>>>>>> df36648afe354889fd7c1bb9d304bcd72a4a44c8
            <select name="userId" id="userId" ng-model="vm.userId">
                <!--option value=" 1 is Not null">ALL</option-->
                <option ng-repeat="user in vm.users" value="{{user.userId}}">{{user.username}}</option>
            </select>
<<<<<<< HEAD
           </div>
        </div>

    </div>
    <h1>{{vm.userId}} {{vm.activityID}}</h1>
=======
        </div>

        <!--div class="form-group">
            <label for="date">Date</label>
            <input id="date" name="date" class="form-control" ng-model="vm.date" type="date" >
        </div-->
</div>

    </div>

    <h1>{{vm.userId}} {{vm.activityID}}</h1>



>>>>>>> df36648afe354889fd7c1bb9d304bcd72a4a44c8
        <div class="panel-footer text-center">
            <button type="submit" class="btn btn-xs btn-success">Submit</button>
            <button type="reset" class="btn btn-xs btn-default" ng-click="vm.onReset()">Reset</button>
        </div>
</form>
</div>
<<<<<<< HEAD
        </div>
        <div class="col-xs-3">

        </div>
    </div>
{{vm.overview}}


<div class="col-xs-12 text-center">
<h1><p class="bg-success"> Advanced Search</p></h1>
</div>
<div class="row">
=======


<div class="col-xs-6 text-right">
    <h1>Timelogs</h1>
</div>

>>>>>>> df36648afe354889fd7c1bb9d304bcd72a4a44c8
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
<<<<<<< HEAD


    <tr ng-repeat="timelog in vm.overview" data="overview" >

        <td> {{timelog.activityID}} </td>
        <td> {{timelog.userID}}</td>
        <td> {{timelog.date}} </td>
        <td> {{timelog.time}}</td>
=======
<h1>{{vm.overview}}</h1>

{{vm.data.activityID}}
    <tr ng-repeat="overview in vm.overview" data="overview" >

        <td> {{vm.overview1}}</td>
        <td> {{overview.userId}}</td>
        <td> {{vm.overview2}} </td>
        <td> {{overview.time}}</td>
>>>>>>> df36648afe354889fd7c1bb9d304bcd72a4a44c8

    </tr>
    </tbody>
</table>
<<<<<<< HEAD

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
=======
</div>
>>>>>>> df36648afe354889fd7c1bb9d304bcd72a4a44c8
