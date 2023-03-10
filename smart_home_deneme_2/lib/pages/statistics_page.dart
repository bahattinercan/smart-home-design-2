import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smart_home_deneme_2/bar_chart_3.dart';
import 'package:smart_home_deneme_2/pages/dropdownbutton.dart';
import 'package:smart_home_deneme_2/utils/const_colors.dart';
import 'package:smart_home_deneme_2/widgets/custom_icon_button.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Power Statistics",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "See power expense here!",
                        style: TextStyle(color: MainColors.veryLightGrey),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(color: MainColors.grey, borderRadius: BorderRadius.circular(100)),
                    child: CustomDropDown(items: ["This Month"]),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 40,
              child: BarChart3(),
            ),
            Expanded(
              flex: 45,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Device Power Consumtion",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.all(5),
                        //color: Colors.purple,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      color: MainColors.grey,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.air),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Air Condition"),
                                    SizedBox(height: 5),
                                    Text(
                                      "2 unit",
                                      style: TextStyle(color: MainColors.veryLightGrey),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "45kWh",
                              style: TextStyle(color: MainColors.greenColor, fontSize: 16),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
