<form name="vm.timelogForm" ng-submit="vm.sendTimeLog(vm.date, vm.time, vm.title, vm.check)" class="form-horizontal">
    <div class="row">
        <div class="form-group">
            <label  for="title"> Activities Title  </label>
            <select name="title" id="title" ng-model="vm.title">
                <option ng-repeat="activity in vm.activities" value="{{activity.title}}">{{activity.title}}</option>
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

        <div class="form-group">
            <label class="col-md-4 control-label" for="check">Check when done</label>
            <label class="switch">
                <input id="check" type="checkbox" name="check" class="form-control"
                       ng-model="vm.check"
                       ng-true-value="true"
                       ng-false-value="false"
                       ng-checked="checkbox == true" />
                <!--input  name="adminCheck" class="form-control" ng-model="vm.adminCheck" type='hidden' value='0' placeholder="Admin Check" required="">
                <input id="adminCheck" name="adminCheck" class="form-control" ng-model="vm.adminCheck" type="checkbox" value='1' placeholder="Admin Check" required=""-->
                <div class="slider round"></div>    <H1>{{vm.check}}</H1>
            </label>

            <!--input id="adminCheck" name="adminCheck" class="form-control" ng-model="vm.adminCheck" type="checkbox" placeholder="Admin Check" required=""-->
        </div>

        <!--<div class="form-group">-->
            <!--<label for="check"> Check when done</label>-->
            <!--<input id="check" name="check" class="form-control" ng-model="vm.check" type="checkbox" autocomplete="off">-->

        <!--</div>-->

        <div class="text right">
            <button type="submit" class="btn btn-xs btn-success">Submit</button>

            <button type="reset" class="btn btn-xs btn-default" ng-click="vm.onReset()">Reset</button>
        </div>
    </div>
</form>

