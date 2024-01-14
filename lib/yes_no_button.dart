import 'package:flutter/material.dart';

class YesNoButton extends StatefulWidget {
  final Function(bool) onTap;
  const YesNoButton({super.key, required this.onTap});

  @override
  State<YesNoButton> createState() => _YesNoButtonState();
}

class _YesNoButtonState extends State<YesNoButton> {
  late bool _value;

  @override
  void initState() {
    _value = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final selectedChild = Container(
      height: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.black,
      ),
      child: Center(
        child: Text(
          _value ? 'Yes' : 'No',
          style: const TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Container(
      width: double.infinity,
      height: 52,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: Row(
        children: [
          Expanded(
            child: _value
                ? selectedChild
                :  InkWell(
                    onTap: () {
                      setState(() {
                        _value = !_value;
                        widget.onTap(_value);
                      });
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Center(child: Text('Yes', textAlign: TextAlign.center)),
                    ),
                  ),
          ),
          Expanded(
            child: !_value
                ? selectedChild
                : InkWell(
                    onTap: () {
                      setState(() {
                        _value = !_value;
                        widget.onTap(_value);
                      });
                    },
                    child: const SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: Center(child: Text('No', textAlign: TextAlign.center)),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
