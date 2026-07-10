/*
 * Statement Stage 1
 * Test point: switch with break stops fall-through.
 * Expected: break exits the switch after matching case.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let log: string = ""
  let x: number = 2
  switch (x) {
    case 1: log += "1"; break
    case 2: log += "2"; break
    case 3: log += "3"; break
    default: log += "D"
  }
  assertTrue(log === "2", 'break should stop after matching case')
}

main()
