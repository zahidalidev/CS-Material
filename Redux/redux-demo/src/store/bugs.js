import { createAction, createReducer } from "@reduxjs/toolkit"


// Action creators
export const BUG_ADDED = createAction('BUG_ADDED');
export const BUG_REMOVED = createAction('BUG_REMOVED');
export const BUG_RESOLVED = createAction('BUG_RESOLVED');

// Reducer

// [] state is an array
let lastId = 0;
export default createReducer([], {
    [BUG_ADDED.type]: (bugs, action) => {
        bugs.push({
            id: ++lastId,
            description: action.payload.description,
            resolved: false
        })
    },
    [BUG_REMOVED.type]: (bugs, action) => {
        const index = bugs.findIndex(bug => bug.id === action.payload.id);
        bugs.splice(index, 1);
    },

    [BUG_RESOLVED.type]: (bugs, action) => {
        const index = bugs.findIndex(bug => bug.id === action.payload.id);
        bugs[index].resolved = true;
    },
})