import 'package:app/ui/views/auth/welcome/welcome_screen.dart';
import 'package:app/ui/views/home/home_screen.dart';
import 'package:app/ui/views/home/performed_loan/perfomed_loan_screen.dart';
import 'package:app/ui/views/home/request_loan/request_loan_screen.dart';
import 'package:app/ui/views/home/success_loan/success_loan_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const WelcomeScreen()),
    ChildRoute('/home', child: (context, args) => const HomeScreen()),
    ChildRoute('/requestloan', child: (context, args) => const RequestLoanScreen()),
    ChildRoute('/successloan', child: (context, args) => const SuccessLoanScreen()),
    ChildRoute('/perfomedloan', child: (context, args) => const PerfomedLoanScreen())
  ];
}