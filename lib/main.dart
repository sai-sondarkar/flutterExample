import 'package:flutter/material.dart';


class HexToColor extends Color{
  static _hexToColor(String code) {
    return int.parse(code.substring(1, 7), radix: 16) + 0xFF000000;
  }
  HexToColor(final String code) : super(_hexToColor(code));
}

class  HelloBox extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        color: HexToColor('#D81B60'),
        width: 300.0,
        height: 300.0,
        child: Center(
         child: Text("Hey Flutty", style: TextStyle(fontSize: 50.0, color: HexToColor('#FAFAFA'),),),
        )
      ),
    );

  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: HexToColor('#880E4F'),
          title: Text("Hello Idiot"),
        ),
        body: HelloBox()
      ),
    ),
  );
}
