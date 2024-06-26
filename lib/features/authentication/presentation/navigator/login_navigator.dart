import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walkwise/app/navigator/navigator.dart';
import 'package:walkwise/features/authentication/presentation/navigator/register_navigator.dart';
import 'package:walkwise/features/authentication/presentation/view/login_view.dart';
import 'package:walkwise/features/dashboard/presentation/navigator/dashboard_navigator.dart';


final loginViewNavigatorProvider = Provider((ref) => LoginViewNavigator());

class LoginViewNavigator with RegisterViewRoute, DashboardViewRoute {}

mixin LoginViewRoute {
  openLoginView() {
    NavigateRoute.pushRoute(const LoginView());
  }
}
