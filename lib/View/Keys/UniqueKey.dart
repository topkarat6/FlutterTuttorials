import 'package:flutter/material.dart';

class UniqueKeyy extends StatefulWidget {
  UniqueKeyy({required this.key}) : super(key: key);
  GlobalKey? key;
  @override
  State<UniqueKeyy> createState() => _UniqueKeyyState();
}

class _UniqueKeyyState extends State<UniqueKeyy> {
  List<Widget>? items;

  @override
  void initState() {
    items = [
      StatelessColorfulTile(
        text: "1",
        color: Colors.red,
      ),
      StatelessColorfulTile(
        text: "2",
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    ];
    super.initState();
  }

  swapTiles() {
    setState(() {
      items!.insert(1, items!.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: UniqueKey(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.key!.currentState!.build(context);
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(),
      body: Row(
        children: items!,
      ),
    );
  }
}

class StatelessColorfulTile extends StatelessWidget {
  StatelessColorfulTile({required this.text, required this.color});
  String text;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(
          70.0,
        ),
        child: Text(text),
      ),
    );
  }
}
