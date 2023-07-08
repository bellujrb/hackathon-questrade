import 'package:app/ui/components/input.dart';
import 'package:app/ui/extensions/build_context_utils.dart';
import 'package:app/ui/styles/colors.dart';
import 'package:app/ui/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../components/header.dart';
import 'components_this_screen/custom_toggle.dart';
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





