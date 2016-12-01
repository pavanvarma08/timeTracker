<div class="container">
    <navigation class="row"></navigation>

    <div class="text-center">
        <h1> <p class="bg-primary"> OVERVIEW </p></h1>
    </div>

    <div class="row">
        <div class="col-xs-3"></div>
        <div class="col-xs-6">
<div class="panel panel-default">
<form name="vm.overviewForm" ng-submit="vm.viewAdmin(vm.username)" class="form-horizontal">
    <div class="panel-body ">
        <div class="form-group">
            <label  for="title"> Activities Title </label>
            <select name="title" id="title" ng-model="vm.title">
                <option ng-repeat="activity in vm.activities"  value="{{activity.title}}">{{activity.title}}</option>
            </select>
        </div>
       <div class="form-group">
           <div class="text-center">
           <h3> <p class="bg-info"> Search for particular user </p> </h3>
           </div>
            <label  class="col-sm-4 control-label" for="username"> User List </label>
           <div class="col-sm-5 -align-center">
            <select name="username" id="username" ng-model="vm.username">
                <option ng-repeat="user in vm.users" value="{{user.username}}">{{user.username}}</option>
            </select>
           </div>
        </div>

    </div>
    <h1></h1>

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
<div class="col-xs-6 text-right">
    <h1>Timelogs</h1>
</div>
<table id="myTable" class="table table-striped table-bordered">
    <thead class="thead-inverse">
    <tr>
        <th>Username</th>
        <th> Activity Title </th>
        <th> Date</th>
        <th> Time</th>

    </tr>
    </thead>
    <tbody>

    <tr ng-repeat="timelog in vm.overview" data="overview" >
        <td> {{timelog.username}}</td>
        <td> {{timelog.title}} </td>
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
        <th>Username</th>
        <th> Activity Title</th>
        <th> Date</th>
        <th> Time</th>

    </tr>
    </thead>
    <tbody>


    <tr ng-repeat="timelog in vm.timelogs" data="timelogs" >

        <td> {{timelog.username}} </td>
        <td> {{timelog.title}}</td>
        <td> {{timelog.date}} </td>
        <td> {{timelog.time}}</td>

    </tr>
    </tbody>
</table>
</div></div>

</div>
