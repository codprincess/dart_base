/// String 类

void main() {
  //const string = 'Dart is fun';
  //截取字符串
  // print(string.substring(1));
  // print(string.substring(0,4));
  //const string2 = 'hello,world,!';
  //字符串拆分
  // print(string.split(' '));//[Dart, is, fun]
  // print(string2.split(','));//[hello, world, !]
  //const string = 'abbaa';
  //final splitted = string.split('a'); // ['', 'bb', '', '']

  // const addString = 'Dart '+ 'is '+'fun!';
  // print(addString);
  // const string = '';
  // print(string.split('')); // []
  // print(string.split('a')); // []
  // const string = 'Dartisans';
  // print(string.indexOf('t')); // 3
  // print(string.indexOf(RegExp(r'[A-Z][a-z]'))); // 0
  // const string = 'Dartisans';
  // print(string.lastIndexOf('r')); // 6

  // const string = 'halloworld!';
  // print(string.replaceAll('a', 'e'));//helloworld!
  
  // final exp = RegExp(r'\d+(?:\.\d+)?');
  // String message = 'test 40.40 test 20.20';
  // final text = message.replaceAllMapped(
  //     exp, (match) => "<span>${match[0]}</span>"
  // );
  // print(text);//test <span>40.40</span> test <span>20.20</span>


  // const string = 'helloworld!';
  // print(string.replaceFirst('hello', 'hello '));//hello world!
  // print(string.replaceFirst('hello', 'Hi ',0));//Hi world!
  // print('0.0001'.replaceFirst(RegExp(r'0'), '7', 1)); // '0.7001'

  // const string = 'Dart is fun';
  // print(string.replaceFirstMapped('fun', (match) => 'open source'));

  // const string = 'Dart is fun';
  // print(string.replaceRange(8, null, 'open source'));
  // //Dart is open source

  // const string = 'Dart is open source';
  // print(string.startsWith('Dart'));// true
  // print(string.startsWith(RegExp(r'[A-Z][a-z]'))); // true

  // const string = 'Dart';
  // print(string.startsWith('D',0));//true
  // print(string.startsWith('D',1));//false

  // const string = 'Dart is fun';
  // print(string.endsWith('un'));//true
  // print(string.endsWith('is'));//false

  // const string = 'H';
  // print(string.padLeft(4));// '  H'
  // print(string.padLeft(2,'x'));//'xH'
  // print(string.padLeft(4,'x'));//'xxxH'
  // print(string.padLeft(4, '>>')); // '>>>>>>H'


  // const string = 'H';
  // print(string.padRight(4));// 'H   '
  // print(string.padRight(2,'x'));//'Hx'
  // print(string.padRight(4,'x'));//'Hxxx'
  // print(string.padRight(4, '>>')); // 'H>>>>>>'

  // const string = 'Dart';
  // print(string.compareTo('PHP'));// -1
  // const string2 = 'PHP';
  // print(string2.compareTo('Forward'));//1
  // print('Forward'.compareTo('Forward'));//0

  // const string = 'Dart is fun';
  // print(string.contains('is')); // true
  // //是否有大写
  // print(string.contains(RegExp(r'[A-Z]')));//true

  // const string = 'Dart is fun';
  // print(string.contains('is',5)); // true
  // //是否有大写
  // print(string.contains(RegExp(r'[A-Z]'),1));//false
  //

  // const string = 'Dart';
  // final multiplied = string * 3;
  // print(multiplied);//DartDartDart


  const string = 'dart' + 'lang';
  print(string);







}

