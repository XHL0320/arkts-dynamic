/*
 * Statement Stage 1
 * Test point: break with label exits outer loop.
 * Expected: break label jumps out of the labelled loop.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let count: number = 0
  outer: for (let i: number = 0; i < 5; i++) {
    for (let j: number = 0; j < 5; j++) {
      if (i === 2 && j === 2) {
        break outer
      }
      count++
    }
  }
  assertTrue(count === 12, 'break outer should exit both loops at i=2,j=2 (count=0*5+1*5+2*2+2=12... actually 5+5+2=12)')
}

main()
