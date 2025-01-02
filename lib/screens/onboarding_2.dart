import 'package:dragonfly/components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key});
  
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
            const OnboardingTwoBodySection(
              title: "Transfers between accounts",
              description: "Transferring balances is very easy between\n dragonfly bank accounts",
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

class OnboardingTwoBodySection extends StatelessWidget {
  final String title;
  final String description;
  const OnboardingTwoBodySection({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/credit-card-combo-image.png"),
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