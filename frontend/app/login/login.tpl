
<!--<div class="..." ng-controller="loginController" data-ng-init="reset()">
    <h3>Login or <a ui-sref="user-registration">Sign up</a></h3>
</div>
    <div class="...">
        <div class="col-xs-12 col-sm-6">
            <input type="text" class="..." placeholder="email address" ng-model="user.username" auto-focus>
            <input type="password" class="..." placeholder="Password" ng-model="user.password" my-enter="login()">

            <span class="..." ng-if="!firstAttempt">Invalid username or password</span>
            <span class="..." ng-if="firstAttempt"></span>

            <button class="..." ng-click="login()">Login</button>
        </div>
    </div>-->

<!--<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <h3>Login</h3>
            <hr>
        </div>
        <div class="col-xs-12 col-sm-6">
            <input type="text" class="..." placeholder="email address" ng-model="user.username" autofocus >
            <input type="password" class="..." placeholder="Password" ng-model="user.password" my-enter="login()">

        </div>
        <button ng-click="login()">Login</button>


    </div>
</div>-->
<form role="form" ng-submit="login()">
    <div class="col-xs-6">
    <div class="form-group">
        <label for="username">Username:</label> <input type="text"
                                                       class="form-control" id="username" name="username" ng-model="username" placeholder="username"/>

        </div>
    <div class="form-group">
        <label for="password">Password:</label> <input type="password"
                                                       class="form-control" id="password" name="password" ng-model="password" placeholder="password"/>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</form>