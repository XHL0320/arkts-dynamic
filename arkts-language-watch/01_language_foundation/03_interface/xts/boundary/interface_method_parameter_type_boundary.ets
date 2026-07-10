/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: method parameter type compatibility in interface implementation.
 * Boundary reason: dynamic ArkTS method signature parameter type checking needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Calculator {
  compute(input: number): number
}

class Adder implements Calculator {
  compute(input: number): number {
    return input + 1
  }
}

function main(): void {
  let calc: Calculator = new Adder()
  let result: number = calc.compute(41)
  assertTrue(result === 42, 'method parameter type compatible')
}

main()
