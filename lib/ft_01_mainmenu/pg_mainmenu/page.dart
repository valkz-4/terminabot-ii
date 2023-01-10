import 'package:flutter/material.dart';
import 'package:terminabot_ii/gen/assets.gen.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            SizedBox(height: 50),
            AppImage(),
            SizedBox(height: 20),
            AppIntro(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class AppImage extends StatelessWidget {
  const AppImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 320,
        width: 320,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Image.asset(Assets.images.terminated.path),
        ),
      ),
    );
  }
}

class AppIntro extends StatelessWidget {
  const AppIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: SizedBox(
        height: 50,
        width: 400,
        child: Center(
          child: Text('Welcome to Terminabot-2. Now die.'),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
