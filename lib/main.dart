import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tabs Demo'),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxHeight: 150.0),
                // 色変更はMaterialを設定して使う（TabBarはMaterialをもとにして色を生成しているため）
                child: Material(
                  color: Colors.indigo,
                  //サイズ変更はtabsの要素をcontainerにして高さ指定
                  child: new Container(
                    child: TabBar(
                      tabs: [
                        Container(
                            height: 50,
                            child: Tab(icon: Icon(Icons.directions_car))),
                        Container(
                            height: 50,
                            child: Tab(icon: Icon(Icons.directions_car))),
                        Container(
                            height: 50,
                            child: Tab(icon: Icon(Icons.directions_car))),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
