import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walkwise/features/authentication/presentation/navigator/login_navigator.dart';


final splashViewNavigatorProvider =
    Provider<SplashViewNavigator>((ref) => SplashViewNavigator());

class SplashViewNavigator with LoginViewRoute {}

mixin SplashViewRoute {}
