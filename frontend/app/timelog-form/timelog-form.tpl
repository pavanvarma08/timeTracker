<form name="vm.activityForm" ng-submit="vm.sendTimelog(vm.date, vm.time, vm.adminID)" class="panel panel-default">
    <div class="panel-body">
        <div class="form-group">

            <label class="col-md-4 control-label" for="date">Date</label>
            <input id="date" name="date" class="form-control" ng-model="vm.date" type="date" >
        </div>
        <div class="form-group">

            <label class="col-md-4 control-label" for="time">time</label>
            <input id="time" name="time" class="form-control" ng-model="vm.time" type="time" placeholder="hours worked" autocomplete="off" required = " ">
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="activityID">Activity ID</label>
            <textarea id="activityID" name="activityID" class="form-control" ng-model="vm.activityID" placeholder="activityID" required=""></textarea>
        </div>
    </div>

    <div class="panel-footer text-right">
        <button type="submit" class="btn btn-xs btn-success">Submit</button>

    </div>
</form>

