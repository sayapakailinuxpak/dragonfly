import 'package:dragonfly/components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});
  
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const OnboardingThreeBodySection(
              title: "Choose as needed",
              description: "Choose the savings you want to open, we have\n lots of services according to what you need",
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(bottom: 16.0),
              child: const PrimaryButton(label: "Get Started"),
            )
          ],
        ),
      ),
    );
  }
}

class OnboardingThreeBodySection extends StatelessWidget {
  final String title;
  final String description;
  const OnboardingThreeBodySection({super.key, required this.title, required this.description});

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
                  "assets/images/credit-card-3-vertical-image.png",
                  height: 240.0,
                ),
              ),
              Transform.translate(
                offset: Offset(MediaQuery.of(context).size.width / 5, 0.0),
                child: Image.asset(
                  "assets/images/credit-card-2-vertical-image.png",
                  height: 240.0,
                ),
              ),
              Image.asset(
                "assets/images/credit-card-1-vertical-image.png",
                height: 240.0,
              ),
            ]
          ),
          const SizedBox(height: 40.0),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.apply(
              color: Theme.of(context).colorScheme.onBackground
            )
          ),
          const SizedBox(height: 16.0),
          Text(
            description,
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