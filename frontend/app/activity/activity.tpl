
<div ng-switch on="vm.isEditingActivity">
    <div class="panel panel-default" ng-switch-when="false">
        <div class="panel-heading">

            <h3 class="panel-title pull-left">{{vm.data.title}} </h3>
            <div class="pull-right">
                <a ng-click="vm.editActivity()" class="btn btn-xs btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                <a ng-click="vm.removeActivity()" class="btn btn-xs btn-danger">

                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                </a>
            </div>

            <div class="clearfix"></div>
        </div>
        <div class="panel-body">{{vm.data.description}}

        </div>
            </div>

            <activity-form ng-switch-when="true" data="vm.data" on-submit="vm.submitEditedActivity" on-reset="vm.resetEditedActivity"></activity-form>
        </div>
