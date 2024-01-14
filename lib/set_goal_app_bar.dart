import 'package:flutter/material.dart';

class SetGoalAppBar extends PreferredSize {
  final int step;
  final String title;
  final VoidCallback onBackTap;

  SetGoalAppBar({
    super.key,
    required this.step,
    required this.title,
    required this.onBackTap,
  }) : super(
          preferredSize: const Size.fromHeight(120),
          child: Builder(builder: (context) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 27),
              color: Theme.of(context).colorScheme.primary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).padding.top),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: onBackTap,
                        child: const Text('< BACK', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                      Text('$step/2', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(height: 9),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            );
          }),
        );
}
