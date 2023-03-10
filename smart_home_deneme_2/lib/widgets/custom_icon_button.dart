import 'package:flutter/material.dart';
import 'package:smart_home_deneme_2/utils/const_colors.dart';

// ignore: must_be_immutable
class CustomIconButton extends StatefulWidget {
  CustomIconButton({
    Key? key,
    required this.icon,
    this.isActive,
    this.onTap,
    this.padding,
  }) : super(key: key);
  dynamic icon;
  bool? isActive;
  Function? onTap;
  EdgeInsets? padding;
  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: MainColors.grey, borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        padding: widget.padding == null ? EdgeInsets.all(8) : widget.padding!,
        onPressed: () {
          if (widget.isActive != null) setState(() => widget.isActive = !widget.isActive!);
          if (widget.onTap != null) widget.onTap!();
        },
        icon: Icon(
          widget.icon,
          color: widget.isActive == null
              ? Colors.white
              : widget.isActive!
                  ? MainColors.greenColor
                  : Colors.white,
        ),
      ),
    );
  }
}
