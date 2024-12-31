import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dragonfly/components/primary_button.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);
  
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: OnboardingControlSection(title: "King", description: "Flutter"),
      ),
    );
  }
}

class OnboardingControlSection extends StatelessWidget {
  final String title;
  final String description;
  const OnboardingControlSection({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Easy To Make Money",
            style: Theme.of(context).textTheme.headlineSmall?.apply(
              color: Theme.of(context).colorScheme.onBackground
            )
          ),
          const SizedBox(height: 16.0),
          Text(
            "Transfer and receive your money easily\n with dragonfly bank",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium?.apply(
              color: const Color(0xFF606060)
            )
          ),
          const SizedBox(height: 32.0),
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
          const SizedBox(height: 24.0),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const PrimaryButton(label: "Get Started"),
          )
        ],
      ),
    );
  }
}
