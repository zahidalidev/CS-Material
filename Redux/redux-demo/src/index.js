import configureStore from "./store/configureStore";
// import * as actionCreators from "./store/bugs";
import { PROJECT_ADDED } from "./store/projects";
import { BUG_ADDED, BUG_RESOLVED, BUG_ASSIGNED_TO_USER, getUnresolvedBugs, getBugByUser } from "./store/bugs";
import { USER_ADDED } from "./store/users";

const store = configureStore();

const unsubscribe = store.subscribe(() => {
    console.log("Store changed!", store.getState());
})

store.dispatch(USER_ADDED({ name: "user 1" }))
store.dispatch(USER_ADDED({ name: "user 2" }))

store.dispatch(PROJECT_ADDED({ name: "Project 1" }))

store.dispatch(BUG_ADDED({ description: "BUG 1" }))
store.dispatch(BUG_ADDED({ description: "BUG 2" }))
store.dispatch(BUG_RESOLVED({ id: 1 }))

store.dispatch(BUG_ASSIGNED_TO_USER({ userId: 1, bugId: 1 }))

unsubscribe(); // unsubscribe to prevent memory eg. when user navigate from this page to another mean when UI component is not visible
console.log(getUnresolvedBugs(store.getState()));
console.log(getBugByUser(1)(store.getState()));


