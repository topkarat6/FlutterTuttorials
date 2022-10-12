import 'package:flutter/material.dart';
import 'package:fluttertutorials/View/Keys/UniqueKey.dart';

class GlobalKeys extends StatefulWidget {
  const GlobalKeys({Key? key}) : super(key: key);

  @override
  State<GlobalKeys> createState() => _GlobalKeysState();
}

class _GlobalKeysState extends State<GlobalKeys> {
  @override
  void initState() {
    super.initState();
  }

  int number = 0;

  arttir() {
    number++;
  }

  final List<int> _items = List<int>.generate(50, (int index) => index);

  GlobalKey<ScaffoldState>? key1 = GlobalKey(debugLabel: "Scaffold Key");

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
          key: key1,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              arttir();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UniqueKeyy(
                            key: key1,
                          )));
            },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(),
          drawer: Drawer(),
          body: Center(
            child: Text(number.toString()),
          )),
    );
  }
}
