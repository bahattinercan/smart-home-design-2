import 'package:flutter/material.dart';
import 'package:smart_home_deneme_2/items/device_card.dart';
import 'package:smart_home_deneme_2/utils/const_colors.dart';
import 'package:smart_home_deneme_2/widgets/custom_icon_button.dart';
import 'package:smart_home_deneme_2/widgets/custom_switch.dart';

class RoomTabBarItems extends StatefulWidget {
  const RoomTabBarItems({Key? key}) : super(key: key);

  @override
  State<RoomTabBarItems> createState() => _RoomTabBarItemsState();
}

class _RoomTabBarItemsState extends State<RoomTabBarItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: MainColors.grey,
                  borderRadius: BorderRadius.circular(18),
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
                    SizedBox(height: 20),
                    Text(
                      "18°",
                      style: TextStyle(color: MainColors.greenColor, fontSize: 24),
                    ),
                    SizedBox(height: 10),
                    Text("Temperature", style: TextStyle(color: MainColors.veryLightGrey)),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 120,
                          child: Center(child: Text("Automatic")),
                          decoration: BoxDecoration(
                            color: MainColors.lightGrey,
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 60,
                          child: Center(child: Icon(Icons.remove)),
                          decoration: BoxDecoration(
                            color: MainColors.lightGrey,
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 40,
                          width: 60,
                          child: Center(child: Icon(Icons.add)),
                          decoration: BoxDecoration(
                            color: MainColors.lightGrey,
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DeviceCard(),
                  DeviceCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
