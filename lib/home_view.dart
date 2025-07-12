import 'package:flutter/material.dart';
import 'package:flutter_animation/counter_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

        title: Text(
          'Animated Foo Widgets',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            _animatedContainer(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_scaleUpButton(),SizedBox(width: 50,),_scaleDownButton()],
            ),
            _navigateToCounterView(),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _animatedContainer() {
    return AnimatedScale(
      scale: _scale,
      duration: Duration(seconds: 2),
      curve: Curves.easeIn,
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

  Widget _scaleUpButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      onPressed: () {
        _scale = 1.5;
        setState(() {});
      },
      child: Text("Scale Up", style: TextStyle(color: Colors.white)),
    );
  }

  Widget _scaleDownButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      onPressed: () {
        _scale = 0.5;
        setState(() {});
      },
      child: Text("Scale Down", style: TextStyle(color: Colors.white)),
    );
  }

  Widget _navigateToCounterView() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CounterView()),
        );
      },
      child: Text("Move to Counter", style: TextStyle(color: Colors.white)),
    );
  }
}
