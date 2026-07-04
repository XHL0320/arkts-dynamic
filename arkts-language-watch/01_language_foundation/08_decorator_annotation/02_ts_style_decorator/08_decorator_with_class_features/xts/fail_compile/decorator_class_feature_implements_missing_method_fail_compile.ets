// Coverage: DECORATOR-CLASS-FEATURE-0131, DECORATOR-CLASS-FEATURE-TD-0131
// Stage 9 fail_compile: decorated class implements interface but missing method
// Single expected error point: class does not implement required interface method
// No sendable, no PR10632, no ArkUI

function classDec(target: Object): void {
  // Simple class decorator — no modification
}

interface I {
  value(): number
}

@classDec
class A implements I {  // ERROR: Class 'A' does not implement interface method 'value'
}
