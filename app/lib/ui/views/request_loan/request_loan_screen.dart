import 'package:app/ui/components/input.dart';
import 'package:app/ui/extensions/build_context_utils.dart';
import 'package:app/ui/styles/colors.dart';
import 'package:app/ui/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../components/header.dart';
import 'components_this_screen/custom_toggle.dart';

class RequestLoanScreen extends StatelessWidget {
  const RequestLoanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Column(
            children: [
              const Header(),
              SizedBox(
                height: context.mediaHeight * 0.03,
              ),
              const RequestLoan()
            ],
          ),
        ),
      ),
    );
  }
}

class RequestLoan extends StatefulWidget {
  const RequestLoan({Key? key}) : super(key: key);

  @override
  State<RequestLoan> createState() => _RequestLoanState();
}

class _RequestLoanState extends State<RequestLoan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.mediaWidth * 0.9,
      height: context.mediaHeight * 0.3,
      decoration: BoxDecoration(
          color: AppColors.onPrimary, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Input(
              title: "Name Loan",
              label: "Enter your name loan",
              type: TextInputType.text,
              width: context.mediaWidth * 0.8),
          const CustomToggle(),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  "R\$",
                  style: GoogleFonts.poppins(
                    textStyle: context.appTextStyles.textSmallCommonBlack,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "2000",
                style: GoogleFonts.poppins(
                    textStyle: context.appTextStyles.textBigBoldBlack),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              width: context.mediaWidth * 0.8,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2500,
              percent: 1.0,
              center: const Text("R\$150 until R\$2000"),
              progressColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}




