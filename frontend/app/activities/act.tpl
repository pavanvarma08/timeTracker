<form name ="vm.act">
<div class="form-group">
    <label for="activityID"> Activities </label>
    <select name="activityID" id="activityID" ng-model="data">

        <option ng-repeat="activity in vm.activities" value="{{activity.activityID}}">{{activity.activityID}}</option>
    </select>
</div>
</form>