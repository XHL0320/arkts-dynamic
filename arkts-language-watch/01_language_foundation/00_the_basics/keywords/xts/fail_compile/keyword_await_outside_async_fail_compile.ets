// Expected: compile error.
// Reason: await keyword is not allowed outside async function context.
let result = await Promise.resolve(42)
