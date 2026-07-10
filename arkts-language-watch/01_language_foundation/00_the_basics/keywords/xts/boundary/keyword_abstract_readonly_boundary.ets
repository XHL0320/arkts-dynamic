/*
 * Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: abstract/readonly keywords as TS class modifiers.
 * Boundary reason: these are TS extensions not in ES spec.
 *  Dynamic ArkTS support status needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

// If abstract class is supported:
abstract class AbstractBase {
  abstract method(): string
  readonly immutable: number = 42
}

class Concrete extends AbstractBase {
  method(): string { return "concrete" }
}

function main(): void {
  // If abstract/readonly work, they should compile.
  // If not supported, this file should fail to compile.
  let obj: Concrete = new Concrete()
  assertTrue(obj.method() === "concrete", 'abstract/readonly keyword boundary documented')
}

main()
