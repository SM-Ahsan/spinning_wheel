import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:spinning_wheel/my_spinning_wheel.dart';

class SpinningWheelPage extends StatefulWidget {
  const SpinningWheelPage({super.key});

  @override
  SpinningWheelPageState createState() => SpinningWheelPageState();
}

class SpinningWheelPageState extends State<SpinningWheelPage> {
  StreamController<int> selected = StreamController<int>();

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  MySpinController mySpinController = MySpinController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xff0C1B3A)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MySpinner(
              mySpinController: mySpinController,
              wheelSize: MediaQuery.of(context).size.width * 0.8,
              itemList: [
                SpinItem(label: 'Task 1',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color:  Colors.black),
                SpinItem(label: 'Task 2',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xff9e00ff)),
                SpinItem(label: 'Task 3',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xff00a0ff)),
                SpinItem(label: 'Task 4',labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold), color: const Color(0xffffe000)),
                SpinItem(label: 'Task 5',labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold), color: Colors.white),
                SpinItem(label: 'Task 6',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xffde0000)),
                SpinItem(label: 'Task 7',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xff41d849)),
                SpinItem(label: 'Task 9',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xffff9c00)),
                SpinItem(label: 'Task 10',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xffff9c00)),
                SpinItem(label: 'Task 11',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xffff9c00)),
                SpinItem(label: 'Task 12',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xffff9c00)),
                SpinItem(label: 'Task 13',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xffff9c00)),
                SpinItem(label: 'Task 14',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xffff9c00)),
                SpinItem(label: 'Task 15',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xffff9c00)),
                SpinItem(label: 'Task 16',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xffff9c00)),
                SpinItem(label: 'Task 17',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xffff9c00)),
                SpinItem(label: 'Task 18',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xffff9c00)),
                SpinItem(label: 'Task 19',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xffff9c00)),
                SpinItem(label: 'Task 20',labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), color: const Color(0xffff9c00)),
              ],
              onFinished: (int index) {

              },
            ),
            //circleOverlay(size: Get.width * 0.6,data: ['Apple','Banana','Cucumber','Durian']),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () async{
              int rdm = Random().nextInt(6);
              await mySpinController.spinNow(luckyIndex: rdm+1,totalSpin: 10,baseSpinDuration: 20);
            }, child: const Text('Spin Now')),
          ],
        ),
      ),
    );
  }
}