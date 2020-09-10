export default {
    listTasks: state => {
        let list = state.tasks.slice()
        return list.reverse()
    },
    searchTasks: state => term => {
        let result = []
        if(term !=  '') {
            for (let i = 0; i < state.tasks.length; i++) {
                if(state.tasks[i].indexOf(term) > -1)
                    result.push(state.tasks[i])
            }
        }
        return result
    }
}