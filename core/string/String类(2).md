#### `String.replaceAll`
字符串替换。

用法：`String replaceAll(Pattern from, String replace);`

将与 from 匹配的所有子字符串替换为 replace。
``` dart
const string = 'halloworld!';
print(string.replaceAll('a', 'e'));//helloworld!
```
#### `String.replaceAllMapped`
用法：
``` dart
String replaceAllMapped(
Pattern from,
String replace(
Match match
)
)
```
用计算字符串替换与from 匹配的所有子字符串。

使用模式生成的match调用replace 函数，并将其结果用作替换。
``` dart
final exp = RegExp(r'\d+(?:\.\d+)?');
String message = 'test 40.40 test 20.20';
final text = message.replaceAllMapped(
exp, (match) => "<span>${match[0]}</span>"
);
print(text);//test <span>40.40</span> test <span>20.20</span>

```
其中match数组中的第一项被插入到内插双引号字符串文字之间`<span>`和`</span>`内部。

#### `String.replaceFirst`
用法：
``` dart
String replaceFirst(
Pattern from,
String to, [int startIndex = 0]
);
```
创建一个新的字符串，将第一次出现的 from 替换为 to 。

在此字符串中查找 from 的第一个匹配项，从 startIndex 开始，并创建一个新字符串，其中该匹配项被替换为 to 字符串。
``` dart
const string = 'helloworld!';
print(string.replaceFirst('hello', 'hello '));//hello world!
print(string.replaceFirst('hello', 'Hi ',0));//Hi world!
print('0.0001'.replaceFirst(RegExp(r'0'), '7', 1)); // '0.7001'
```
#### `String.replaceFirstMapped `
用法：
``` dart
String replaceFirstMapped(
Pattern from,
String replace(
Match match
),
[int startIndex = 0]
)
```
替换此字符串中第一次出现的from

``` dart
const string = 'Dart is fun';
print(string.replaceFirstMapped('fun', (match) => 'open source'));
//Dart is open source
```
#### `String.replaceRange`
``` dart
String replaceRange(
int start,
int? end,
String replacement
)
```
用 replacement 替换从 start 到 end 的子字符串。
``` dart
const string = 'Dart is fun';
print(string.replaceRange(8, null, 'open source'));
//Dart is open source
```
start 和end 索引必须指定此字符串的有效范围。那是 0 <= start <= end <= this.length 。如果 end 是 null ，则默认为 length 。

#### `String.startsWith`
用法：
``` dart
bool startsWith(
Pattern pattern,
[int index = 0]
);
```
此字符串是否以匹配 pattern 开头。
``` dart
const string = 'Dart is open source';
print(string.startsWith('Dart'));// true
print(string.startsWith(RegExp(r'[A-Z][a-z]'))); // true
```
如果提供了 index，则此方法检查从该索引开始的子字符串是否以匹配 pattern 开头：
``` dart
const string = 'Dart';
print(string.startsWith('D',0));//true
print(string.startsWith('D',1));//false
```
index 不得为负数或大于 length 。

如果 index 大于零并且正则表达式不是多行，则包含 '^' 的 RegExp 不匹配。该模式对整个字符串起作用，并且不会首先提取从 index 开始的子字符串：
``` dart
const string = 'Dart';
print(string.startsWith(RegExp(r'^art'), 1)); // false
print(string.startsWith(RegExp(r'art'), 1)); // true
```

#### `String.endsWith`
用法：
``` dart
bool endsWith(
String other
);
```
此字符串是否以 other 结尾。

``` dart
const string = 'Dart is fun';
print(string.endsWith('un'));//true
print(string.endsWith('is'));//false
```
##### `String.padLeft`
用法：
``` dart
String padLeft(
int width,
[String padding = ' ']
);
```
如果它比 width 短，则在左侧填充此字符串。

对于长度小于 width 的每个位置，返回一个将 padding 预先添加到此字符串的新字符串。
``` dart
const string = 'H';
print(string.padLeft(4));// '  H'
print(string.padLeft(2,'x'));//'xH'
print(string.padLeft(4,'x'));//'xxxH'
print(string.padLeft(4, '>>')); // '>>>>>>H'
```
如果 width 已经小于或等于 this.length ，则不添加填充。负数width 被视为零。

如果 padding 的长度不同于 1，则结果将没有长度 width 。这对于填充是表示单个字符的较长字符串的情况可能很有用，例如 "&nbsp;" 或 "\u{10002} "。在这种情况下，用户应确保 this.length 是字符串长度的正确度量。


#### `String.padRight`
用法：
``` dart
String padRight(
int width,
[String padding = ' ']
)
```
如果它比 width 短，则在右侧填充此字符串。

对于长度小于 width 的每个位置，返回一个新字符串，在该字符串之后附加一次 padding 。
``` dart
const string = 'H';
print(string.padRight(4));// 'H   '
print(string.padRight(2,'x'));//'Hx'
print(string.padRight(4,'x'));//'Hxxx'
print(string.padRight(4, '>>')); // 'H>>>>>>'
```
如果 width 已经小于或等于 this.length ，则不添加填充。负数width 被视为零。

如果 padding 的长度不同于 1，则结果将没有长度 width 。这对于填充是表示单个字符的较长字符串的情况可能很有用，例如 "&nbsp;" 或 "\u{10002} "。在这种情况下，用户应确保 this.length 是字符串长度的正确度量。

#### `String.compareTo`
用法:
``` dart
int compareTo(
String other
)
override
```
将此字符串与 other 进行比较。

如果 this 在 other 之前排序，则返回负值，如果 this 在 other 之后排序，则返回正值，如果 this 和 other 相等则返回零。

排序与两个字符串不同的第一个位置的代码单元的排序相同。如果一个字符串是另一个字符串的前缀，则较短的字符串在较长的字符串之前排序。如果字符串具有完全相同的内容，则它们在排序方面是等价的。排序不检查 Unicode 等效性。比较区分大小写。
``` dart
const string = 'Dart';
print(string.compareTo('PHP'));// -1
const string2 = 'PHP';
print(string2.compareTo('Forward'));//1
print('Forward'.compareTo('Forward'));//0
```
#### `String.contains`
用法：
``` dart
bool contains(
Pattern other,
[int startIndex = 0]
)
```
此字符串是否包含匹配的 other 。
``` dart
const string = 'Dart is fun';
print(string.contains('is')); // true
//是否有大写
print(string.contains(RegExp(r'[A-Z]')));//true
```
如果提供了startIndex，则此方法仅在该索引处或之后匹配：

startIndex 不得为负数或大于 length 。
``` dart
const string = 'Dart is fun';
print(string.contains('is')); // true
//是否有大写
print(string.contains(RegExp(r'[A-Z]')));//true
```


