import 'package:flutter/material.dart';

class BasicHeroAnimation extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Hero Animation RD"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  // this scaffold IS the second screen that is shown when the baseball cap is tapped
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text("Baseball Bat Page"),
                      backgroundColor: Colors.amberAccent,
                    ),
                    body: Container(
                      padding: const EdgeInsets.all(8.0), // this means the picture will be at least 8.0 from any/all sides of the container edges
                      alignment: Alignment.center,
                      color: Colors.amber, // the new background color will be emphasizing we're on a new route
                      child: Hero(
                        tag: 'baseball',
                        child: SizedBox(
                          width: 200.0,
                          child: Image.asset(
                            'images/baseball_bat.png',
                          ),
                        ),
                      ),
                    ),
                  );
                }
              ),
            );
          }, // this will be where the navigator gives us a second screen for the hero widget
          child: Hero(
            tag: 'baseball',
            child: Image.asset(
              'images/baseball_cap.png',
            ),
          ), // this hero widget is shown to us on the first screen
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: BasicHeroAnimation()));
}