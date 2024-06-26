import 'package:walkwise/app/navigator/navigator.dart';
import 'package:walkwise/features/home/presentation/view/home_view.dart';

class HomeViewNavigator {}

mixin HomeViewRoute {
  openHomeView() {
    NavigateRoute.pushRoute(const HomeView());
  }
}
