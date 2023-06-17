import 'package:flutter/material.dart';

import 'constants.dart';
import 'custom_icon_button.dart';
import 'custom_spacer.dart';
import 'text_widget.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({
    super.key,
  });

  static Size get size => const Size.fromHeight(kToolbarHeight);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const CircleAvatar(
            backgroundColor: kBackground,
            child: TextWidget('A', color: kWhite),
          ),
          const CustomSpacer(
            isHorizontal: true,
            size: 7,
          ),
          const TextWidget('Adriano Bitencourt', fontWeight: FontWeight.bold),
          const CustomSpacer(isFull: true),
          CustomIconButton(onPressed: () {}, icon: Icons.more_vert),
        ],
      ),
    );
  }
}
