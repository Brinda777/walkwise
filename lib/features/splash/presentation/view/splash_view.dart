import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walkwise/core/utils/asset_provider.dart';
import 'package:walkwise/core/utils/util.dart';
import 'package:walkwise/features/splash/presentation/view_model/splash_view_model.dart';
import 'package:walkwise/screen/login_screen.dart';
import 'package:walkwise/widgets/responsive_text.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    ref.read(splashViewModelProvider.notifier).openLoginView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: kHorizontalMargin, vertical: kVerticalMargin),
        child: Column(children: [
          Image.asset(Assets.images.Logo),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: kVerticalMargin),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(width * 2, height * 0.07),
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const ResponsiveText(
                  "Get Started",
                  fontSize: 24,
                  fontFamily: 'Times',
                  fontWeight: FontWeight.w400,
                  textColor: Color(0xFFFCFCFC),
                ),
                onPressed: () {
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  }
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
