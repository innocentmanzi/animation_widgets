import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Opacity ',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Opacity '),
        ),
        body: Center(
          child: AnimatedOpacityDemo(),
        ),
      ),
    );
  }
}

class AnimatedOpacityDemo extends StatefulWidget {
  @override
  _AnimatedOpacityDemoState createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {
  bool _visible = true;

  void _toggleOpacity() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleOpacity,
      child: AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
        child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(
            'Tap me!',
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
