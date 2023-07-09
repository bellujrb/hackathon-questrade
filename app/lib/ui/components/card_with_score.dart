import 'package:app/ui/extensions/build_context_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../styles/colors.dart';

class CardWithScore extends StatelessWidget {
  const CardWithScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.mediaHeight * 0.3,
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Available for Loan",
                    style: GoogleFonts.poppins(
                        textStyle: context.styleModifier.textMediumCommonWhite),
                  ),
                  Text(
                    "USD 25,000",
                    style: GoogleFonts.poppins(
                        textStyle: context.styleModifier.textMediumBoldWhite),
                  ),
                ],
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/pork.png'),
              )
            ],
          ),
          CircularPercentIndicator(
            radius: 60,
            animation: true,
            animationDuration: 1200,
            lineWidth: 15.0,
            percent: 0.7,
            center: SizedBox(
              width: 60,
              child: Text(
                "700/1000 in score",
                style: GoogleFonts.poppins(
                  textStyle: context.styleModifier.textMediumCommonWhite
                ),
              ),
            ),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.yellow,
            progressColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
