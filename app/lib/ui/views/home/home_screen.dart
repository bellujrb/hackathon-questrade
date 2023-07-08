import 'package:app/ui/components/image_user.dart';
import 'package:app/ui/extensions/build_context_utils.dart';
import 'package:app/ui/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/card_with_score.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.secondary,
        body: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SafeArea(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 15
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Header(),
                    SizedBox(
                      height: context.mediaHeight * 0.027,
                    ),
                    const CardWithScore()
                  ],
                ),
              ),
            )));
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ImgUser(),
        const SizedBox(
          width: 30,
        ),
        Text(
          "Belluzzo",
          style: GoogleFonts.poppins(
              textStyle: context.styleModifier.textMediumBoldBlack),
        ),
        IconButton(
          icon: const Icon(Icons.login_outlined), onPressed: () {  },
        ),
        SizedBox(
          width: context.mediaWidth * 0.2,
        ),
        SizedBox(
          width: 75,
          height: 35,
          child: Image.asset('assets/logo.png'),
        ),
      ],
    );
  }
}



