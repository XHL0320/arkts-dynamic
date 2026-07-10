/*
 * Statement Stage 1
 * Test point: switch fall-through without break.
 * Expected: after matching a case, execution continues to next case if no break.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let log: string = ""
  let x: number = 1
  switch (x) {
    case 1: log += "1"
    case 2: log += "2"
    case 3: log += "3"
    default: log += "D"
  }
  assertTrue(log === "123D", 'fall-through should execute all cases after match')
}

main()
