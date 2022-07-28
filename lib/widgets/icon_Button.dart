import 'package:flutter/material.dart';

class IconsButtons extends StatefulWidget {
  final IconData iconsname;
  const IconsButtons({Key? key, required this.iconsname}) : super(key: key);

  @override
  State<IconsButtons> createState() => _IconsButtonsState();
}

class _IconsButtonsState extends State<IconsButtons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(widget.iconsname),
      onTap: () {
        print('tapped');
      },
    );
  }
}
