# Fail Compile Validation Commands

## Toolchain

DevEco / HarmonyOS official hvigor pipeline was used through `hvigorw.bat` in:

`C:\Users\Administrator\DevEcoStudioProjects\MyApplication9`

Environment used per command:

```powershell
$env:JAVA_HOME = 'D:\DevEco Studio20\jbr'
$env:DEVECO_SDK_HOME = 'D:\DevEco Studio20\sdk'
$env:OHOS_SDK_HOME = 'D:\DevEco Studio20\sdk\default\openharmony'
$env:NODE_OPTIONS = '--max-old-space-size=8192'
$env:PATH = 'D:\DevEco Studio20\tools\hvigor\bin;D:\DevEco Studio20\tools\ohpm\bin;D:\DevEco Studio20\tools\node;' + $env:JAVA_HOME + '\bin;' + $env:PATH
```

## Per-file Probe Method

For each `fail_compile/*.ets` file:

1. Copy the file content to `entry/src/ohosTest/ets/test/decorator/DecoratorFailCompileProbe.test.ets`.
2. Temporarily add side-effect import in `List.test.ets`:
   `import './decorator/DecoratorFailCompileProbe.test'`.
3. Run:

```powershell
hvigorw.bat --mode module -p product=default -p module=entry@ohosTest assembleHap
```

4. Expected result: non-zero exit code and ArkTS compiler error.
5. Restore `List.test.ets` and remove the probe file after validation.