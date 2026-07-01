# Module / Global Declaration TypeError

本目录看护 GlobalDeclarationInstantiation 或 Module 相关声明阶段可能触发的 TypeError。

典型场景：
- CanDeclareGlobalFunction false
- CanDeclareGlobalVar false
- host global object restrictions
- module environment restrictions

看护重点：
- Host 环境差异
- ArkTS module 限制
- 稳定性较差，优先记录差异
- 不作为第一批必过 XTS 用例
