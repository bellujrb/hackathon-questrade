import 'package:app/ui/extensions/build_context_utils.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';

class CardWithScore extends StatelessWidget {
  const CardWithScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.mediaHeight * 0.2,
      width: context.mediaWidth * 0.8,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.83, -0.55),
          end: Alignment(-0.83, 0.55),
          colors: [Color(0xFF2C4F2D), Colors.black],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: <BoxShadow>[
          BoxShadow(
            color: AppColors.onPrimary,
            blurRadius: 24,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
    );
  }
}