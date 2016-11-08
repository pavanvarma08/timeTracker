<div ng-switch on="vm.isEditingUser">
    <div class="panel panel-default" ng-switch-when="false">
        <div class="panel-heading">

            <div class="pull-right">
                <a ng-click="vm.editUser()" class="btn btn-xs btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                <a ng-click="vm.removeUser()" class="btn btn-xs btn-danger">

                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                </a>
            </div>

            <div class="clearfix"></div>
        </div>
        <div class="panel-body">{{vm.data.username}}</div>
        <div class="panel-body">{{vm.data.password}}</div>
        <div class="panel-body">{{vm.data.firstname}}</div>
        <div class="panel-body">{{vm.data.lastname}}</div>
        <div class="panel-body">{{vm.data.adminCheck}}</div>

    </div>

    <user-form ng-switch-when="true" data="vm.data" on-submit="vm.submitEditedUser" on-reset="vm.resetEditedUser"></user-form>
</div>
