import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // reference our box
  final _myBox = Hive.box('mybox');

  // write data
  void writeData() {
    _myBox.put(1, 'Data');
  }

  // read data
  void readData() {
    print(_myBox.get(1));
  }

  // delete data
  void deleteData() {
    _myBox.delete(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: writeData,
              color: Colors.blue[200],
              child: const Text('Write'),
            ),
            MaterialButton(
              onPressed: readData,
              color: Colors.blue[200],
              child: const Text('Read'),
            ),
            MaterialButton(
              onPressed: deleteData,
              color: Colors.blue[200],
              child: const Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
