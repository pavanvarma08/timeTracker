<div ng-switch on="vm.isEditingActivity">
                                                 <div class="panel panel-default" ng-switch-when="false">
                                                     <div class="panel-heading">

                                                         <h3 class="panel-title pull-left">{{vm.data.title}}: </h3>
                                                         <em>{{vm.data.description}}</em>

                                                         <div class="pull-right">
                                                             <a ng-click="vm.editActivity()" class="btn btn-xs btn-info">Edit</a>
                                                             <a ng-click="vm.removeActivity()" class="btn btn-xs btn-danger">

                                                                         <span class="glyphicon glyphicon-play"></span>
                                                                       </a>
                                                         </div>

                                                         <div class="clearfix"></div>
                                                     </div>
                                                     <div class="panel-body">{{vm.data.description}}</div>

                      <div class="container-fluid">
                                              <div class="row">
                                                  <div class="col-md-6 ">

                                                          <div class="form-group ">
                                                             <div class="input-group date">
                                                                       <input type="text" class="form-control" id="pickyDate"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
                                                                     </div>
                                                              <div class="input-group">
                                                                  <div class="input-group-addon">
                                                                      <i class="fa fa-calendar">
                                                                      </i>
                                                                  </div>

                                                              </div>
                                                          </div>


                                                  </div>
                                                  <div class="col-md-3">

                                                                                                             <div class="form-group">
                                                                                                             <input id="hours" name="hours" class="form-control" ng-model="vm.adminID" type="hours" placeholder="hours worked" autocomplete="off" required = " ">
                                                                                                                                  </div>

                                                                                                    </div>
                                                                                                    <div class="col-md-3">

                                                                                                                                                                                                                 <div class="form-group">
        <button type="submit" class="btn btn-xs btn-success">Submit</button>
                                                                                                                                                                                                                                      </div>


                                                                                                                                                                                                        </div>
                                              </div>

         <!--div class="bootstrap-iso">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <form method="post">
                                    <div class="form-group ">
                                        <label class="control-label " for="date">
                                            Date
                                        </label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar">
                                                </i>
                                            </div>
                                            <input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div>
                                            <button class="btn btn-primary " name="submit" type="submit">
                                                Submit
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
    </div-->

    <activity-form ng-switch-when="true" data="vm.data" on-submit="vm.submitEditedActivity" on-reset="vm.resetEditedActivity"></activity-form>
</div>
