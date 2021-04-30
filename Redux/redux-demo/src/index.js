import store from "./store";

const unsubscribe = store.subscribe(() => {
    console.log("Store changed!", store.getState());
})

store.dispatch({
    type: "BUG_ADDED",
    payload: {
        description: 'bug_1'
    }
})

unsubscribe(); // unsubscribe to prevent memory eg. when user navigate from this page to another mean when UI component is not visible

store.dispatch({
    type: "BUG_REMOVED",
    payload: {
        id: 1
    }
})

console.log(store.getState())