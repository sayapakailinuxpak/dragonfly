import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dragonfly/components/primary_button.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({Key? key}) : super(key: key);
  
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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OnboardingOneBannerSection(imageResources: []),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: OnboardingOneControlSection(
              title: "Easy to manage money", 
              description: "Transfer and receive your money easily with\n dragonfly bank" 
            ),
          )
        ],
      )
    );
  }
}

class OnboardingOneBannerSection extends StatelessWidget {
  final List<String> imageResources;
  const OnboardingOneBannerSection({super.key, required this.imageResources});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.translate(
          offset: const Offset(0, 20.0),
          child: Image.asset("assets/images/credit-card-image-2.png")
        ),
        Transform.translate(
          offset: Offset(
            - (MediaQuery.of(context).size.width / 4), 
            0
          ),
          child: Image.asset("assets/images/credit-card-image-1.png"),
        ),
      ],
    );
  }
}

class OnboardingOneControlSection extends StatelessWidget {
  final String title;
  final String description;
  const OnboardingOneControlSection({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
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
              const SizedBox(height: 24.0),
            ],
          ),
          
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(bottom: 16.0),
            child: const PrimaryButton(label: "Get Started"),
          )
        ],
      ),
    );
  }
}
