import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcjombjbe to Flutter'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String _photoUrl =
      'https://as2.ftcdn.net/v2/jpg/04/51/95/55/1000_F_451955544_Jhmb5lP4ONd6XG3MSKKqartWDmLuBm9C.jpg';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Tu préfères ...?'),
        Image(image: NetworkImage(_photoUrl), width: 100%,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _photoUrl =
                        'https://i.pinimg.com/564x/4f/fe/c7/4ffec712d14c614dce80c37fb2116b23.jpg';
                  });
                },
                child: Text('Pancake'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                )),
            ElevatedButton(
                onPressed: () {setState(() {
                    _photoUrl =
                        'https://i.pinimg.com/736x/e3/58/d5/e358d5a548a921afe0928bf1f67c3baf.jpg';
                  });},
                child: Text('Gauffres'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ))
          ],
        )
      ],
    );
  }
}
