<div class="container">
    <navigation class="row"></navigation>


    <div class="panel-body">
          <div class="form-group">

          <label class="col-md-4 control-label" for="adminID">Activity User</label>
                    <input id="UserID" name="adminID" class="form-control" ng-model="vm.UserID" type="title" placeholder="User of activity" autocomplete="off" required = " ">
                </div>
            <div class="form-group">

      <label class="col-md-4 control-label" for="title">Activity title</label>
                <input id="title" name="title" class="form-control" ng-model="vm.title" type="title" placeholder="Title of activity" autocomplete="off" required = " ">
            </div>

            <div class="form-group">
      <label class="col-md-4 control-label" for="description">Activity Description</label>
                <textarea id="description" name="description" class="form-control" ng-model="vm.description" placeholder="The description of your activity ..." required=""></textarea>
            </div>
        </div>

        <div class="panel-footer text-right">
            <button type="submit" class="btn btn-xs btn-success">Submit</button>

            <button type="reset" class="btn btn-xs btn-default" ng-click="vm.onReset()">Reset</button>
        </div>
</div>