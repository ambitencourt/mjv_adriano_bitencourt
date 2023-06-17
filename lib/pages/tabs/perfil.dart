import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/constants.dart';
import '../../components/custom_spacer.dart';
import '../../components/text_widget.dart';
import '../../stores/home_store.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          const TextWidget('Minhas estatísticas', fontSize: 18),
          const CustomSpacer(),
          Consumer<HomeStore>(builder: (context, store, _) {
            return Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.list),
                    const CustomSpacer(
                      isHorizontal: true,
                      size: 8,
                    ),
                    TextWidget('Total de notas: ${store.count}', fontSize: 13),
                  ],
                ),
                const CustomSpacer(),
                Row(
                  children: [
                    const Icon(Icons.list),
                    const CustomSpacer(
                      isHorizontal: true,
                      size: 8,
                    ),
                    TextWidget('Concluídas: ${store.count}', fontSize: 13),
                  ],
                ),
              ],
            );
          }),
          const CustomSpacer(),
          const Divider(),
          const CustomSpacer(),
          const TextWidget('Configurações', fontSize: 18),
          const CustomSpacer(),
          Consumer<HomeStore>(builder: (context, store, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextWidget('Tema Escuro', fontSize: 13),
                Switch(
                  value: store.theme == ThemeMode.dark,
                  onChanged: (bool isDark) {
                    context.read<HomeStore>().toggleTheme(isDark);
                  },
                  activeColor: kBackground,
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
