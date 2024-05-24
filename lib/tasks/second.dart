import 'package:flutter/material.dart';

class ComputationScreen extends StatefulWidget {
  @override
  State<ComputationScreen> createState() => _ComputationScreenState();
}

class _ComputationScreenState extends State<ComputationScreen> {
  int? newresult;
  bool isloading = true;

  @override
  void initState() {
    super.initState();
    waiting();
  }

  void waiting() async {
    print('boshlandi');
    int result = await heavyComputation();

    newresult = result;
    isloading = false;
    setState(() {});
    print('tugadi...$newresult');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Heavy Computation')),
      body: Center(
        child: isloading
            ? CircularProgressIndicator()
            : Text('Result: $newresult.'),
      ),
    );
  }

  Future<int> heavyComputation() async {
    // Simulate a heavy computation
    int sum = 0;
    int number = 1000000;
    for (int i = 0; i < number; i++) {
      sum += i;
      if (i % number == 0) {
        await Future.delayed(
          Duration(milliseconds: 1),
        );
      }
    }
    return sum;
  }
}
