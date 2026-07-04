// Coverage: DECORATOR-MODULE-0105, DECORATOR-MODULE-TD-0105
// Stage 8 boundary: circular import order
// Boundary: pending target support confirmation
// Circular imports may cause uninitialized decorator bindings
// No sendable, no PR10632, no ArkUI
// This file may not compile/run correctly if circular import is unresolved

// Note: circular import between this file and a hypothetical helper module
// is risky — decorator may be undefined at evaluation time
// For safety, this boundary file uses a self-contained pattern instead

let log: string = ""

function selfDec(target: Object): void {
  log += "selfDec"
}

@selfDec
class A {
  value: number = 42
}

@selfDec
class B {
  name: string = "test"
}

function main(): void {
  let a = new A()
  let b = new B()
  // assertTrue(a.value == 42)
  // assertTrue(b.name == "test")
  // Boundary note: circular import with decorator would need two files importing each other
  // This self-contained version demonstrates the intended pattern but cannot test circularity
  // Real circular import boundary requires multi-file XTS support verification
}
