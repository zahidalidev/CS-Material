import { createSlice } from "@reduxjs/toolkit"
import { createSelector } from "reselect"

let lastId = 0;
const slice = createSlice({
    name: "bugs",
    initialState: [],
    reducers: {
        BUG_ASSIGNED_TO_USER: (bugs, action) => {
            const { bugId, userId } = action.payload;
            const index = bugs.findIndex(bug => bug.id === bugId);
            bugs[index].userId = userId;
        },

        BUG_ADDED: (bugs, action) => {
            bugs.push({
                id: ++lastId,
                description: action.payload.description,
                resolved: false,
            })
        },
        BUG_REMOVED: (bugs, action) => {
            const index = bugs.findIndex(bug => bug.id === action.payload.id);
            bugs.splice(index, 1);
        },
        BUG_RESOLVED: (bugs, action) => {
            const index = bugs.findIndex(bug => bug.id === action.payload.id);
            bugs[index].resolved = true;
        },
    }
})

export const { BUG_ASSIGNED_TO_USER, BUG_ADDED, BUG_REMOVED, BUG_RESOLVED } = slice.actions;
export default slice.reducer;


// export const getUnresolvedBugs = state => state.entities.bugs.filter(bug => !bug.resolved);

// Memoization
// bugs => get unresolved bugs from the cache if they are not changed
export const getUnresolvedBugs = createSelector(
    state => state.entities.bugs,
    bugs => bugs.filter(bug => !bug.resolved)
);

export const getBugByUser = userId => createSelector(
    state => state.entities.bugs,
    bugs => bugs.filter(bug => bug.userId === userId)
)