import 'package:dragonfly/components/primary_button.dart';
import 'package:dragonfly/data/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        children: [
          _OnboardingBodyOne(),
          _OnboardingBodyTwo(),
          _OnboardingBodyThree()
        ],
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          bottom: 16.0
        ),
        child: const PrimaryButton(label: "Get Started"),
      )
    );
  }
  
}

class _OnboardingBodyOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Transform.translate(
              offset: const Offset(0, 20.0),
              child: Image.asset(OnboardingModel.onboardingItems[0].imageBanners[1])
            ),
            Transform.translate(
              offset: Offset(
                - (MediaQuery.of(context).size.width / 4), 
                0
              ),
              child: Image.asset(OnboardingModel.onboardingItems[0].imageBanners[0]),
            ),
          ],
        ),
        Column(
          children: [
            const SizedBox(height: 24.0),
            Text(
              OnboardingModel.onboardingItems[0].title,
              style: Theme.of(context).textTheme.headlineSmall?.apply(
                color: Theme.of(context).colorScheme.onBackground
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
                  color: Theme.of(context).colorScheme.onBackground
                ),
              ),
                const SizedBox(height: 4.0),
                SvgPicture.asset(
                  "assets/icons/chevron-down-icon.svg",
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                ),
              ],
            ),
            // const SizedBox(height: 24.0),
          ],
        ),
      ],
    );
  }
}

class _OnboardingBodyTwo extends StatelessWidget {
  
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
              color: Theme.of(context).colorScheme.onBackground
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

class _OnboardingBodyThree extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Transform.translate(
                offset: Offset(MediaQuery.of(context).size.width / -5, 0.0),
                child: Image.asset(
                  OnboardingModel.onboardingItems[2].imageBanners[2],
                  height: 240.0,
                ),
              ),
              Transform.translate(
                offset: Offset(MediaQuery.of(context).size.width / 5, 0.0),
                child: Image.asset(
                  OnboardingModel.onboardingItems[2].imageBanners[1],
                  height: 240.0,
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
              color: Theme.of(context).colorScheme.onBackground
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