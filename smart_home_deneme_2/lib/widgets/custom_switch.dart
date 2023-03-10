import 'package:flutter/cupertino.dart';
import 'package:smart_home_deneme_2/utils/const_colors.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: true,
      onChanged: (value) {},
      activeColor: MainColors.greenColor,
      thumbColor: MainColors.grey,
      trackColor: MainColors.lightGrey,
    );
  }
}
