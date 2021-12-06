import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: home(),
  ));
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  Color _color = Colors.black26;
  get color => _color;
  set color(value) => setState(() {
        _color = value;
      });
  double _size = 50.0;
  get size => _size;
  set size(value) => setState(() {
        _size = value;
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Text("Hello World", style: TextStyle(color: color, fontSize: size)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[

          _bulid("Red", Colors.red),
          _bulid("Blue", Colors.blue)
        ],
      ),
      bottomSheet: SizedBox(
        height: 100,
        child: Slider(
          
          value: size,
          max: 100,
          min: 10,
          onChanged: (value) => size = value,
        ),
      ),
    );
  }

  FloatingActionButton _bulid(String titel, Color col) {
    return FloatingActionButton.extended(
      onPressed: () => color = col,
      label: Text(titel),
      backgroundColor: col,
    );
  }
}
