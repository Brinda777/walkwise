
import 'package:walkwise/app/navigator/navigator.dart';
import 'package:walkwise/features/dashboard/presentation/view/dashboard_view.dart';

class DashboardViewNavigator {}

mixin DashboardViewRoute {
  openDashboardView() {
    NavigateRoute.pushRoute(const DashboardView());
  }
}
