import 'package:flutter/material.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Counter With Tween ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: TweenAnimationBuilder(
              curve: Curves.easeIn,
              tween: IntTween(begin: 0, end: 100),
              duration: Duration(seconds: 5),
              builder: (context, value, child) {
                return Text(
                  "$value",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 120,
                    fontWeight: FontWeight.w700,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
