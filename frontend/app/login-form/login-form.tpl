
<nav class="navbar navbar-default navbar-fixed-top " style="background: black" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbarCollapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" ng-href="#">TimeTracker</a>
        </div>

        <div class="collapse navbar-collapse navbarCollapse">

            <center>
                    <div class="navbar-collapse collapse" id="navbar-main">

                        <form class="navbar-form navbar-right" role="search" ng-submit="vm.onSubmit(vm.username, vm.password)">
                            <div class="form-group">
                                <input type="text" class="form-control" name="username" ng-model="vm.username" placeholder="Username">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" name="password" ng-model="vm.password" placeholder="Password">
                            </div>
                            <button type="submit" class="btn btn-xs btn-success">Sign In</button>
                        </form>
                    </div>
                </center>
        </div>
    </div>
</nav>

<div class="bgimg-1">

    <div class="caption">


        <span class="border">ACTIVITY TIME TRACKER</span>

    </div>

    <!--div class="container" style="align-content: center" >
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info" >
                <div class="panel-heading">
                    <div class="panel-title">Sign In</div>
                    <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
                </div>

                <div style="padding-top:30px;  background-color: rgba(245, 245, 245, 0);" class="panel-body" >

                    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                    <form name="vm.loginForm" ng-submit="vm.onSubmit(vm.username, vm.password)" >
                        <form id="loginform" class="form-horizontal" role="form">

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input type="text" name="username" id ="username" class="form-control" ng-model="vm.username" placeholder=" user/ Admin" autocomplete="off" required />
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="password" name="password" class="form-control" ng-model="vm.password" type="password" placeholder="password " autocomplete="off" required/>
                            </div>

                        <div class="input-group">
                            <div class="checkbox">
                                <label>
                                    <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                                </label>
                            </div>
                        </div>


                        <div style="margin-top:10px" class="form-group">
                            <!-- Button -->

                            <div class="col-sm-12 controls">
                                <button type="submit" class="btn btn-xs btn-success pull-right" style="color: black">Submit</button>


                            </div>
                        </div>


                        </form>


                    </form>



                </div>
            </div>





            </form>
        </div>
        </div-->



    </div>
</div>
</div>

<!--div class="col-md-5">
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
    </div-->




<div style="color: #777;background-color:white;text-align:center;padding:50px 80px;text-align: justify;">
    <h3 style="text-align:center;">Activity Tracking System</h3>
    <p> A Web-based application which allows the manager to create users, and activities for a project and later track the time for each user assigned to an activity.</p>
</div>

<div class="bgimg-2">
    <div class="caption">
        <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;"><h1>ADMIN</h1></span>
    </div>
</div>

<div style="position:relative;">
    <div style="color:#ddd;background-color:#282E34;text-align:center;padding:50px 80px;text-align: justify;">
        <p>Admin can create new users and can track the activities of all the users</p>
    </div>
</div>

<div class="bgimg-3">
    <div class="caption">
        <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;"><h1>USER</h1></span>
    </div>
</div>

<div style="position:relative;">
    <div style="color:#ddd;background-color:#282E34;text-align:center;padding:50px 80px;text-align: justify;">
        <p>User selects the activity on which he is working and later keep track of his own activities</p>
    </div>
</div>

<div class="bgimg-1">
    <div class="caption">
        <span class="border">TIME IS PRECIOUS</span>
    </div>
</div>
<span class="gr__tooltip"><span class="gr__tooltip-content"></span><i class="gr__tooltip-logo"></i><span class="gr__triangle"></span></span>



<style>



    body, html {
        height: 100%;
        margin: 0;
        font: 400 15px/1.8 "Lato", sans-serif;
        color: #777;
        background:


        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }


    .bgimg-1, .bgimg-2, .bgimg-3 {
        position: relative;
        opacity: 0.65;
        background-attachment: fixed;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;

    }
    .bgimg-1 {
        background-image: url("../../time2.jpg");
        min-height: 100%;
    }

    .bgimg-2 {
        background-image: url("../../img_parallax2.jpg");
        min-height: 400px;
    }

    .bgimg-3 {
        background-image: url("../../img_parallax3.jpg");
        min-height: 400px;
    }

    .caption {
        position: absolute;
        left: 0;
        top: 50%;
        width: 100%;
        text-align: center;
        color: #000;
    }

    .caption span.border {
        background-color: #111;
        color: #fff;
        padding: 18px;
        font-size: 25px;
        letter-spacing: 10px;
    }

    h3 {
        letter-spacing: 5px;
        text-transform: uppercase;
        font: 20px "Lato", sans-serif;
        color: #111;
    }

</style>



