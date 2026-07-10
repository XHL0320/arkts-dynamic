// Helper: side-effect module
let sideEffectCounter: number = 0
sideEffectCounter++
export function getCounter(): number { return sideEffectCounter }
