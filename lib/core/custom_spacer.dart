import 'package:flutter/material.dart';

class CustomSpacer extends StatelessWidget {
  final double? height;
  final double? width;

  /// Altura padrão de 16,
  /// Largura não está definido
  const CustomSpacer({
    super.key,
    this.height = 16,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
