import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../core/text_widget.dart';

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
            const SizedBox(
              width: 7,
            ),
            const TextWidget('Adriano Bitencourt', fontWeight: FontWeight.bold),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
      ),
    );
  }
}
