import 'package:flutter/material.dart';

import '../../../components/header.dart';
import '../../../components/status_score.dart';
import '../../../styles/colors.dart';

class PerfomedLoanScreen extends StatelessWidget {
  const PerfomedLoanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Header(title: "Joint Loan"),
                StatusScore()
              ],
            ),
          ),
        ),
      ),
    );
  }
}