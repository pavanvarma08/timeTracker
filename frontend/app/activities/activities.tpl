<div class="container">
    <navigation class="row"></navigation>

    <!--<div class="text-center">-->
        <!--<h1><p class="bg-primary">ACTIVITY</p></h1>-->
    <!--</div>-->
    <div class="row">

<div class="text-center">
    <h1> Welcome  <b>{{vm.hello.username}}</b></h1></div>
        <div class="col-xs-3"></div>
        <activity-form class="col-xs-6"></activity-form>
        <div class="col-xs-3"></div>
<h1>
    </h1>

        <div class="col-xs-12 text-center" ng-if="!vm.hasActivities()">
            <div class="alert alert-info" role="alert">
                <h4>Please populate activities list</h4>
                <p>There are no activities yet.</p>
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
        <activity class="col-xs-6" ng-repeat="activity in vm.activities" data="activity"></activity>
    </div-->
    <div class="row">
    <div class="form-group pull-right col-xs-4"><input type="text" id="myInput" class="search form-control" ng-change="vm.myFunction()" ng-model="value" placeholder="Search for names.."/>
    </div>
    </div>
    <!--<div class="col-xs-6 text-right" >-->
        <!--<h1>Activities List</h1>-->
    <!--</div>-->
    <div class="row">
    <div class="col-xs-3"></div>
    <div class="col-xs-6">

    <table id="myTable" class="table table-striped">
        <thead>
        <tr>
            <th> Title</th>
            <th> Description</th>
        </tr>
        </thead>
        <tbody>
        <tr ng-repeat="activity in vm.activities" data="activity" >
            <td> {{activity.title}} </td>
            <td> {{activity.description}}</td>
        </tr>
        </tbody>
    </table>

    </div>
    </div>

    <div class="row">
        <activity class="col-xs-6" ng-repeat="activity in vm.activities" data="activity"></activity>
    </div>
</div>