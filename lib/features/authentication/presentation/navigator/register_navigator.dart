import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walkwise/app/navigator/navigator.dart';
import 'package:walkwise/features/authentication/presentation/view/register_view.dart';

final registerViewNavigatorProvider =
    Provider((ref) => RegisterViewNavigator());

class RegisterViewNavigator {}

mixin RegisterViewRoute {
  openRegisterView() {
    NavigateRoute.pushRoute(const RegisterView());
  }
}
