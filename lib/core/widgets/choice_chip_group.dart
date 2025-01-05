import 'package:flutter/material.dart';

class ChoiceChipGroup extends StatefulWidget {
  final List<String> options;

  const ChoiceChipGroup({super.key, required this.options});

  @override
  State<ChoiceChipGroup> createState() => _ChoiceChipGroupState();
}

class _ChoiceChipGroupState extends State<ChoiceChipGroup> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.options.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ChoiceChip(
            label: Text(widget.options[index]),
            selected: selectedIndex == index,
            showCheckmark: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100), // Rounded border
            ),
            selectedColor: Colors.green[50],
            onSelected: (isSelected) {
              setState(() {
                selectedIndex = index;
              });
            },
            backgroundColor: Colors.transparent,
            labelStyle: TextStyle(
              color: selectedIndex == index ? Colors.green : Colors.grey,
              fontWeight: FontWeight.w500,
            ),
            side: BorderSide(
              color: selectedIndex == index ? Colors.green : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
