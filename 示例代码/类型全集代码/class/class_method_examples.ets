/*
 * ArkTS class method positive examples.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function assertEqualString(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function assertEqualBoolean(actual: boolean, expected: boolean, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

interface MethodReadable {
  readLabel(): string
}

class MethodResult implements MethodReadable {
  public label: string
  constructor(label: string) {
    this.label = label
  }
  public readLabel(): string {
    return this.label
  }
}

class MethodCounter {
  public value: number = 0

  public reset(): void {
    this.value = 0
  }

  public addOne(): number {
    this.value = this.value + 1
    return this.value
  }

  public add(value: number): number {
    this.value = this.value + value
    return this.value
  }

  public addTwo(a: number, b: number): number {
    return a + b
  }

  public isPositive(): boolean {
    return this.value > 0
  }

  public makeResult(label: string): MethodResult {
    return new MethodResult(label)
  }

  public makeReadable(label: string): MethodReadable {
    return new MethodResult(label)
  }

  public callAnother(): number {
    return this.addTwo(this.value, 2)
  }
}

class MethodBase {
  public describe(): string {
    return "base"
  }
}

class MethodDerived extends MethodBase {
  public describe(): string {
    return "derived"
  }
}

function main(): void {
  let counter: MethodCounter = new MethodCounter()
  counter.reset()
  assertEqualNumber(counter.addOne(), 1, "method without parameter")
  assertEqualNumber(counter.add(4), 5, "method with one parameter")
  assertEqualNumber(counter.addTwo(1, 2), 3, "method with multiple parameters")
  assertEqualBoolean(counter.isPositive(), true, "method return boolean")
  assertEqualNumber(counter.callAnother(), 7, "method calls another method")

  let result: MethodResult = counter.makeResult("ok")
  assertEqualString(result.readLabel(), "ok", "method returns class instance")

  let readable: MethodReadable = counter.makeReadable("interface")
  assertEqualString(readable.readLabel(), "interface", "method returns interface type")

  let baseRef: MethodBase = new MethodDerived()
  assertEqualString(baseRef.describe(), "derived", "base type reference calls derived method")
}

main()
