import 'package:flutter/material.dart';
import 'package:slider_controller/slider_controller.dart';
import 'package:smart_home_deneme_2/items/device_card.dart';
import 'package:smart_home_deneme_2/utils/const_colors.dart';
import 'package:smart_home_deneme_2/widgets/custom_switch.dart';

class DevicePage extends StatefulWidget {
  const DevicePage({super.key});

  @override
  State<DevicePage> createState() => _DevicePageState();
}

class _DevicePageState extends State<DevicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Expanded(
              flex: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(color: MainColors.grey, borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.exit_to_app),
                    ),
                  ),
                  Text(
                    "Living Room",
                    style: TextStyle(fontSize: 18),
                  ),
                  Container(
                    decoration: BoxDecoration(color: MainColors.grey, borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_rounded),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 60,
              child: Container(
                decoration: BoxDecoration(color: MainColors.grey, borderRadius: BorderRadius.circular(24)),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.air_rounded, color: Colors.black),
                                ),
                                decoration: BoxDecoration(
                                  color: MainColors.greenColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              SizedBox(width: 15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Air Conditioner",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "2 unit",
                                    style: TextStyle(color: MainColors.veryLightGrey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CustomSwitch(),
                        ],
                      ),
                      Expanded(
                        flex: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "24°",
                              style: TextStyle(
                                color: MainColors.greenColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 50,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Temperature",
                              style: TextStyle(
                                fontSize: 16,
                                color: MainColors.veryLightGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "16",
                              style: TextStyle(color: MainColors.veryLightGrey),
                            ),
                            Text(
                              "32",
                              style: TextStyle(color: MainColors.veryLightGrey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      SliderController(
                        value: 18,
                        onChanged: (value) {
                          //developer.log('Slider Value : $value');
                        },
                        min: 16.0,
                        max: 32.0,
                        sliderDecoration: SliderDecoration(
                          inactiveColor: MainColors.lightGrey,
                          activeColor: MainColors.greenColor,
                          thumbColor: MainColors.darkGrey,
                          borderRadius: 25.0,
                          height: 25.0,
                          isThumbVisible: false,
                          thumbHeight: 5.0,
                          thumbWidth: 5.0,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          Container(
                            height: 40,
                            width: 120,
                            child: Center(child: Text("Swing")),
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
            ),
            Expanded(
              flex: 25,
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return DeviceCard();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
