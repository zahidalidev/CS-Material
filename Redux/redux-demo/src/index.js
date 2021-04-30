import store from "./store";

store.subscribe(() => {
    console.log("Store changed!", store.getState());
})

store.dispatch({
    type: "BUG_ADDED",
    payload: {
        description: 'bug_1'
    }
})

store.dispatch({
    type: "BUG_REMOVED",
    payload: {
        id: 1
    }
})

console.log(store.getState())