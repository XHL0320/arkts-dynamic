# Repository Guidelines

## Project Structure & Module Organization

This repository stores ArkTS language test assets, examples, and regression notes.

- `arkts-language-watch/`: main test-design tree. Feature directories usually contain `README.md`, `spec_points.md` or `spec_summary.md`, `test_design.md`, `coverage_matrix.md`, `issues/`, `xts/`, and candidate folders such as `compiler_expected_candidates/`.
- `示例代码/`: readable ArkTS examples for testers to copy or adapt. These are reference examples, not formal XTS suites.
- Root `README.md`: repository overview and maintenance orientation.

Keep new material in the narrowest matching feature directory. Do not mix example-only files with formal test-design or XTS candidate files.

## Build, Test, and Development Commands

There is no single repository-wide build command. Use targeted checks:

```powershell
git status --short
git diff -- README.md AGENTS.md
Get-ChildItem -Recurse -Filter *.ets arkts-language-watch
```

For ArkTS validation, use the relevant external DevEco, XTS, ohosTest, or compiler workflow documented in the specific feature report. Do not mark candidates as validated unless they were run with the appropriate toolchain.

## Coding Style & Naming Conventions

Markdown should be concise, table-friendly, and use stable headings. Keep paths in backticks, for example `coverage_matrix.md` or `xts/fail_compile/`.

ArkTS examples should be small, explicit, and strongly typed. Prefer clear names such as `decorator_class_basic_pass.ets` or `*_fail_compile.ets`. Keep `pass`, `smoke`, `integration`, `boundary`, and `fail_compile` cases in separate folders.

## Testing Guidelines

Use `coverage_matrix.md` as the source of truth for coverage state. Positive `.ets` examples should include real assertions when they are intended to run. Negative cases belong under `fail_compile/` and should isolate one expected compiler error. Boundary and candidate files must not be marked completed.

## Commit & Pull Request Guidelines

Recent history uses Conventional Commit-style prefixes, for example `docs:` and `feat:`. Use focused messages such as:

```text
docs: add decorator module scope report
feat: add class decorator XTS candidates
```

Before committing, check that only intended files are staged. PR descriptions should summarize changed directories, validation performed, and any remaining pending or candidate-only items.

## Agent-Specific Instructions

Preserve unrelated local changes. Do not generate real compiler or bytecode expected outputs unless explicitly requested. Keep sendable-specific decorator material scoped to `07_decorator_with_sendable/` and regression indexes.
