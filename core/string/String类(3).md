#### `String.fromCharCodes`
用法：
``` dart
String.fromCharCodes(
Iterable<int> charCodes,
[int start = 0,
int? end]
)
```
分配一个包含指定 charCodes 的新字符串。

charCodes 既可以是 UTF-16 代码单元，也可以是符文。如果 char-code 值为 16 位，则将其用作代码单元：
``` dart
final string = String.fromCharCodes([68]);
print(string); // D
```
如果 char-code 值大于 16 位，则将其分解为代理对：
``` dart
final clef = String.fromCharCodes([0x1D11E]);
clef.codeUnitAt(0); // 0xD834
clef.codeUnitAt(1); // 0xDD1E
```
如果提供了start 和end，则仅使用从start 到但不包括end 位置的charCodes 的值。 start 和 end 值必须满足 0 <= start <= end <= charCodes.length 。

#### `String.fromEnvironment`
用法：
``` dart
const
      String.fromEnvironment(
   String name,    
   {String defaultValue = ""}   
)
```
环境声明的字符串值 name 。

环境声明由编译或运行 Dart 程序的周围系统提供。声明将字符串键映射到字符串值。

如果 name 未在环境中声明，则结果为 defaultValue 。

获取值的示例：
``` dart
const String.fromEnvironment("defaultFloo", defaultValue: "no floo")
```
为了检查声明是否存在，请使用 bool.hasEnvironment。例子：
``` dart
const maybeDeclared = bool.hasEnvironment("maybeDeclared")
    ? String.fromEnvironment("maybeDeclared")
    : null;
```
与 name 关联的字符串值或缺少值必须在单个程序中对 String.fromEnvironment 、 int.fromEnvironment 、 bool.fromEnvironment 和 bool.hasEnvironment 的所有调用中保持一致。

此构造函数仅在作为 const 调用时才能保证工作。它可能在某些可以在运行时访问编译器选项的平台上作为非常量调用工作，但大多数 ahead-of-time 编译平台不会有此信息。

#### `operator *`
用法：
``` dart
String operator *(
    int times
)
```
通过将此字符串与其自身连接多次来创建一个新字符串。

str * n相当于 str + str + ...(n 次) ... + str
``` dart
const string = 'Dart';
final multiplied = string * 3;
print(multiplied);//DartDartDart
```
times如果为零或负数，则返回空字符串。
#### `operator +`
用法：
``` dart
String operator +(
    String other
)
```
通过将此字符串与 other 连接来创建一个新字符串。
``` dart
const string = 'dart' + 'lang'; // 'dartlang'
```

#### `operator ==`
用法：
``` dart
bool operator ==(
    Object other
)
override
```
other 是否是具有相同代码单元序列的String。
此方法比较字符串的每个单独的代码单元。它不检查 Unicode 等价性。例如，以下两个字符串都表示字符串'Amélie'，但由于它们的编码不同，并不相等：
``` dart
'Am\xe9lie' == 'Ame\u{301}lie'; // false
```
#### `operator []`
用法：
``` dart
String operator [](
   int index   
)
```
给定 index 处的字符(作为 single-code-unit String )。

返回的字符串正好代表一个 UTF-16 代码单元，它可能是代理对的一半。代理对的单个成员是无效的 UTF-16 字符串：
``` dart
var clef = '\u{1D11E}';
// These represent invalid UTF-16 strings.
clef[0].codeUnits;      // [0xD834]
clef[1].codeUnits;      // [0xDD1E]
```
此方法等效于 String.fromCharCode(this.codeUnitAt(index)) 。

详情请看：Dart文档https://api.dart.cn/