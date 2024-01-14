import 'package:flutter/material.dart';

const iconMock = [
  IconModel(id: '1', icon: Icons.home),
  IconModel(id: '2', icon: Icons.ac_unit),
  IconModel(id: '3', icon: Icons.access_alarm),
  IconModel(id: '4', icon: Icons.access_time),
  IconModel(id: '5', icon: Icons.accessibility),
  IconModel(id: '6', icon: Icons.account_balance),
  IconModel(id: '7', icon: Icons.account_balance_wallet),
  IconModel(id: '8', icon: Icons.account_box),
  IconModel(id: '9', icon: Icons.account_circle),
  IconModel(id: '10', icon: Icons.add),
];

class IconModel {
  final String id;
  final IconData icon;

  const IconModel({required this.id, required this.icon});
}

class IconPicker extends StatefulWidget {
  final List<IconModel> iconList;
  final Function(IconModel) onTap;

  const IconPicker({super.key, required this.iconList, required this.onTap});

  @override
  State<IconPicker> createState() => _IconPickerState();
}

class _IconPickerState extends State<IconPicker> {
  late int _selectedIndex;

  @override
  void initState() {
    _selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            setState(() {
              _selectedIndex = index;
              widget.onTap(widget.iconList[index]);
            });
          },
          child: Container(
            width: 70,
            height: 68,
            decoration: BoxDecoration(
              border: Border.all(
                color: _selectedIndex == index ? const Color(0xFFACA8A1) : const Color(0xFFF1F1F1),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(widget.iconList[index].icon),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 14);
      },
      itemCount: 10,
    );
  }
}
