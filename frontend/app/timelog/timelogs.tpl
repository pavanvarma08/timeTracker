
<navigation class="row"></navigation>
<div class="container">

    <div class="row text-center text-capitalize">
        <h1><p class="bg-primary">Timelog</p></h1>
        </div>
    <div class="row">
        <timelog-form class="row"></timelog-form>

        <div class="col-xs-12 text-center" ng-if="!vm.hasTimelog()">
            <div class="alert alert-info" role="alert">
                <h4>Nothing here</h4>
                <p>Come back later</p>
            </div>
        </div>
    </div>


    <div class="form-group pull-right col-xs-4"><input type="text" id="myInput" class="search form-control" ng-change="vm.myFunction()" ng-model="value" placeholder="Search for names.."/>
    </div>
    <div class="col-xs-6 text-right">
        <h1>Timelogs  </h1>
    </div>


    <table id="myTable" class="table table-striped table-bordered">
        <thead class="thead-inverse">
        <tr>
            <th> Activity Title </th>
            <th> Date</th>
            <th> Time</th>
        </tr>
        </thead>
        <tbody>

        <tr ng-repeat="timelogs in vm.timelogs" data="timelogs" >

            <td> {{timelogs.title}}</td>
            <td> {{timelogs.date}} </td>
            <td> {{timelogs.time}}</td>

        </tr>
        </tbody>
    </table>
</div>