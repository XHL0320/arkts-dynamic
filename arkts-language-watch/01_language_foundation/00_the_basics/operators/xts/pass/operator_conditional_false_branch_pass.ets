/*
 * Operator Stage 1
 * Test point: conditional operator false branch only.
 * Expected: false ? "yes" : "no" === "no", true branch not evaluated.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sideEffect: number = 0
  let result: string = false ? (() => { sideEffect = 1; return "yes" })() : "no"
  assertTrue(result === "no", 'false branch selected')
  assertTrue(sideEffect === 0, 'true branch not evaluated')
  assertTrue((1 < 0 ? 100 : 200) === 200, 'conditional with false comparison')
}

main()
