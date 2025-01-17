import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChipModel {
  final String label;
  final String value;
  ChipModel({required this.label, required this.value});
}

class ChoiceChipGroup extends StatefulWidget {
  final List<ChipModel> options;
  final Function(String) onSelected;
  const ChoiceChipGroup({
    super.key,
    required this.options,
    required this.onSelected,
  });

  @override
  State<ChoiceChipGroup> createState() => _ChoiceChipGroupState();
}

class _ChoiceChipGroupState extends State<ChoiceChipGroup> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        itemCount: widget.options.length,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 8.w),
            child: ChoiceChip(
              label: Text(widget.options[index].label),
              selected: selectedIndex == index,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              showCheckmark: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100), // Rounded border
              ),
              selectedColor: Colors.green[50],
              onSelected: (isSelected) {
                setState(() {
                  selectedIndex = index;
                });
                widget.onSelected(widget.options[index].value);
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
          );
        },
      ),
    );
  }
}
