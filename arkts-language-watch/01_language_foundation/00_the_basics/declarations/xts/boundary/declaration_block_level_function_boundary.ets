/*
 * Declaration Stage 1
 * Boundary / pending confirmation.
 * Test point: block-level function declaration.
 * Reason: strict/module/sloppy behavior can differ; dynamic ArkTS behavior needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let result: number = 0
  if (true) {
    function blockFunction(): number {
      return 1
    }
    result = blockFunction()
  }
  assertTrue(result === 1, 'block-level function should be callable inside block')
}

main()
