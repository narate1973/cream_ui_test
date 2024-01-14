import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GoalSlider extends StatefulWidget {
  final double totalAmount;
  final Function(double value) onChanged;

  const GoalSlider({super.key, required this.onChanged, required this.totalAmount});

  @override
  State<GoalSlider> createState() => _GoalSliderState();
}

class _GoalSliderState extends State<GoalSlider> {
  double sliderValue = 0.0;

  void setSliderValue(double value) {
    setState(() {
      sliderValue = value;
      widget.onChanged.call(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                NumberFormat.currency(locale: "en_UK", symbol: "£").format(widget.totalAmount),
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(width: 30),
            ],
          ),
        ),
        Slider(
          thumbColor: const Color(0xff4E00F5),
          activeColor: const Color(0xff4E00F5),
          inactiveColor: const Color(0xffD9D9D9),
          value: sliderValue,
          onChanged: setSliderValue,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                NumberFormat.currency(locale: "en_UK", symbol: "£").format(widget.totalAmount * sliderValue),
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                NumberFormat.currency(locale: "en_UK", symbol: "£").format(widget.totalAmount),
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
