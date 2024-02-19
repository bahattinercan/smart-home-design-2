import 'package:flutter/material.dart';
import 'package:smart_home_deneme_2/utils/const_colors.dart';
import 'package:smart_home_deneme_2/widgets/custom_icon_button.dart';
import 'package:smart_home_deneme_2/widgets/custom_switch.dart';

class DeviceCard extends StatefulWidget {
  const DeviceCard({super.key});

  @override
  State<DeviceCard> createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        //color: MainColors.grey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(icon: Icons.light_rounded, isActive: true),
              CustomSwitch(),
            ],
          ),
          SizedBox(height: 15),
          Text("Smart Lamp", style: TextStyle(fontSize: 18)),
          SizedBox(height: 5),
          Text(
            "Active for 8h",
            style: TextStyle(color: MainColors.veryLightGrey),
          ),
        ],
      ),
    );
  }
}
