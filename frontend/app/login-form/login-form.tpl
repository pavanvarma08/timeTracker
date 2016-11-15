<h2 align="center" style="color-profile: white; background: navajowhite" >Activity Time Tracker Login</h2>
<div class="col-md-5">
<div style="width: 400px; margin: 200px auto 0 auto ">
<form name="vm.loginForm" ng-submit="vm.onSubmit(vm.username, vm.password)" >
    <div class="panel-body">
        <div class="form-group">

            <label class="col-md-4 control-label" for="username" style="color: #b9def0">username</label>
            <input type="text" name="username" id ="username" class="form-control" ng-model="vm.username" placeholder=" user/ Admin" autocomplete="off" required />
        </div>
        <div class="form-group">

            <label class="col-md-4 control-label" for="password"  style="color: #b9def0">password</label>
            <input id="password" name="password" class="form-control" ng-model="vm.password" type="password" placeholder="password " autocomplete="off" required/>
        </div>



        <button type="submit" class="btn btn-xs btn-success pull-right" style="color: black">Submit</button>


    </div>
</form>
</div>

</div>




<style>




/* CSS used here will be applied after bootstrap.css */

body {
background:

        url('/app/login-form/time2.jpg') no-repeat center center fixed;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
    opacity: 0.9;}

    img {
        opacity: 0.1;
    }


.panel-default {
opacity: 0.9;
margin-top:30px;
}
.form-group.last {
margin-bottom:0px;
}

</style>
