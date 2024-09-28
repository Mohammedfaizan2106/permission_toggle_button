import 'package:flutter/material.dart';

class PermissionToggle extends StatefulWidget {
  final String title;
  final String? subTitle; // Made optional
  final bool value;
  final IconData? icon;
  final Color? activeColor;
  final Color? activeTrackColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final void Function(bool)? onChanged;

  const PermissionToggle({
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
  State<PermissionToggle> createState() => _PermissionToggleState();
}

class _PermissionToggleState extends State<PermissionToggle> {
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
              color: widget.activeColor ?? const Color(0xffFF7F7B),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Icon(widget.icon, color: Colors.white, size: 35),
            ),
          ),
          SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontWeight: widget.fontWeight ?? FontWeight.w700,
                  fontSize: widget.fontSize ?? 16,
                ),
              ),
              if (widget.subTitle != null) // Show subtitle if present
                Text(
                  widget.subTitle!,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ],
          ),
          const Spacer(),
          Switch(
            value: widget.value,
            activeColor: Colors.white,
            activeTrackColor: widget.activeTrackColor ?? const Color(0xffFF7F7B),
            onChanged: widget.onChanged,
          ),
        ],
      ),
    );
  }
}
