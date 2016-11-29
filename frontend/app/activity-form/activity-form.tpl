
<div class="panel panel-default">
<form name="vm.activityForm" ng-submit="vm.sendActivity(vm.adminID, vm.title, vm.description)" class="form-horizontal">
    <div class="panel-body ">
        <div class="form-group">

            <label class="col-sm-2 control-label" for="adminID">Activity admin</label>
            <div class ="col-sm-5">
            <input id="adminID" name="adminID" class="form-control" ng-model="vm.adminID" type="number" placeholder="Administrator of activity" autocomplete="off" required = " ">
            </div>
        </div>
        <div class="form-group">

            <label class="col-sm-2 control-label" for="title">Activity title</label>
            <div class="col-sm-5">
            <input id="title" name="title" class="form-control" ng-model="vm.title" type="text" placeholder="Title of activity" autocomplete="off" required = " ">
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label" for="description">Activity Description</label>
            <div class="col-sm-5">
            <textarea id="description" name="description" class="form-control" ng-model="vm.description" placeholder="The description of your activity ..." required=""></textarea>
            </div>
        </div>
    </div>
    <div class="panel-footer text-center">

        <button type="submit" class="btn btn-xs btn-success">Submit</button>
        <button type="reset" class="btn btn-xs btn-default" ng-click="vm.onReset()">Reset</button>

</div>
    </form>
    </div>



