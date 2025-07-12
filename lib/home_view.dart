import 'package:flutter/material.dart';
import 'package:flutter_animation/counter_view.dart';

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
            _resizeContainerButton(),
            _navigateToCounterView(),
            Spacer(),
          ],
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
