# Decorator Factory Stage 2 Compiler Expected Candidates

This file records compiler-chain candidates for Stage 2. It intentionally does not include generated expected output.

| Candidate ID | Source Coverage ID | Scenario | Suggested Test Type | Suggested Source Path | Notes |
|---|---|---|---|---|---|
| DECORATOR-FACTORY-CANDIDATE-0001 | DECORATOR-FACTORY-0059, DECORATOR-FACTORY-0060, DECORATOR-FACTORY-0061 | factory evaluation order and returned decorator call order | compiler expected / runtime smoke candidate | 04_decorator_factory/compiler_expected_candidates/decorator_factory_order_candidate.ets | Keep ownership with `06_decorator_execution_order` for full order matrix. |
| DECORATOR-FACTORY-CANDIDATE-0002 | DECORATOR-FACTORY-0075, DECORATOR-FACTORY-0076, DECORATOR-FACTORY-0077 | factory call lowering and returned decorator lowering | compiler expected candidate | 04_decorator_factory/compiler_expected_candidates/decorator_factory_lowering_candidate.ets | Do not generate expected output in Stage 2. |
| DECORATOR-FACTORY-CANDIDATE-0003 | DECORATOR-FACTORY-0080, DECORATOR-FACTORY-0102 | imported binding after lowering | compiler expected / multi-file candidate | 04_decorator_factory/compiler_expected_candidates/decorator_factory_import_lowering_candidate.ets | Keep full module-binding ownership with `09_decorator_module_scope`. |
| DECORATOR-FACTORY-CANDIDATE-0004 | DECORATOR-FACTORY-0081, DECORATOR-FACTORY-0082, DECORATOR-FACTORY-0083 | arrow, normal function, and IIFE parameter scope after lowering | compiler expected candidate | 04_decorator_factory/compiler_expected_candidates/decorator_factory_param_scope_lowering_candidate.ets | Related: `05_decorator_transform`. |
| DECORATOR-FACTORY-CANDIDATE-0005 | DECORATOR-FACTORY-0119, DECORATOR-FACTORY-0120, DECORATOR-FACTORY-0121 | PR 10632 factory parameter expression reference | bytecode regression candidate | 07_decorator_with_sendable/compiler_expected/ | Reference only; main ownership remains `07_decorator_with_sendable`. |
