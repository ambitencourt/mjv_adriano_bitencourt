import 'package:flutter/material.dart';

import '../../components/constants.dart';
import '../../components/custom_icon_button.dart';
import '../../components/custom_spacer.dart';
import '../../components/text_widget.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: kWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
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
      ),
    );
  }
}
