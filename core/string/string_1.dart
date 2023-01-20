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
  const string = 'Dartisans';
  print(string.lastIndexOf('r')); // 6
}

