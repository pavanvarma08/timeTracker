/**
 * Created by Alex on 25/10/2016.
 */
<div class="container">
    <AcivityNavigation class="row"></ActivityNavigation>

    <div class="row">
    <Activity-Form class="col-xs-12"></Activity-Form>

    <div class="col-xs-12 text-center" ng-if="!viewModel.hasActivities()">
    <div class="alert alert-info" role="alert">
    <h4>Oh no!</h4>
<p>There are no activities yet.</p>
</div>
</div>
</div>

<div class="row">
    <note class="col-xs-6" ng-repeat="Activity in viewModel.Activities" ActivityData="Activity"></Activity>
    </div>
    </div>
