import 'package:cream_ui_test/app_text_field.dart';
import 'package:cream_ui_test/goal_slider.dart';
import 'package:cream_ui_test/icon_list.dart';
import 'package:cream_ui_test/set_goal_app_bar.dart';
import 'package:cream_ui_test/yes_no_button.dart';
import 'package:flutter/material.dart';

import 'app_button.dart';

class TestScreen extends StatefulWidget {
  final String title;

  const TestScreen({
    super.key,
    required this.title,
  });

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  double sliderValue = 0.0;
  final goalNameController = TextEditingController();
  final goalAmountController = TextEditingController();
  final goalDateController = TextEditingController();

  void setSliderValue(double value) {
    setState(() {
      sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: SetGoalAppBar(
        step: 1,
        title: 'Set a goal',
        onBackTap: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: AppTextField(
                label: 'GOAL NAME',
                hint: 'Buy a house',
                controller: goalNameController,
              ),
            ),
            const SizedBox(height: 40),
            const InputTitle(title: 'PICK AN ICON FOR YOUR GOAL'),
            const SizedBox(height: 12),
            SizedBox(
              height: 70,
              child: IconPicker(
                onTap: (iconModel) {
                  /// Do something with the selected icon
                },
                iconList: iconMock,
              ),
            ),
            const SizedBox(height: 40),
            const InputTitle(title: 'IS THIS A RECURRING GOAL?'),
            const SizedBox(height: 12),
            YesNoButton(
              onTap: (value) {
                /// Do something with the selected value
              },
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: AppTextField(
                label: 'HOW MUCH WOULD YOU LIKE TO SAVE?',
                hint: '£40,000',
                controller: goalAmountController,
              ),
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: AppTextField(
                label: 'DO YOU WANT TO COMPLETE THIS GOAL ON A SET DATE?',
                hint: '30 June 2027',
                controller: goalDateController,
              ),
            ),
            const SizedBox(height: 46),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'How much of your existing savings do you want to allocate to this goal?',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            const SizedBox(height: 12),
            GoalSlider(
              totalAmount: 100000,
              onChanged: (value) {
                /// Do something with the selected value
              },
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: AppButton(
                title: 'Continue',
                onTap: () {
                  /// Do something when the button is tapped
                },
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class InputTitle extends StatelessWidget {
  final String title;

  const InputTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
