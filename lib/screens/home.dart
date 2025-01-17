import 'package:dragonfly/data/currency_model.dart';
import 'package:dragonfly/data/my_pocket_model.dart';
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
        automaticallyImplyLeading: false,
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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            BalanceSection(),
            SizedBox(height: 32.0),
            MyPocketSection(),
            SizedBox(height: 32.0),
            CurrencySection(),
            SizedBox(height: 40.0)
          ],
        ),
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

class MyPocketSection extends StatelessWidget {
  const MyPocketSection({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/wallet-icon.svg",
                    width: 20.0,
                    height: 20.0,
                    colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    "My Pocket",
                    style: Theme.of(context).textTheme.titleMedium?.apply(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeightDelta: 2
                    )
                  )
                ],
              ),
              GestureDetector(
                child: Text(
                  "Create",
                  style: Theme.of(context).textTheme.labelMedium?.apply(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    fontWeightDelta: 2
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Table(
            columnWidths: const {
              1: FixedColumnWidth(16.0)
            },
            children: [
              TableRow(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFECECEC),
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              MyPocketModel.myPocketItems[0].cardImageResource,
                            ),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Text(
                                MyPocketModel.myPocketItems[0].pocketTitle,
                                style: Theme.of(context).textTheme.labelSmall?.apply(
                                  color: Theme.of(context).colorScheme.onBackground
                                )
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
                              child: Text(
                                MyPocketModel.myPocketItems[0].remainingBalance,
                                style: Theme.of(context).textTheme.titleMedium?.apply(
                                  color: Theme.of(context).colorScheme.primary
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0)
                    ],
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFECECEC),
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              MyPocketModel.myPocketItems[1].cardImageResource,
                            ),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Text(
                                MyPocketModel.myPocketItems[1].pocketTitle,
                                style: Theme.of(context).textTheme.labelSmall?.apply(
                                  color: Theme.of(context).colorScheme.onBackground
                                )
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
                              child: Text(
                                MyPocketModel.myPocketItems[1].remainingBalance,
                                style: Theme.of(context).textTheme.titleMedium?.apply(
                                  color: Theme.of(context).colorScheme.primary
                                ),
                              ),
                            ) 
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0)
                    ],
                  ),
                ]
              ),
              TableRow(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFECECEC),
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          MyPocketModel.myPocketItems[2].cardImageResource,
                        ),
                        const SizedBox(height: 8.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            MyPocketModel.myPocketItems[2].pocketTitle,
                            style: Theme.of(context).textTheme.labelSmall?.apply(
                              color: Theme.of(context).colorScheme.onBackground
                            )
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
                          child: Text(
                            MyPocketModel.myPocketItems[2].remainingBalance,
                            style: Theme.of(context).textTheme.titleMedium?.apply(
                              color: Theme.of(context).colorScheme.primary
                            ),
                          ),
                        ) 
                      ],
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFECECEC),
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          MyPocketModel.myPocketItems[3].cardImageResource,
                        ),
                        const SizedBox(height: 8.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            MyPocketModel.myPocketItems[3].pocketTitle,
                            style: Theme.of(context).textTheme.labelSmall?.apply(
                              color: Theme.of(context).colorScheme.onBackground
                            )
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
                          child: Text(
                            MyPocketModel.myPocketItems[3].remainingBalance,
                            style: Theme.of(context).textTheme.titleMedium?.apply(
                              color: Theme.of(context).colorScheme.primary
                            ),
                          ),
                        ) 
                      ],
                    ),
                  ),
                ]
              ),
            ],
          ),
        ),
        GestureDetector(
          child: Text(
            "View more",
            style: Theme.of(context).textTheme.labelMedium?.apply(
              color: Theme.of(context).colorScheme.primaryContainer,
              fontWeightDelta: 2
            ),
          ),
        )
      ],
    );
  }
}

class CurrencySection extends StatelessWidget {
  const CurrencySection({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/coin-icon.svg",
                    width: 20.0,
                    height: 20.0,
                    colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    "Currency",
                    style: Theme.of(context).textTheme.titleMedium?.apply(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeightDelta: 2
                    )
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFECECEC),
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                Table(
                  children: [
                    TableRow(
                      children: [
                        Text(
                          "Currency",
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Price",
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Rates",
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      ]
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Text(
                            CurrencyModel.currencyItems[0].currency,
                            style: Theme.of(context).textTheme.bodySmall?.apply(
                              color: const Color(0xFF909090)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Text(
                            CurrencyModel.currencyItems[0].price,
                            style: Theme.of(context).textTheme.bodySmall?.apply(
                              color: const Color(0xFF909090)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Text(
                            CurrencyModel.currencyItems[0].rates,
                            style: Theme.of(context).textTheme.bodySmall?.apply(
                              color: const Color(0xFF909090)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            CurrencyModel.currencyItems[1].currency,
                            style: Theme.of(context).textTheme.bodySmall?.apply(
                              color: const Color(0xFF909090)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            CurrencyModel.currencyItems[1].price,
                            style: Theme.of(context).textTheme.bodySmall?.apply(
                              color: const Color(0xFF909090)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            CurrencyModel.currencyItems[1].rates,
                            style: Theme.of(context).textTheme.bodySmall?.apply(
                              color: const Color(0xFF909090)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            CurrencyModel.currencyItems[2].currency,
                            style: Theme.of(context).textTheme.bodySmall?.apply(
                              color: const Color(0xFF909090)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            CurrencyModel.currencyItems[2].price,
                            style: Theme.of(context).textTheme.bodySmall?.apply(
                              color: const Color(0xFF909090)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            CurrencyModel.currencyItems[2].rates,
                            style: Theme.of(context).textTheme.bodySmall?.apply(
                              color: const Color(0xFF909090)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            CurrencyModel.currencyItems[3].currency,
                            style: Theme.of(context).textTheme.bodySmall?.apply(
                              color: const Color(0xFF909090)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            CurrencyModel.currencyItems[3].price,
                            style: Theme.of(context).textTheme.bodySmall?.apply(
                              color: const Color(0xFF909090)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            CurrencyModel.currencyItems[3].rates,
                            style: Theme.of(context).textTheme.bodySmall?.apply(
                              color: const Color(0xFF909090)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]
                    )
                  ],
                ),
                const SizedBox(height: 20.0),
                GestureDetector(
                  child: Text(
                    "Updated 1 hour ago",
                    style: Theme.of(context).textTheme.labelMedium?.apply(
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
                  ),
                )
              ],
            )
          ),
        )
      ],
    );
  }
}