# Decorator Module Initialization Order Candidates

## Coverage IDs

- DECORATOR-MODULE-0100: multiple modules initialization order
- DECORATOR-MODULE-0101: multiple decorated classes order
- DECORATOR-MODULE-0102: export decorated class module order

## Candidate Description

These candidates verify that module initialization order is correct when decorators are imported from other modules and applied to classes in the consuming module.

### Compiler Behavior to Verify

1. **Decorator module first**: The module defining the decorator function should initialize before the consuming module uses it. This is standard ES module behavior.

2. **Factory module first**: The module defining the factory function should initialize before the consuming module calls the factory.

3. **Side effect order**: Side effects in the decorator module (e.g., `classDecLog += "classDec"`) should occur before side effects in the consuming module.

4. **Multiple decorated classes**: When multiple classes in the same module use imported decorators, each class's decorators should be applied in the correct order.

5. **Lowering stability**: After transform/lowering, the module initialization order should NOT change — decorators should still be called at the correct time relative to module evaluation.

### Source Snippets

**Multiple modules initialization order (DECORATOR-MODULE-0100):**
```typescript
import { classDec } from "./modules/decorator_module_basic"
import { classFactory } from "./modules/decorator_factory_module"

@classDec
@classFactory("orderTest")
class A { value: number = 42 }
```

**Multiple decorated classes (DECORATOR-MODULE-0101):**
```typescript
import { classDec } from "./modules/decorator_module_basic"

@classDec
class A { value: number = 42 }
@classDec
class B { name: string = "test" }
```

**Export decorated class module order (DECORATOR-MODULE-0102):**
```typescript
import { DecoratedA } from "./modules/decorator_export_class_module"
// DecoratedA's decorator should have been applied during module init
let a = new DecoratedA()
```

### Expected Behavior

- Module initialization follows ES module dependency order
- Decorator module initializes before consuming module
- Factory module initializes before consuming module
- Side effects occur in correct module-level order
- Lowering does not reorder module initialization

### Status

Candidate created — awaiting compiler expected verification
