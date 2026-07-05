# override 负向边界

装饰器不应绕过 override 参数和返回值检查。参数不匹配、返回值不匹配建议转为 fail_compile。ArkTS `override` 语法和规则若有版本差异，应先做 boundary 确认。
