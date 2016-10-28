/**
 * Created by Alex on 27/10/2016.
 */
/**
 * Created by Alex on 25/10/2016.
 */
<form name="viewModel.ActivityForm" ng-submit="viewModel.onSubmit(viewModel.ActivityID, viewModel.AdminID, viewModel.UserID, viewModel.ActivityName, viewModel.ActivityDescription,viewModel.DateCreated, viewModel.TimeLoggedIn, viewModel.TimeLoggedOut)" class="panel panel-default">
    <div class="panel-body">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="name" name="name" class="form-control" ng-model="viewModel.ActivityName" type="text" placeholder="The name of your activity ..." autocomplete="off" required>
        </div>

        <div class="form-group">
            <label for="text">Description</label>
            <textarea id="description" name="description" class="form-control" ng-model="viewModel.ActivityDescription" placeholder="The description of your activity ..." required></textarea>
        </div>
    </div>

    <div class="panel-footer text-right">
        <button type="submit" class="btn btn-xs btn-success">Submit</button>
        <button type="reset" class="btn btn-xs btn-default" ng-click="viewModel.onReset()">Reset</button>
    </div>
</form>
