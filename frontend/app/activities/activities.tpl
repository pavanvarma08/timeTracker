<div class="container">
    <navigation class="row"></navigation>

    <div class="row">
        <activity-form class="col-xs-12"></activity-form>

        <div class="col-xs-12 text-center" ng-if="!vm.hasActivities()">
            <div class="alert alert-info" role="alert">
                <h4>Oh no!</h4>
                <p>There are no activities yet.</p>
            </div>
        </div>
    </div>

    <div class="row">
        <activity class="col-xs-6" ng-repeat="activity in vm.activities" data="activity"></activity>
    </div>
</div>