<div class="container">
    <navigation class="row"> </navigation>

    <div class="form-group">
    <label for="repeatSelect"> Activities </label>
    <select name="repeatSelect" id="repeatSelect" ng-model="data">

        <option ng-repeat="activity in vm.activities" value="{{activity.title}}">{{activity.title}}</option>
    </select>
</div>
<div class="form-group">



    <!--div ng-switch on="vm.isEditingActivity">
        <div class="panel panel-default" ng-switch-when="false">
            <div class="panel-heading">

                <h3 class="panel-title pull-left">{{vm.data.title}} </h3>

                <div class="clearfix"></div>
            </div>
            <div class="panel-body">{{vm.data.description}}</div>

        </div>

        <timelog-form ng-switch-when="true" data="vm.data" on-submit="vm.submitEditedTimelog" on-reset="vm.resetEditedTimelog"></timelog-form>

    </div-->

</div>


