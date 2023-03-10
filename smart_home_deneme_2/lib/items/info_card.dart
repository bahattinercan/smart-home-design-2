import 'package:flutter/material.dart';
import 'package:smart_home_deneme_2/utils/const_colors.dart';
import 'package:smart_home_deneme_2/widgets/custom_icon_button.dart';

class InfoCard extends StatefulWidget {
  const InfoCard({super.key});

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(icon: Icons.wb_sunny_rounded),
          SizedBox(height: 10),
          Text(
            "Current Weather",
            style: TextStyle(color: MainColors.veryLightGrey),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text("Mostly Clear | ", style: TextStyle(fontSize: 16)),
              Text(
                "24°",
                style: TextStyle(
                  fontSize: 18,
                  color: MainColors.greenColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
