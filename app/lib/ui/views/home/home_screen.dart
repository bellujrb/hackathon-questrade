import 'package:app/ui/components/icon_navigation.dart';
import 'package:app/ui/components/image_user.dart';
import 'package:app/ui/components/status_score.dart';
import 'package:app/ui/components/tips.dart';
import 'package:app/ui/extensions/build_context_utils.dart';
import 'package:app/ui/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconNavigation(
                          title: 'Request Loan',
                          icon: Icons.request_page,
                          function: () {
                            Modular.to.navigate('requestloan');
                          },
                        ),
                        IconNavigation(
                          title: 'Loan Hired',
                          icon: Icons.contact_mail,
                          function: () {
                            Modular.to.navigate('perfomedloan');
                          },
                        ),
                        IconNavigation(
                          title: 'Pendencies',
                          icon: Icons.receipt_long,
                          function: () {
                            Modular.to.navigate('pendencies');
                          },
                        ),
                        IconNavigation(
                          title: 'Joint Loan',
                          icon: Icons.family_restroom,
                          function: () {
                            Modular.to.navigate('jointloan');
                          },
                        ),
                        IconNavigation(
                          title: 'Support',
                          icon: Icons.support_agent,
                          function: () {
                            Modular.to.navigate('support');
                          },
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
              const StatusScore()
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
          onPressed: () {
            Modular.to.navigate('login');
          },
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
