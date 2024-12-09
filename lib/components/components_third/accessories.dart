﻿import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';

class Accessories extends StatelessWidget {
  final Widget accessorio;
  const Accessories({super.key, required this.accessorio});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0), 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AccessorieWidget(accessorie: accessorio),
          AccessorieWidget(accessorie: accessorio),
          AccessorieWidget(accessorie: accessorio),
          AccessorieWidget(accessorie: accessorio),
        ],
      ),
    );
  }
}

class AccessorieWidget extends StatelessWidget {
  final Widget accessorie;
  const AccessorieWidget({super.key, required this.accessorie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
          child: IconTheme.merge(
            data: IconThemeData(color: ColorsApp.fontePrimaria, size: 24),
            child: accessorie,
          ),
        ),
    );
  }
}
