import 'package:app/ui/components/icon_navigation.dart';
import 'package:app/ui/components/image_user.dart';
import 'package:app/ui/components/tips.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Header(),
                    SizedBox(
                      height: context.mediaHeight * 0.027,
                    ),
                    const CardWithScore(),
                    SizedBox(
                      height: context.mediaHeight * 0.03,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconNavigation(
                          title: 'Request Loan',
                          icon: Icons.request_page,
                        ),
                        IconNavigation(
                          title: 'Loan Hired',
                          icon: Icons.contact_mail,
                        ),
                        IconNavigation(
                          title: 'Pendencies',
                          icon: Icons.receipt_long,
                        ),
                        IconNavigation(
                          title: 'Support',
                          icon: Icons.support_agent,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.mediaHeight * 0.03,
                    ),
                    const Tips(),
                  ],
                ),
              ),
              Container(
                width: context.mediaWidth * 1.0,
                height: context.mediaHeight * 0.2,
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                ),
                child: Container(
                  width: context.mediaWidth * 0.9,
                  height: context.mediaHeight * 0.15,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.onPrimary, width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: context.mediaWidth * 0.3,
                        child: SizedBox(
                          width: 196.4,
                          height: 131,
                          child: Image.asset('assets/girlstatus.png'),
                        ),
                      ),
                      SizedBox(
                        width: context.mediaWidth * 0.5,
                        height: context.mediaHeight * 0.10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Congratulations!",
                              style: GoogleFonts.poppins(
                                  textStyle:
                                      context.styleModifier.textMediumBoldWhite),
                            ),
                            Text(
                              "Your score has a good score! keep it up",
                              style: GoogleFonts.poppins(
                                  textStyle: context
                                      .styleModifier.textMediumCommonWhite),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
          "Victoria Morgan",
          style: GoogleFonts.poppins(
              textStyle: context.styleModifier.textMediumBoldBlack),
        ),
        IconButton(
          icon: const Icon(Icons.login_outlined),
          onPressed: () {},
        ),
        SizedBox(
          width: context.mediaWidth * 0.05,
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
