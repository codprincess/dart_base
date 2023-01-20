### ` String`
字符串主要用于表示文本。一个字符可以由多个代码点表示，每个代码点由一个或两个代码单元组成。
字符串可以是单行或多行。单行字符串使用匹配的单引号或双引号编写，多行字符串使用三引号编写。以下都是有效的 Dart 字符串：
``` dart
'Single quotes';
"Double quotes";
'Double quotes in "single" quotes';
"Single quotes in 'double' quotes";

'''A
multiline
string''';

"""
Another
multiline
string""";
```

#### 拼接字符串
- 可以使用加号 ( +) 运算符连接字符串：
``` dart
const addString = 'Dart '+ 'is '+'fun!';
print(addString);// 'Dart is fun!'
```
- 相邻的字符串文字会自动连接起来:
``` dart
const string = 'Dart ' 'is ' 'fun!';
print(string); // 'Dart is fun!'
```
- 使用`${}`它在字符串中插入 Dart 表达式的值：
``` dart
const string = 'dartlang';
print('$string has ${string.length} letters'); // dartlang has 8 letters
```

字符串是不可变的。虽然不能更改字符串，但可以对创建新字符串的字符串执行操作：
#### `String.length`
用法：`int length;`，字符串的长度。
``` dart
'Dart'.length;          // 4
'Dart'.runes.length;    // 4

// UTF-16 
var clef = '\u{1D11E}';
clef.length;            // 2
clef.runes.length;      // 1
```
#### ` string.substring`截取字符串
用法：`string.substring(int start,int end)`,start 和 end 都必须是非负数且不大于 字符串长度length ； end (如果提供)必须大于或等于 start 。
``` dart
void main() {
  const string = 'Dart is fun';
  //截取字符串
   print(string.substring(1));//art is fun
  print(string.substring(0,4));//Dart
  
}
```
#### `String.split `
`List<String> split(Pattern pattern))`
在匹配pattern 处拆分字符串并返回子字符串列表。
``` dart
  void main() {
  const string = 'Dart is fun';
  const string2 = 'hello,world!';
  //字符串拆分
  print(string.split(' '));//[Dart, is, fun]
  print(string2.split(','));//[hello, world, !]
}
```
如果模式根本不匹配此字符串，则结果始终是仅包含原始字符串的列表。
如果第一个匹配是字符串开头的空匹配，则它之前的空子字符串不包含在结果中。如果最后一个匹配是字符串末尾的空匹配，则它后面的空子字符串不包含在结果中。如果一个匹配是空的，并且它紧跟在前一个匹配之后(它从前一个匹配结束的位置开始)，那么两个匹配之间的空子字符串不包含在结果中。
``` dart
const string = 'abba';
final re = RegExp(r'b*');
// re.allMatches(string) will find four matches:
// * empty match before first "a".
// * match of "bb"
// * empty match after "bb", before second "a"
// * empty match after second "a".
print(string.split(re)); // [a, a]
```
字符串开头或结尾处的非空匹配项，或另一个匹配项之后的非空匹配项，不会被特殊处理，并且会在结果中引入空子字符串：
``` dart
const string = 'abbaa';
final splitted = string.split('a'); // ['', 'bb', '', '']
```
如果此字符串为空字符串，则如果匹配到空字符串，则结果为空列表:
``` dart
const string = '';
print(string.split('')); // []
print(string.split('a')); // []
```
使用空模式拆分会将字符串拆分为single-code 单元字符串:
``` dart
const string = 'Pub';
print(string.split('')); // [P, u, b]

// Same as:
var codeUnitStrings = [
  for (final unit in string.codeUnits) String.fromCharCode(unit)
];
print(codeUnitStrings); // [P, u, b]
```
#### `String.trim `
用法：`String trim()`，去前后空格。
``` dart
final trimmed = '\tDart is fun\n'.trim();
print(trimmed); // 'Dart is fun'
```
否则，返回原始字符串本身：
``` dart
const string1 = 'Dart';
final string2 = string1.trim(); // 'Dart'
print(identical(string1, string2)); // true
```

#### `String.trimLeft`
用法：`String trimLeft()`

没有任何前导空格的字符串。作为 trim ，但仅删除前导空格。
``` dart
final string = ' Dart '.trimLeft();
print(string); // 'Dart '
```
#### `String.trimRight`
用法：`String trimRight()`

没有任何尾随空格的字符串。作为 trim ，但只删除尾随空格。
``` dart
final string = ' Dart '.trimRight();
print(string); // ' Dart'
```

#### `String.indexOf `
用法：`int indexOf(Pattern pattern, [int start = 0]);` 索引方法。

返回此字符串中 pattern 的第一个匹配项的位置，从 start 开始，包括：
``` dart
const string = 'Dartisans';
print(string.indexOf('t')); // 3
print(string.indexOf(RegExp(r'[A-Z][a-z]'))); // 0
```
如果未找到匹配项，则返回 -1。
#### `String.lastIndexOf`
用法：`int lastIndexOf(Pattern pattern, [int? start]);`
此字符串中最后一个匹配pattern 的起始位置。如果省略start，则从字符串末尾开始搜索。如果提供， start 必须为非负数且不大于 length 。

通过从 start 开始向后搜索来查找模式匹配：
``` dart
const string = 'Dartisans';
print(string.lastIndexOf('a')); // 6
print(string.lastIndexOf(RegExp(r'a(r|n)'))); // 6
```
如果在此字符串中找不到 pattern，则返回 -1。

#### `String.toLowerCase`
用法：`String toLowerCase()`

将此字符串中的所有字符转换为小写。
``` dart
'ALPHABET'.toLowerCase(); // 'alphabet'
'abc'.toLowerCase(); // 'abc'
```
#### `String.toUpperCase`
用法：`String toUpperCase()`

将此字符串中的所有字符转换为大写。
``` dart
'alphabet'.toUpperCase(); // 'ALPHABET'
'ABC'.toUpperCase(); // 'ABC'
```


