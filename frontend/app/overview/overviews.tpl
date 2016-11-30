<div class="container">
    <navigation class="row"></navigation>
    <div class="row" >
        <div class="col-xs-12"></div>

    </div>

    <div class="row">
        <div class="col-xs-12">

            <h1>testing</h1>
        </div>

    </div>
    <div class="row">
        <overview-form class="col-xs-6"> </overview-form>

        <div class="col-xs-12 text-center" ng-if="!vm.hasTimelog()">
            <div class="alert alert-info" role="alert">
                <h4>Oh no!</h4>
                <p>There are no Timelogs yet.</p>
            </div>
        </div>
    </div>


    <table id="myTable" class="table table-striped table-bordered">
        <thead class="thead-inverse">
        <tr>
            <th> ActivityID </th>
            <th>UserID</th>
            <th> Date</th>
            <th> Time</th>

        </tr>
        </thead>
        <tbody>
<<<<<<< HEAD


        <tr ng-repeat="timelog in vm.overview" data="overview" >

            <td> {{timelog.activityID}}</td>
            <td> {{timelog.userID}}</td>
            <td> {{timelog.date}} </td>
            <td> {{timelog.time}}</td>
=======
        {{vm.overview}}
        <tr ng-repeat="overview in vm.overview" data="overview" >

            <td> {{overview.activityID}}</td>
            <td> {{overview.userId}}</td>
            <td> {{overview.date}} </td>
            <td> {{overview.time}}</td>
>>>>>>> df36648afe354889fd7c1bb9d304bcd72a4a44c8

        </tr>
        </tbody>
    </table>
</div>
