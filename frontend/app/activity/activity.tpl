<div ng-switch on="vm.isEditingActivity">
    <div class="panel panel-default" ng-switch-when="false">
        <div class="panel-heading">
            <h3 class="panel-title pull-left">{{vm.data.title}}</h3>
            <div class="pull-right">
                <a ng-click="vm.editActivity()" class="btn btn-xs btn-info">Edit</a>
                <a ng-click="vm.removeActivity()" class="btn btn-xs btn-danger">Remove</a>
            </div>

            <div class="clearfix"></div>
        </div>
        <div class="panel-body">{{vm.data.text}}</div>
    </div>

    <note-form ng-switch-when="true" data="vm.data" on-submit="vm.submitEditedActivity" on-reset="vm.resetEditedNote"></note-form>
</div>