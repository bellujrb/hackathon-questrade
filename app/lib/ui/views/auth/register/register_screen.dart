import 'package:app/ui/components/input.dart';
import 'package:app/ui/extensions/build_context_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                Center(
                  child: SizedBox(
                    width: 117,
                    height: 53,
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Input(
                    title: 'Name',
                    label: "Type your name",
                    type: TextInputType.text,
                    width: context.mediaWidth * 0.9),
                Input(
                    title: 'E-mail',
                    label: "Type your e-mail",
                    type: TextInputType.text,
                    width: context.mediaWidth * 0.9),
                Input(
                  title: 'Phone',
                  label: "Type your phone",
                  type: TextInputType.number,
                  width: context.mediaWidth * 0.9,
                  numbersMax: 11,
                ),
                Input(
                  title: 'CPF',
                  label: "Type your CPF",
                  type: TextInputType.number,
                  width: context.mediaWidth * 0.9,
                  numbersMax: 11,
                ),
                Input(
                  title: 'Address',
                  label: "Type your Address",
                  type: TextInputType.number,
                  width: context.mediaWidth * 0.9,
                  numbersMax: 11,
                ),
                Input(
                  title: 'Income',
                  label: "Type your your average income",
                  type: TextInputType.number,
                  width: context.mediaWidth * 0.9,
                  numbersMax: 4,
                ),
                Input(
                  title: 'Password',
                  label: "Type your password",
                  type: TextInputType.text,
                  width: context.mediaWidth * 0.9,
                ),
                GestureDetector(
                  onTap: () {
                    Modular.to.navigate('home');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: context.mediaWidth * 0.8,
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      "Enter with account",
                      style: GoogleFonts.poppins(
                          textStyle: context.styleModifier.textMediumBoldWhite),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have account?",
                      style: GoogleFonts.poppins(
                          textStyle: context.styleModifier.textMediumCommonGray),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Modular.to.navigate('home');
                      },
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.poppins(
                            textStyle: context.styleModifier.textMediumBoldBlack),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
