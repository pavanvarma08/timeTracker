<!--script src="../user-form/user-form.controller.js"></script-->
<div class="container">
    <adminnavigation class="row"></adminnavigation>

    <div class="row">
        <user-form class="col-xs-12"></user-form>

        <div class="col-xs-12 text-center" ng-if="!vm.hasUsers()">
            <div class="alert alert-info" role="alert">
                <h4>Please populate users list</h4>
                <p>There are no users yet.</p>
            </div>
        </div>
    </div>

    <div class="row">
        <user class="col-xs-6" ng-repeat="user in vm.users" data="user"></user>
    </div>
</div>