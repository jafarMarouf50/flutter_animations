import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double _area = 100;

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
          children: [_animatedContainer(),_resizeContainerButton()],
        ),
      ),
    );
  }

  Widget _animatedContainer() {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      width: _area,
      height: _area,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
    );
  }

  Widget _resizeContainerButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      onPressed: () {
        _area = _area == 200 ? 150 : 200;
        setState(() {});
      },
      child: Text("Resize Container", style: TextStyle(color: Colors.white)),
    );
  }
}
