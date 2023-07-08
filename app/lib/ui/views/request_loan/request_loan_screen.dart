import 'package:app/ui/extensions/build_context_utils.dart';
import 'package:app/ui/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../components/header.dart';
import '../../components/status_score.dart';
import 'components_this_screen/request_loan.dart';

class RequestLoanScreen extends StatelessWidget {
  const RequestLoanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Header(),
                SizedBox(
                  height: context.mediaHeight * 0.03,
                ),
                const RequestLoan(),
                SizedBox(
                  height: context.mediaHeight * 0.03,
                ),
                const TermContainer(),
                SizedBox(
                  height: context.mediaHeight * 0.03,
                ),
                const StatusScore()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TermContainer extends StatelessWidget {
  const TermContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.mediaHeight * 0.4,
      width: context.mediaWidth * 0.9,
      decoration: BoxDecoration(
          color: AppColors.onPrimary, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: context.mediaWidth * 0.8,
            height: context.mediaHeight * 0.15,
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(16)),
            child: const ButtonRead(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundCheckBox(
                  onTap: (selected) {},
                ),
                SizedBox(
                  width: context.mediaWidth * 0.6,
                  child: Text(
                    "I agree with the term of responsibility when applying for the loan with QUESTRADE.",
                    style: GoogleFonts.poppins(
                        textStyle: context.styleModifier.textMediumCommonGray),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              width: context.mediaWidth * 0.8,
              height: 40,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(16)),
              child: Text(
                "Request",
                style: GoogleFonts.poppins(
                    textStyle: context.styleModifier.textMediumBoldWhite),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonRead extends StatelessWidget {
  const ButtonRead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Statement of Responsibility",
                style: GoogleFonts.poppins(
                    textStyle: context.styleModifier.textMediumCommonWhite),
              ),
              GestureDetector(
                // Logic
                child: Container(
                  alignment: Alignment.center,
                  width: context.mediaWidth * 0.3,
                  height: 30,
                  decoration: BoxDecoration(
                      color: AppColors.onPrimary,
                      borderRadius: BorderRadius.circular(16)),
                  child: Text(
                    "Read",
                    style: GoogleFonts.poppins(
                        textStyle: context.styleModifier.textMediumBoldBlack),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 60.34,
            height: 68,
            child: Image.asset('assets/term.png'),
          ),
        ],
      ),
    );
  }
}
