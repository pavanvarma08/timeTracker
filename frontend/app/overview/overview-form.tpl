<div class="container">
    <navigation class="row"></navigation>
    <div class="row"></div>
    <div class="col-xs-12">
    <div class="col-xs-7 text-right">
        <h1> <p class="text-primary"> OVERVIEW </p></h1>
    </div>
    <div class="col-xs-5 text-right">
        <h1>   <b>{{vm.hello.username}}</b></h1></div>
    </div>

    <div class="row">

        <div class="col-xs-3"></div>
        <div class="col-xs-6">
            <div class="col-xs-12"></div>

<form name="vm.overviewForm" ng-submit="vm.viewAdmin(vm.username)" class="form-horizontal">
       <div class="form-group">
           <div class="text-center">
           <!--<h3> <p class="bg-info"> Search for particular user </p> </h3>-->
           </div>
            <label  class="col-md-6 control-label" for="username"> User List </label>
           <div class="col-md-3">
            <select name="username" id="username" ng-model="vm.username">
                <option ng-repeat="user in vm.users" value="{{user.username}}">{{user.username}}</option>
            </select>
           </div>
           <div class="col-xs-3"><button type="submit" class="btn btn-xs btn-success">Submit</button> </div>
        </div>
</form>
</div>

    <div class="col-xs-6 text-center">
        <h1><p class="bg-success"> Completed</p></h1>


        <!--<div class="col-xs-6 text-right">-->
        <!--<h1>Timelogs</h1>-->
        <!--</div>-->
        <table id="myTable1" class="table table-striped table-bordered">
            <thead class="thead-inverse">
            <tr>
                <th> Activity Title </th>
                <th> Completed on </th>
                <th> Time Taken</th>

            </tr>
            </thead>
            <tbody>

            <tr ng-repeat="log in vm.logs" data="logs" >
                <td> {{log.title}}</td>
                <td> {{log.date}} </td>
                <td> {{log.time}}</td>
            </tr>
            </tbody>
        </table>


    </div>

    <div class="col-xs-6 text-center">
<h1><p class="bg-success"> Timelogs</p></h1>


<!--<div class="col-xs-6 text-right">-->
    <!--<h1>Timelogs</h1>-->
<!--</div>-->
<table id="myTable" class="table table-striped table-bordered">
    <thead class="thead-inverse">
    <tr>
        <th>Username</th>
        <th> Activity Title </th>
        <th> Date</th>
        <th> Time</th>

    </tr>
    </thead>
    <tbody>

    <tr ng-repeat="timelog in vm.overview" data="overview" >
        <td> {{timelog.username}}</td>
        <td> {{timelog.title}} </td>
        <td> {{timelog.date}} </td>
        <td> {{timelog.time}}</td>



    </tr>
    </tbody>
</table>


</div>






    <div class="col-xs-12 text-center">
        <h1> <p class="bg-warning"> Log data</p></h1>

    </div>

    <div class="row">

    <table id="myTable2" class="table table-striped table-bordered">
    <thead class="thead-inverse">
    <tr>
        <th>Username</th>
        <th> Activity Title</th>
        <th> Date</th>
        <th> Time</th>

    </tr>
    </thead>
    <tbody>


    <tr ng-repeat="timelog in vm.timelogs" data="timelogs" >

        <td> {{timelog.username}} </td>
        <td> {{timelog.title}}</td>
        <td> {{timelog.date}} </td>
        <td> {{timelog.time}}</td>

    </tr>
    </tbody>
</table>
</div></div>

</div>
</div>
