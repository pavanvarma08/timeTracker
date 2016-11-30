<div class="container">

    <navigation class="row"></navigation>
<div class="text-center">
    <h1><p class="bg-info">New Employee Details</p></h1>
</div>
    <!--adminnavigation class="row"></adminnavigation-->


    <div class="row">
        <user-form class="col-xs-12"></user-form>

        <div class="col-xs-12 text-center" ng-if="!vm.hasUsers()">
            <div class="alert alert-info" role="alert">
                <h4>Please populate users list</h4>
                <p>There are no users yet.</p>
            </div>
        </div>
    </div>

    <!--div class="row">
       <user class="col-xs-6" ng-repeat="user in vm.users" data="user"></user>
   </div-->

    <div class="form-group pull-right col-xs-4"><input type="text" id="myInput" class="search form-control" ng-change="vm.myFunction()" ng-model="value" placeholder="Search for names.."/>
    </div>
    <div class="col-xs-6 text-right" >
        <h1>Users List</h1>
    </div>

<table id="myTable" class="table table-striped table-bordered">
    <thead class="thead-inverse">
    <tr>
        <th> Username</th>
        <th> Firstname</th>
        <th> Lastname </th>
        <th> Change</th>
    </tr>
    </thead>
    <tbody>

    <tr ng-repeat="user in vm.users" data="user" >

        <td> {{user.username}} </td>
        <td> {{user.firstname}}</td>
        <td> {{user.lastname}}</td>
        <td>
{{user.userId}}
            {{user.username}}
            <a ng-click="vm.editUser()" class="btn btn-xs btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"> </i></a><a ng-click="vm.removeUser()" class="btn btn-xs btn-danger">

            <i class="fa fa-trash-o" aria-hidden="true"></i>
        </a></td>
        <div ng-switch on="vm.isEditingUser">
            <user-form ng-switch-when="true" data="vm.data" on-submit="vm.submitEditedUser" on-reset="vm.resetEditedUser"></user-form>
        </div>
    </tr>



    </tbody>
</table>
    <div class="row">
        <user class="col-xs-6" ng-repeat="user in vm.users" data="user"></user>
    </div>

</div>



<!--div class="row">
    <user class="col-xs-6" ng-repeat="user in vm.users" data="user"></user>
</div-->
<!--div class="input-group"> <span class="input-group-addon">Filter</span>

    <input id="filter" type="text" class="form-control" placeholder="Type here...">
</div>
    <table class="table table-striped">
        <thead>
        <tr>
            <th> Username</th>
            <th> Firstname</th>
            <th> Lastname </th>
        </tr>
        </thead>
        <tbody>
        <tr ng-repeat="user in vm.users" data="user" >
            <td> {{user.username}} </td>
            <td> {{user.firstname}}</td>
            <td> {{user.lastname}}</td>
        </tr>
        </tbody>
    </table>

</div-->

<!--div class="form-group pull-right">
    <input type="text" class="search form-control" placeholder="What you looking for?">
</div>
<span class="counter pull-right"></span>
<table class="table table-hover table-bordered results">
    <thead>
    <tr>
        <th class="col-md-5 col-xs-5">Username</th>
        <th class="col-md-4 col-xs-4">Firstname</th>
        <th class="col-md-3 col-xs-3">Lastname</th>
    </tr>
    <tr class="warning no-result">
        <td colspan="4"><i class="fa fa-warning"></i> No result</td>
    </tr>
    </thead>
    <tbody>
    <tr ng-repeat="user in vm.users" data="user" >
        <td> {{user.username}} </td>
        <td> {{user.firstname}}</td>
        <td> {{user.lastname}}</td>
    </tr>

    </tbody>
</table-->