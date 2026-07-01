# ECMAScript 2023 Increment Whitelist

This file records ECMAScript 2023 features confirmed to be supported by ArkTS / ArkRuntime.

| Feature | ECMA Version | ArkTS Support | ArkRuntime Support | Test Scope | Notes |
|---|---|---|---|---|---|
| Array.prototype.findLast | ES2023 | Supported | Supported | Include when testing Array | Array search from the end |
| Array.prototype.findLastIndex | ES2023 | Supported | Supported | Include when testing Array | Array index search from the end |
| Array.prototype.toReversed | ES2023 | Supported | Supported | Include when testing Array | Change Array by Copy |
| Array.prototype.toSorted | ES2023 | Supported | Supported | Include when testing Array | Change Array by Copy |
| Array.prototype.toSpliced | ES2023 | Supported | Supported | Include when testing Array | Change Array by Copy |
| Array.prototype.with | ES2023 | Supported | Supported | Include when testing Array | Change Array by Copy |
| Symbols as WeakMap keys | ES2023 | Supported | Supported | Include when testing WeakMap | WeakMap key support extension |

## Watch Rule

All features listed in this whitelist should be marked as:

Baseline Status: ES2023-supported

Do not create feature-specific watch directories in this step. These directories will be created later when testing the corresponding module.
