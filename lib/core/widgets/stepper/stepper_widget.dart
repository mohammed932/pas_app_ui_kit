import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  final List<Widget> steps;
  final int currentStep;
  final Function(int) onPageChanged;
  const StepperWidget({
    super.key,
    required this.steps,
    required this.currentStep,
    required this.onPageChanged,
  });

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  final PageController _pageController = PageController();
  @override
  initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant StepperWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Navigate to the currentStep when it changes
    if (widget.currentStep != oldWidget.currentStep) {
      _pageController.animateToPage(
        widget.currentStep,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: List.generate(
            widget.steps.length,
            (index) => Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                height: 6,
                decoration: BoxDecoration(
                  color: index <= widget.currentStep
                      ? Colors.teal
                      : Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (value) => widget.onPageChanged(value),
            itemBuilder: (context, index) {
              return widget.steps[index];
            },
          ),
        )
      ],
    );
  }
}
