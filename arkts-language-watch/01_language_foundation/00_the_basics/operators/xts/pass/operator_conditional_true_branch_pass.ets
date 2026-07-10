/*
 * Operator Stage 1
 * Test point: conditional operator true branch only.
 * Expected: true ? "yes" : "no" === "yes", false branch not evaluated.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sideEffect: number = 0
  let result: string = true ? "yes" : (() => { sideEffect = 1; return "no" })()
  assertTrue(result === "yes", 'true branch selected')
  assertTrue(sideEffect === 0, 'false branch not evaluated')
  assertTrue((1 > 0 ? 100 : 200) === 100, 'conditional with comparison condition')
}

main()
