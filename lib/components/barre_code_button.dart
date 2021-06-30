import 'package:flutter/material.dart';
import 'package:yuka/res/app_icons.dart';

class BarreCodeButton extends StatelessWidget {
  const BarreCodeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        AppIcons.barcode,
      ),
    );
  }
}
