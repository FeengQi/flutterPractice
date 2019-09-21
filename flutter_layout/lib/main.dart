import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '123',
      home: Scaffold(body: ContainerPracice()),
    );
  }
}

class ContainerPracice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Container',
          style: TextStyle(fontSize: 20.0),
        ),
        alignment: Alignment.center,
        width: 200.0,
        height: 200.0,
//      color: Colors.blue,
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
//      foregroundDecoration:,  //设置子控件上面的装饰
//      constraints:  //设置子控件尺寸约束的条件 比如 宽高
        //设置子控件背后的装饰
        decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(
              width: 20.0,
              color: Colors.green, //和Container下面的color会冲突 具体原因不详
            ),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.amber, blurRadius: 20.0),
              BoxShadow(color: Colors.red, blurRadius: 20.0),
            ]),
      ),
    );
  }
}
