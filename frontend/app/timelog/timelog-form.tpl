<form name="vm.timelogForm" ng-submit="vm.sendTimeLog(vm.date, vm.time, vm.activityID)" class="panel panel-default">
    <div class="panel-body">


        <!--div class="form-group">
            <label for="repeatSelect"> Activities </label>
            <select name="repeatSelect" id="repeatSelect" ng-model="data">

                <option ng-repeat="activity in vm.activities" value="{{activity.title}}">{{activity.title}}</option>
            </select>
        </div-->

        <div class="form-group">

            <label class="col-md-4 control-label" for="date">Date</label>
            <input id="date" name="date" class="form-control" ng-model="vm.date" type="date" >
        </div>
        <div class="form-group">

            <label class="col-md-4 control-label" for="time">time</label>
            <input id="time" name="time" class="form-control" ng-model="vm.time" type="number" placeholder="hours worked" autocomplete="off" required = " ">
        </div>
        <div class="form-group">

            <select name="activityID" id="activityID" ng-model="data">

                <option ng-repeat="activity in vm.activities" value="{{activity.activityID}}">{{activity.activityID}}</option>
            </select>
        </div>
        <!--div class="form-group">
            <label class="col-md-4 control-label" for="activityID">Activity ID</label>
            <input id="activityID" name="activityID" class="form-control" ng-model="vm.activityID" type="number" placeholder="activityID" required="">
        </div-->
    </div>

    <div class="panel-footer text-right">
        <button type="submit" class="btn btn-xs btn-success">Submit</button>

        <button type="reset" class="btn btn-xs btn-default" ng-click="vm.onReset()">Reset</button>
    </div>
</form>

