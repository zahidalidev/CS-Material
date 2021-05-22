import { createSlice } from "@reduxjs/toolkit";

let lastId = 0;
const slice = createSlice({
    name: "projects",
    initialState: [],
    reducers: {
        PROJECT_ADDED: (projects, action) => {
            projects.push({
                id: ++lastId,
                name: action.payload.name
            });
        }
    }
})

export const { PROJECT_ADDED } = slice.actions;
export default slice.reducer;