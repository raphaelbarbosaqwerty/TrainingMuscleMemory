export default {
    addNewTask(context, value) {
        context.commit('ADD_TASK', value)
    },
    deleteOldTask(context, value) {
        context.commit('DEL_TASK', value)
    }
}