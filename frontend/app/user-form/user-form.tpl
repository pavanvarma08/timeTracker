<form name="vm.userForm" ng-submit="vm.sendUser(vm.username, vm.password, vm.firstname, vm.lastname, vm.adminCheck)" class="panel panel-default">
    <div class="panel-body">

        <!--div class="form-group">
            <label class="col-md-4 control-label" for="userId">UserId</label>
            <input id="userId" name="userId" class="form-control" ng-model="vm.userId" type="number" placeholder="User of activity" autocomplete="off" required = " ">
        </div-->

        <div class="form-group">
            <label class="col-md-4 control-label" for="username">Username</label>
            <input id="username" name="username" class="form-control" ng-model="vm.username" type="text" placeholder="Name of user" autocomplete="off" required = " ">
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="password">Password</label>
            <input id="password" name="password" class="form-control" ng-model="vm.password" type="password" placeholder="Password of user" required="">
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="firstname">Firstname</label>
            <input id="firstname" name="firstname" class="form-control" ng-model="vm.firstname" type="text" placeholder="Firstname of user" required="">
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="lastname">Lastname</label>
            <input id="lastname" name="lastname" class="form-control" ng-model="vm.lastname" type="text" placeholder="Lastname of user" required="">
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="adminCheck">Admin Check</label>
            <label class="switch">
                <input id="adminCheck" type="checkbox" name="adminCheck" class="form-control"
                       ng-model="vm.adminCheck"
                       ng-true-value="true"
                       ng-false-value="false"
                       ng-checked="checkbox == true" />
                <!--input  name="adminCheck" class="form-control" ng-model="vm.adminCheck" type='hidden' value='0' placeholder="Admin Check" required="">
                <input id="adminCheck" name="adminCheck" class="form-control" ng-model="vm.adminCheck" type="checkbox" value='1' placeholder="Admin Check" required=""-->
                <div class="slider round"></div>
            </label>

            <!--input id="adminCheck" name="adminCheck" class="form-control" ng-model="vm.adminCheck" type="checkbox" placeholder="Admin Check" required=""-->
        </div>
        {{vm.password}}
        {{vm.adminCheck}}
    </div>

    <div class="panel-footer text-right">
        <button type="submit" class="btn btn-xs btn-success">Submit</button>

        <button type="reset" class="btn btn-xs btn-default" ng-click="vm.onReset()">Reset</button>
    </div>
</form>
