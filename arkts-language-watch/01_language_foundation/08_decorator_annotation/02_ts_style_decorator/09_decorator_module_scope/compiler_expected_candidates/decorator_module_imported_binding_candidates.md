# Decorator Module Imported Binding Candidates

## Coverage IDs

- DECORATOR-MODULE-0049: arrow function argument captures imported binding
- DECORATOR-MODULE-0050: normal function argument captures imported binding
- DECORATOR-MODULE-0051: IIFE argument reads imported binding

## Candidate Description

These candidates verify that decorator factory arguments which capture or read imported bindings remain stable after transform/lowering.

### Compiler Behavior to Verify

1. **Arrow function capture**: Arrow function `() => importedVar + localTag` should capture the imported binding correctly. After lowering, the arrow function should still reference the correct module variable, not a local or wrong binding.

2. **Normal function capture**: Normal function `function() { return importedVar + localTag }` should capture the imported binding similarly.

3. **IIFE read**: `(function() { return importedVar })()` should evaluate at decorator application time and correctly read the imported binding value.

4. **PR 10632 ordinary module-binding contrast**: These scenarios test the same binding-capture mechanism that PR 10632 involves, but in ordinary (non-sendable) context. The binding should be stable after lowering — no misbinding, no loss.

### Source Snippets

**Arrow function (DECORATOR-MODULE-0049):**
```typescript
import { moduleVar } from "./modules/decorator_class_factory_module"
@classFactoryWithCapture(() => moduleVar + localTag)
class A { value: number = 42 }
```

**Normal function (DECORATOR-MODULE-0050):**
```typescript
import { moduleVar } from "./modules/decorator_class_factory_module"
@classFactoryWithCapture(function() { return moduleVar + localTag })
class B { value: number = 42 }
```

**IIFE (DECORATOR-MODULE-0051):**
```typescript
import { moduleVar } from "./modules/decorator_class_factory_module"
@classFactoryWithCapture((function() { return moduleVar })())
class C { value: number = 42 }
```

### Expected Behavior

- Arrow/normal function captures imported binding from the definition module
- IIFE evaluates imported binding at decorator application time
- After lowering, the captured binding still references the correct module variable
- PR 10632 ordinary contrast: no binding loss or misbinding in non-sendable context

### Status

Candidate created — awaiting compiler expected verification
