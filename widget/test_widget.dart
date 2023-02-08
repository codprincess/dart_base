
/**
 * author: jing
 * created on: 2023/1/23 23:10
 * description: 在widget中使用if-else
 */
import 'package:flutter/material.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  bool isLiked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('使用if-else')),
      body: Center(
        child: Column(
          children:  [
              if(isLiked) ...[
                Icon(Icons.thumb_up,size: 40,color: Colors.yellow,)
              ]else ...[
                Icon(Icons.thumb_up,size: 40,)
              ]

          ]   ,
        ),
      ),
    );
  }
}
