import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pas_app/features/home/presentation/pages/others/page1.dart';

import '../../../../../core/widgets/stepper/stepper_widget.dart';
import 'page2.dart';
import 'page3.dart';

class HomeTestScreen extends StatefulWidget {
  const HomeTestScreen({super.key});

  @override
  State<HomeTestScreen> createState() => _HomeTestScreenState();
}

class _HomeTestScreenState extends State<HomeTestScreen> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: StepperWidget(
        currentStep: _currentPage,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        steps: [
          PageOne(
            onTap: () {
              setState(() {
                _currentPage++;
              });
            },
          ),
          PageTwo(
            onNext: () {
              setState(() => _currentPage++);
            },
            onPrevious: () {
              setState(() => _currentPage--);
            },
          ),
          const PageThree(),
        ],
      ),
    );
  }
}
