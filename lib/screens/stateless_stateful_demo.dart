import 'package:flutter/material.dart';

/// Demonstrates the difference between Stateless and Stateful widgets
class StatelessStatefulDemo extends StatelessWidget {
  const StatelessStatefulDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless vs Stateful Demo"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeaderWidget(),
            SizedBox(height: 30),
            CounterWidget(),
          ],
        ),
      ),
    );
  }
}

/// Stateless widget used to display the title/header
class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Interactive Counter App",
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

/// Stateful widget responsible for handling counter updates
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  /// Increments the counter value
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Counter Value: $counter",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: incrementCounter,
          child: const Text("Increase Counter"),
        ),
      ],
    );
  }
}