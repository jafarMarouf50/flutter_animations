import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double _turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animated Foo Widgets',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [_animatedContainer(), _resizeContainerButton()],
        ),
      ),
    );
  }

  Widget _animatedContainer() {
    return AnimatedRotation(
      duration: Duration(seconds: 2),
      curve: Curves.easeIn,
      turns: _turns,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _resizeContainerButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      onPressed: () {
        _turns += 1.25;
        setState(() {});
      },
      child: Text("Rotate Container", style: TextStyle(color: Colors.white)),
    );
  }
}
