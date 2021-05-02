import { createSlice } from "@reduxjs/toolkit"


let lastId = 0;
const slice = createSlice({
    name: "bugs",
    initialState: [],
    reducers: {
        BUG_ADDED: (bugs, action) => {
            bugs.push({
                id: ++lastId,
                description: action.payload.description,
                resolved: false
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

export const { BUG_ADDED, BUG_REMOVED, BUG_RESOLVED } = slice.actions;
export default slice.reducer;