/*
 * Statement Stage 1
 * Test point: for loop init/condition/update execution order.
 * Expected: init once, then cond→body→update→cond→body→update...
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let log: string = ""
  for (let i: number = 0; i < 3; i++) {
    log += i.toString()
  }
  assertTrue(log === "012", 'for loop should iterate 3 times: 0,1,2')

  let count: number = 0
  let initExecuted: boolean = false
  for (let j: number = (initExecuted = true, 0); j < 2; j++) {
    count++
  }
  assertTrue(initExecuted, 'init should execute once')
  assertTrue(count === 2, 'body should execute 2 times')
}

main()
