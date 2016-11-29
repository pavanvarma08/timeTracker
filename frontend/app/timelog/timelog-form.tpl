<form name="vm.timelogForm" ng-submit="vm.sendTimeLog(vm.date, vm.time, vm.activityID)" class="form-horizontal">
    <div class="row">
        <div class="form-group">
            <label  for="activityID"> Activities Title </label>
            <select name="activityID" id="activityID" ng-model="vm.activityID">
                <option value=" 1 is Not null">ALL</option>
                <option ng-repeat="activity in vm.activities" value="{{activity.activityID}}">{{activity.title}}</option>
            </select>
        </div>
        <div class="form-group">

            <label for="date">Date</label>
            <input id="date" name="date" class="form-control" ng-model="vm.date" type="date" >
        </div>
        <div class="form-group">

            <label  for="time">time </label>
            <input id="time" name="time" class="form-control" ng-model="vm.time" type="number" placeholder="hours worked" autocomplete="off" required = " ">
        </div>
        <H1>{{vm.activityID}}</H1>
        <div class="text right">
            <button type="submit" class="btn btn-xs btn-success">Submit</button>

            <button type="reset" class="btn btn-xs btn-default" ng-click="vm.onReset()">Reset</button>
        </div>
    </div>
</form>

