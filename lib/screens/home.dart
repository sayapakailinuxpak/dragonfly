import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/dragonfly-full-logo.png",
          width: 89.0,
          height: 21.0,
        ),
        actions:[ IconButton(
            onPressed: () {}, 
            icon: SvgPicture.asset("assets/icons/scanner-icon.svg")
          ),
        ]
      ),
      body: const Column(
        children: [
          BalanceSection()
        ],
      )
    );
  }
}

class BalanceSection extends StatefulWidget {
  // final Function showBalance;
  const BalanceSection({super.key});

  @override
  State<BalanceSection> createState() => _BalanceSectionState();
}

class _BalanceSectionState extends State<BalanceSection> {
  bool balanceDisplay = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                top: 16.0,
                right: 16.0,
              ),
              child: Text(
                "Your balance",
                style: Theme.of(context).textTheme.labelMedium?.apply(
                  color: const Color(0xFF909090),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  balanceDisplay ? 
                    Text(
                      "\$ 49,250.00",
                      style: Theme.of(context).textTheme.headlineSmall?.apply(
                        // fontStyle: FontStyle.normal,
                        color: Theme.of(context).colorScheme.onBackground
                      ),
                    ) : 
                    showBalanceDots(context),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        balanceDisplay = !balanceDisplay;
                      });
                      debugPrint("balanceDisplay: $balanceDisplay");
                    }, 
                    icon: balanceDisplay ? SvgPicture.asset(
                      "assets/icons/eye-slash-icon.svg",
                      width: 20.0,
                      height: 20.0,
                      colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
                    ) : SvgPicture.asset(
                      "assets/icons/eye-icon.svg",
                      width: 20.0,
                      height: 20.0,
                      colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
                    )
                  ) 
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical:  16.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFECECEC),
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/money-send-icon.svg"),
                    const SizedBox(height: 8.0),
                    Text(
                      "Send",
                      style: Theme.of(context).textTheme.labelMedium
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/money-receive-icon.svg"),
                    const SizedBox(height: 8.0),
                    Text(
                      "Request",
                      style: Theme.of(context).textTheme.labelMedium
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/receipt-icon.svg"),
                    const SizedBox(height: 8.0),
                    Text(
                      "History",
                      style: Theme.of(context).textTheme.labelMedium
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFECECEC),
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Stack(
              children: [
                Image.asset("assets/images/offer-bg-image.png"),
                Container(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                    top: 10.0,
                    bottom: 10.0,
                    right: 10.0
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 14.0),
                              child: Text(
                                "Let's connect",
                                style: const TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5
                                ).apply(
                                  color: Theme.of(context).colorScheme.secondary
                                )
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Text(
                              "Connect account with marketplace for\nautomatic payment and get \$25 bonus",
                              style: Theme.of(context).textTheme.labelMedium?.apply(
                                color: const Color(0xFF909090)
                              )
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/close-square-icon.svg",
                            width: 20.0,
                            height: 20.0,
                            colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
                          ),
                          const SizedBox(height: 80.0),
                          SvgPicture.asset(
                            "assets/icons/arrow-right-icon.svg",
                            colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
                          ),
                        ],
                      )     
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

Widget showBalanceDots(BuildContext context) {
  return Row(
    children: [
      SvgPicture.asset(
        "assets/icons/dot-icon.svg",
        width: 8.0,
        height: 8.0,
        colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
      ),
      const SizedBox(width: 6.0),
      SvgPicture.asset(
        "assets/icons/dot-icon.svg",
        width: 8.0,
        height: 8.0,
        colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
      ),
      const SizedBox(width: 6.0),
      SvgPicture.asset(
        "assets/icons/dot-icon.svg",
        width: 8.0,
        height: 8.0,
        colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
      ),
      const SizedBox(width: 6.0),
      SvgPicture.asset(
        "assets/icons/dot-icon.svg",
        width: 8.0,
        height: 8.0,
        colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
      ),
      const SizedBox(width: 6.0),
      SvgPicture.asset(
        "assets/icons/dot-icon.svg",
        width: 8.0,
        height: 8.0,
        colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
      ),
      const SizedBox(width: 6.0),
      SvgPicture.asset(
        "assets/icons/dot-icon.svg",
        width: 8.0,
        height: 8.0,
        colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
      ),
      const SizedBox(width: 6.0),
      SvgPicture.asset(
        "assets/icons/dot-icon.svg",
        width: 8.0,
        height: 8.0,
        colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
      )
    ],
  );
}