/*
 * Generic Stage 1
 * Test point: nested generic array Array<Array<T>>.
 * Expected: nested generic array compiles and works.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let matrix: number[][] = [[1, 2], [3, 4]]
  assertTrue(matrix.length === 2, 'nested array outer length')
  assertTrue(matrix[0][0] === 1, 'nested array element access')
  assertTrue(matrix[1][1] === 4, 'nested array second row')
}

main()
