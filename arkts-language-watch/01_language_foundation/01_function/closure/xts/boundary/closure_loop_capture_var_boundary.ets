/*
 * Boundary / pending confirmation
 * Function Stage 2
 * Coverage: closure captures loop var binding.
 * Reason: var loop capture behavior should be checked against dynamic ArkTS implementation.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function makeReaders(): Array<() => number> {
  let readers: Array<() => number> = []
  for (var i: number = 0; i < 3; i++) {
    readers.push(function(): number {
      return i
    })
  }
  return readers
}

function main(): void {
  let readers: Array<() => number> = makeReaders()
  assertTrue(readers.length === 3, 'var loop capture boundary should create three closures')
}

main()
