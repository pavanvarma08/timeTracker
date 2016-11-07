<div class="container">
<navigation class="row"> </navigation>

<div ng-switch on="vm.isEditingActivity">
    <div class="panel panel-default" ng-switch-when="false">
        <div class="panel-heading">

            <h3 class="panel-title pull-left">{{vm.data.title}} </h3>

            <div class="clearfix"></div>
        </div>
        <div class="panel-body">{{vm.data.description}}</div>

        <form name="vm.activityForm" ng-submit="vm.sendTimelog(vm.date, vm.time, vm.adminID)" class="panel panel-default">
            <div class="panel-body">
                <div class="form-group">

                    <label class="col-md-4 control-label" for="date">Date</label>
                    <input id="date" name="date" class="form-control" ng-model="vm.date" type="text" >
                </div>
                <div class="form-group">

                    <label class="col-md-4 control-label" for="time">time</label>
                    <input id="time" name="time" class="form-control" ng-model="vm.time" type="text" placeholder="hours worked" autocomplete="off" required = " ">
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
    </div>

    <activity-form ng-switch-when="true" data="vm.data" on-submit="vm.submitEditedActivity" on-reset="vm.resetEditedActivity"></activity-form>


        <div class="container-fluid">

            <div class="row">
                <div class="col-md-7 ">

                    <div class="form-group ">
                        <div class="container">
                            <input type="date">
                        </div>


                    </div>


                </div>
                <div class="col-md-2">

                    <div class="form-group">
                        <input id="title" name="title" class="form-control" ng-model="vm.title" type="title" placeholder="hours worked" autocomplete="off" required = " ">

                    </div>

                </div>
                <div class="col-md-3">

                    <div class="form-group">
                        <button type="submit" class="btn btn-xs btn-success">Submit</button>
                    </div>


                </div>

</div>
            </div>
            </div>


</div>


            <!--form name="vm.activityForm" ng-submit="vm.sendTimelog(vm.date, vm.time, vm.adminID)" class="panel panel-default">
                <div class="panel-body">
                    <div class="form-group">

                        <label class="col-md-4 control-label" for="date">Date</label>
                        <input id="date" name="date" class="form-control" ng-model="vm.date" type="text" >
                    </div>
                    <div class="form-group">

                        <label class="col-md-4 control-label" for="time">time</label>
                        <input id="time" name="time" class="form-control" ng-model="vm.time" type="number" placeholder="hours worked" autocomplete="off" required = " ">
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="activityID">Activity ID</label>
                        <textarea id="activityID" name="activityID" class="form-control" ng-model="vm.activityID" placeholder="activityID" required=""></textarea>
                    </div>
                </div>

                <div class="panel-footer text-right">
                    <button type="submit" class="btn btn-xs btn-success">Submit</button>

                </div>
            </form-->