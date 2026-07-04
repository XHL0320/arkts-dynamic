function assertTrue(condition: boolean): void {
  if (!condition) {
    throw new Error("assertTrue failed")
  }
}

// Coverage: DECORATOR-MODULE-0003, DECORATOR-MODULE-TD-0003
// Stage 8 integration: import method decorator function from module (2-param form)
// Tests that imported method decorator receives correct target and key
// descriptor/equivalent structure pending â€?uses 2-param form only
// No sendable, no PR10632, no ArkUI
// Multi-file import: relative sibling path

import { methodDec, methodDecLog } from "./modules/decorator_module_method"

class A {
  value: number = 42
  @methodDec
  greet(): string {
    return "hello"
  }
  @methodDec
  compute(): number {
    return this.value * 2
  }
}

function main(): void {
  let a = new A()
  assertTrue(a.value == 42)
  assertTrue(a.greet() == "hello")
  assertTrue(a.compute() == 84)
  // Method decorator should be called for both methods
  assertTrue(methodDecLog == "methodDec:greetmethodDec:compute")
}
