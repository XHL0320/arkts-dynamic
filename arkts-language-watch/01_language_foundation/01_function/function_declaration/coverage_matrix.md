# Coverage Matrix

| ID | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 备注 |
|---|---|---|---|---|---|---|
| FUNCTION-DECLARATION-0001 | 函数声明在声明前调用 | pass | P0 | 否 | function_declaration/xts/pass/函数声明在声明前调用_pass.ets | Stage 0 候选，未生成 .ets |
| FUNCTION-DECLARATION-0002 | 递归函数声明 | pass | P0 | 否 | function_declaration/xts/pass/递归函数声明_pass.ets | Stage 0 候选，未生成 .ets |
| FUNCTION-DECLARATION-0003 | 重复函数声明边界 | boundary | P0 | 否 | function_declaration/xts/boundary/重复函数声明边界_boundary.ets | Stage 0 候选，未生成 .ets |
| FUNCTION-DECLARATION-0004 | 块级函数声明边界 | boundary | P1 | 否 | function_declaration/xts/boundary/块级函数声明边界_boundary.ets | Stage 0 候选，未生成 .ets |
| FUNCTION-DECLARATION-0005 | 函数声明缺少名称 | fail_compile | P1 | 否 | function_declaration/xts/fail_compile/函数声明缺少名称_fail_compile.ets | Stage 0 候选，未生成 .ets |
| FUNCTION-DECLARATION-0006 | 函数表达式不提升 | pass | P1 | 否 | function_declaration/xts/pass/函数表达式不提升_pass.ets | Stage 0 候选，未生成 .ets |
| FUNCTION-DECLARATION-0007 | 函数声明作为 callback | pass | P2 | 否 | function_declaration/xts/pass/函数声明作为_callback_pass.ets | Stage 0 候选，未生成 .ets |
| FUNCTION-DECLARATION-0008 | 函数 name 属性 | pass | P2 | 否 | function_declaration/xts/pass/函数_name_属性_pass.ets | Stage 0 候选，未生成 .ets |
