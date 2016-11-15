<form name="vm.loginForm" ng-submit="vm.onSubmit(vm.username, vm.password)" class="panel panel-default">
    <div class="panel-body">
        <div class="form-group">

            <label class="col-md-4 control-label" for="username">USERNAME</label>
            <input type="text" name="username" id ="username" class="form-control" ng-model="vm.username" placeholder=" user/ Admin" autocomplete="off" required />
        </div>
        <div class="form-group">

            <label class="col-md-4 control-label" for="password">password</label>
            <input id="password" name="password" class="form-control" ng-model="vm.password" type="password" placeholder="password " autocomplete="off" required/>
        </div>

    </div>
    <div class="panel-footer text-right">
        <button type="submit" class="btn btn-xs btn-success">Submit</button>


    </div>
</form>
