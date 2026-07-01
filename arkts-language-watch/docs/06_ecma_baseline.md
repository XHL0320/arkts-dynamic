# ArkTS ECMAScript Baseline

## Baseline

ArkTS language and runtime watch uses ECMAScript 2022 as the default baseline.

## Confirmed ECMAScript 2023 Increment

The following ECMAScript 2023 features are confirmed to be supported by ArkTS and should be included in the watch scope when their related modules are tested:

- Array.prototype.findLast
- Array.prototype.findLastIndex
- Array.prototype.toReversed
- Array.prototype.toSorted
- Array.prototype.toSpliced
- Array.prototype.with
- Symbols as WeakMap keys

## Out of Scope by Default

ECMAScript 2024 and later features are out of scope by default unless ArkTS officially confirms support.

Other ECMAScript 2023 features that are not listed in the confirmed increment whitelist should not be treated as required watch items.

## Feature Baseline Status

For each watched feature, mark one of the following baseline statuses:

| Baseline Status | Meaning |
|---|---|
| ES2022 | Required baseline watch |
| ES2023-supported | Confirmed ArkTS-supported ES2023 increment |
| ES2023-unknown | Candidate only; pending confirmation |
| ES2024+ | Out of default scope |
| ArkTS-specific | Follow ArkTS official specification |
| Unsupported | Record as excluded/difference |

## test262 Selection Rule

When adapting test262 cases:

1. Prefer ECMAScript 2022 cases as the default baseline.
2. Include test262 cases for confirmed ES2023-supported features when testing the corresponding module.
3. Do not include unconfirmed ES2023 features as required cases.
4. Exclude ECMAScript 2024+ cases unless ArkTS support is explicitly confirmed.
5. Record excluded reasons in the corresponding test262_mapping.md or excluded_cases_reason.md.
