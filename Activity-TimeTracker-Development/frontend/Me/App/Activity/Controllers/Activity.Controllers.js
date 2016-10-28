/**
 * Created by Alex on 27/10/2016.
 */
/**
 * Created by Alex on 24/10/2016.
 */
function ActivityController(ActivityService) {
    var viewModel = this;

    viewModel.$onInit = $onInit;

    viewModel.editActivity = editActivity;
    viewModel.removeActivity = removeActivity;
    viewModel.submitEditedActivity = submitEditedActivity;
    viewModel.resetEditedActivity = resetEditedActivity;
    viewModel.showError = showError;

    function $onInit() {
        // vm.notesController will be our parent controller (NotesController)
        // vm.ActivityData will contain the ActivityData of this note
        viewModel.resetEditedActivity();
    }

    function editActivity() {
        viewModel.isEditingActivity = true;
    }

    function removeActivity() {
        noteService.destroy(viewModel.ActivityData.id)
            .then(viewModel.ActivityController.refreshActivity);
    }

    function submitEditedActivity(title, text) {
        return noteService.update(viewModel.ActivityData.id, title, text)
            .then(viewModel.notesController.refreshActivity)
            .then(viewModel.resetEditedActivity)
            .catch(viewModel.showError);
    }

    function resetEditedActivity() {
        viewModel.isEditingNote = false;
    }

    function showError(response) {
        alert(response.ActivityData.errors.join("\n"));
    }
}