/**
 * Created by Alex on 25/10/2016.
 */
<div ng-switch on="viewModel.isEditingNote">
    <div class="panel panel-default" ng-switch-when="false">
    <div class="panel-heading">
    <h3 class="panel-title pull-left">{{viewModel.ActivityData.ActivityName}}</h3>
<div class="pull-right">
    <a ng-click="viewModel.editNote()" class="btn btn-xs btn-info">Edit</a>
    <a ng-click="viewModel.removeNote()" class="btn btn-xs btn-danger">Remove</a>
    </div>

    <div class="clearfix"></div>
    </div>
    <div class="panel-body">{{viewModel.ActivityData.text}}</div>
</div>

<note-form ng-switch-when="true" data="viewModel.ActivityData" on-submit="viewModel.submitEditedNote" on-reset="viewModel.resetEditedNote"></note-form>
    </div>
