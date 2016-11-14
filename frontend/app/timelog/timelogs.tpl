<div class="container">
    <navigation class="row"></navigation>

    <div class="row">
        <timelog-form class="col-xs-12"></timelog-form>

        <div class="col-xs-12 text-center" ng-if="!vm.hasTimelog()">
            <div class="alert alert-info" role="alert">
                <h4>Nothing here</h4>
                <p>Come back later</p>
            </div>
        </div>
    </div>


    <!--div class="form-group">
        <label for="repeatSelect"> Activities </label>
        <select name="repeatSelect" id="repeatSelect" ng-model="data">

            <option ng-repeat="activity in vm.activities" value="{{activity.title}}">{{activity.title}}</option>

        </select>

    </div-->

    <!--div class="row">
        <timelog class="col-xs-6" ng-repeat="activity in vm.timelogs" data="timelog"></timelog>
    </div-->
</div>