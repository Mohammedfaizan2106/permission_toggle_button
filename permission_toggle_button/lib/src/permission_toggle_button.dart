import 'package:flutter/material.dart';

class PermissionToggleButton extends StatelessWidget {
  final String title;
  final String? subTitle; // Made optional
  final bool value;
  final IconData? icon;
  final Color? activeColor;
  final Color? activeTrackColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final void Function(bool)? onChanged;

  const PermissionToggleButton({
    Key? key,
    required this.icon,
    required this.value,
    required this.title,
    this.subTitle,
    this.activeColor,
    this.activeTrackColor,
    this.fontSize,
    this.fontWeight,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: activeColor ?? const Color(0xffFF7F7B),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Icon(icon, color: Colors.white, size: 35),
            ),
          ),
          SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: fontWeight ?? FontWeight.w700,
                  fontSize: fontSize ?? 16,
                ),
              ),
              if (subTitle != null) // Show subtitle if present
                Text(
                  subTitle!,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ],
          ),
          const Spacer(),
          Switch(
            value: value,
            activeColor: Colors.white,
            activeTrackColor: activeTrackColor ?? const Color(0xffFF7F7B),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
