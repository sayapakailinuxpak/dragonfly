import 'package:dragonfly/components/primary_button.dart';
import 'package:dragonfly/data/onboarding_model.dart';
import 'package:dragonfly/screens/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

double _imageBanner1Onboarding1OffsetDxValue = 0.0;
double _imageBanner2Onboarding1OffsetDxValue = 0.0;
double _imageBanner2Onboarding3OffsetDxValue = 0.55;
double _imageBanner3Onboarding3OffsetDxValue = -0.55;


class Onboarding extends StatefulWidget {
  const Onboarding({super.key});


  @override
  State<Onboarding> createState() {
    return _OnboardingState();
  }
  
}

class _OnboardingState extends State<Onboarding> {

  late PageController _pageController;
  
  
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          "assets/icons/dragonfly-logo.svg",
          colorFilter: const ColorFilter.mode(Color(0xFF2D2D2D), BlendMode.srcIn),
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: SvgPicture.asset(
              "assets/icons/change-language-icon.svg",
              colorFilter: const ColorFilter.mode(Color(0xFF2D2D2D), BlendMode.srcIn),
            ),
            splashColor: Theme.of(context).colorScheme.primary,
          )
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: (mediaQuery.size.height < 640.0) ? [
          SingleChildScrollView(child: _OnboardingBodyOne()),
          SingleChildScrollView(child: _OnboardingBodyTwo()),
          SingleChildScrollView(child: _OnboardingBodyThree())
        ] : [
          SingleChildScrollView(child: _OnboardingBodyOne()),
          _OnboardingBodyTwo(),
          _OnboardingBodyThree()
        ]
        
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          bottom: 16.0
        ),
        child: PrimaryButton(
          label: "Get Started",
          clicked: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Auth())
            );
          },
        ),
      )
    );
  }
  
}

class _OnboardingBodyOne extends StatefulWidget {

  @override
  State<_OnboardingBodyOne> createState() => _OnboardingBodyOneState();
}

class _OnboardingBodyOneState extends State<_OnboardingBodyOne> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds:1500)).then((value) => setState(() {
      _imageBanner1Onboarding1OffsetDxValue = 0.85;
    }));

    Future.delayed(const Duration(milliseconds: 2000)).then((value) => setState(() {
      _imageBanner2Onboarding1OffsetDxValue = 0.7;
    }));
  }


  @override
  void dispose() {
    super.dispose();
    setState(() {
      _imageBanner1Onboarding1OffsetDxValue = 0.0;
      _imageBanner2Onboarding1OffsetDxValue = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            AnimatedSlide(
              offset: Offset(_imageBanner1Onboarding1OffsetDxValue, 0.0),
              duration: const Duration(milliseconds: 300),
              curve: Curves.linearToEaseOut,
              child: Transform.translate(
                offset: Offset(-(MediaQuery.of(context).size.width), 25.0),
                child: Image.asset("assets/images/credit-card-image-2.png")
              ),
            ),
            AnimatedSlide(
              offset: Offset(_imageBanner2Onboarding1OffsetDxValue, 0.0),
              duration: const Duration(milliseconds: 300),
              curve: Curves.linearToEaseOut,
              child: Transform.translate(
                offset: Offset(-(MediaQuery.of(context).size.width), 0.0),
                child: Image.asset("assets/images/credit-card-image-1.png")
              )
            ),
          ]
        ),
        Column(
          children: [
            const SizedBox(height: 24.0),
            Text(
              OnboardingModel.onboardingItems[0].title,
              style: Theme.of(context).textTheme.headlineSmall?.apply(
                color: Theme.of(context).colorScheme.onSurface
              )
            ),
            const SizedBox(height: 16.0),
            Text(
              OnboardingModel.onboardingItems[0].description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium?.apply(
                color: const Color(0xFF606060)
              )
            ),
            const SizedBox(height: 32.0),
            Column(
              children: [
                Text(
                  "Swipe for more",
                  style: Theme.of(context).textTheme.labelLarge?.apply(
                  color: Theme.of(context).colorScheme.onSurface
                ),
              ),
                const SizedBox(height: 4.0),
                SvgPicture.asset(
                  "assets/icons/chevron-down-icon.svg",
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _OnboardingBodyTwo extends StatefulWidget {
  
  @override
  State<_OnboardingBodyTwo> createState() => _OnboardingBodyTwoState();
}

class _OnboardingBodyTwoState extends State<_OnboardingBodyTwo> {

  @override
  void initState() {
    super.initState();
    setState(() {
      _imageBanner1Onboarding1OffsetDxValue = 0.85;
      _imageBanner2Onboarding1OffsetDxValue = 0.7;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(OnboardingModel.onboardingItems[1].imageBanners[0]),
          const SizedBox(height: 40.0),
          Text(
            OnboardingModel.onboardingItems[1].title,
            style: Theme.of(context).textTheme.headlineSmall?.apply(
              color: Theme.of(context).colorScheme.onSurface
            )
          ),
          const SizedBox(height: 16.0),
          Text(
            OnboardingModel.onboardingItems[1].description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium?.apply(
              color: const Color(0xFF606060)
            )
          ),
        ],
      ),
    );
  }
}

class _OnboardingBodyThree extends StatefulWidget {
  
  @override
  State<_OnboardingBodyThree> createState() => _OnboardingBodyThreeState();
}

class _OnboardingBodyThreeState extends State<_OnboardingBodyThree> {


  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500)).then((value) => setState(() {
      _imageBanner2Onboarding3OffsetDxValue = 0.0;
      _imageBanner3Onboarding3OffsetDxValue = 0.0;
    }));
  }

  @override
  void dispose() {
    super.dispose();
    setState(() {
      _imageBanner2Onboarding3OffsetDxValue = 0.0;
      _imageBanner3Onboarding3OffsetDxValue = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              AnimatedSlide(
                offset: Offset(_imageBanner2Onboarding3OffsetDxValue, 0.0),
                duration: const Duration(milliseconds: 150),
                curve: Curves.linearToEaseOut,
                child: Transform.translate(
                  offset: Offset(-(MediaQuery.of(context).size.width / 5), 0.0),
                  child: Image.asset(
                    OnboardingModel.onboardingItems[2].imageBanners[2],
                    height: 240.0,
                  ),
                ),
              ),
              AnimatedSlide(
                offset: Offset(_imageBanner3Onboarding3OffsetDxValue, 0.0),
                duration: const Duration(milliseconds: 150),
                child: Transform.translate(
                  offset: Offset(MediaQuery.of(context).size.width / 5, 0.0),
                  child: Image.asset(
                    OnboardingModel.onboardingItems[2].imageBanners[1],
                    height: 240.0,
                  ),
                ),
              ),
              Image.asset(
                OnboardingModel.onboardingItems[2].imageBanners[0],
                height: 240.0,
              ),
            ]
          ),
          const SizedBox(height: 40.0),
          Text(
            OnboardingModel.onboardingItems[2].title,
            style: Theme.of(context).textTheme.headlineSmall?.apply(
              color: Theme.of(context).colorScheme.onSurface
            )
          ),
          const SizedBox(height: 16.0),
          Text(
            OnboardingModel.onboardingItems[2].description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium?.apply(
              color: const Color(0xFF606060)
            )
          ),
        ],
      ),
    );
  }
}
