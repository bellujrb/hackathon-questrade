import 'package:app/ui/views/auth/welcome/welcome_screen.dart';
import 'package:app/ui/views/home/home_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const WelcomeScreen()),
    ChildRoute('/home', child: (context, args) => const HomeScreen()),
  ];
}