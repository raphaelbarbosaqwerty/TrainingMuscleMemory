export default {
    ADD_TASK: (state, value) => {
        state.tasks.push(value)
    },
    DEL_TASK: (state, value) => {
        state.tasks.splice(value, 1)
    }
}