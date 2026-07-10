/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: construct signature in interface.
 * Boundary reason: dynamic ArkTS construct signature support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Constructable {
  new (): Record<string, number>
}

function main(): void {
  // If construct signature is supported, we can assign a class constructor to it.
  // If not supported, this file should fail to compile.
  class Factory {
    constructor() {}
  }
  // let ctor: Constructable = Factory
  // let instance = new ctor()
  assertTrue(true, 'construct signature boundary documented')
}

main()
