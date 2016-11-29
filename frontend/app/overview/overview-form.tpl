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
            <select name="userId" id="userId" ng-model="vm.userId">
                <!--option value=" 1 is Not null">ALL</option-->
                <option ng-repeat="user in vm.users" value="{{user.userId}}">{{user.username}}</option>
            </select>
        </div>

        <!--div class="form-group">
            <label for="date">Date</label>
            <input id="date" name="date" class="form-control" ng-model="vm.date" type="date" >
        </div-->
</div>

    </div>

    <h1>{{vm.userId}} {{vm.activityID}}</h1>



        <div class="panel-footer text-center">
            <button type="submit" class="btn btn-xs btn-success">Submit</button>
            <button type="reset" class="btn btn-xs btn-default" ng-click="vm.onReset()">Reset</button>
        </div>
</form>
</div>


<div class="col-xs-6 text-right">
    <h1>Timelogs</h1>
</div>

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
<h1>{{vm.overview}}</h1>

{{vm.data.activityID}}
    <tr ng-repeat="overview in vm.overview" data="overview" >

        <td> {{vm.overview1}}</td>
        <td> {{overview.userId}}</td>
        <td> {{vm.overview2}} </td>
        <td> {{overview.time}}</td>

    </tr>
    </tbody>
</table>
</div>
