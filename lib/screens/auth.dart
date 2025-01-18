import 'package:dragonfly/screens/entry.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Keypad()
        child: Column(
          children: [
            const SizedBox(height: 60.0),
            SvgPicture.asset(
              "assets/icons/lock-icon.svg",
              width: 40.0,
              height: 40.0,
              colorFilter: ColorFilter.mode(Theme.of(context).primaryColor, BlendMode.srcIn)
            ),
            const SizedBox(height: 32.0),
            Text(
              "Enter Security Code",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.apply(
                color: Theme.of(context).colorScheme.onSurface
              )
            ),
            const SizedBox(height: 16.0),
            const SecurityCodeForm(),
          ],
        ),
      )
    );
  }
}

class SecurityCodeForm extends StatefulWidget {
  const SecurityCodeForm({super.key});

  @override
  State<SecurityCodeForm> createState() {
    return SecurityCodeFormState();
  }
  
}

class SecurityCodeFormState extends State<SecurityCodeForm> {

  List<String> keypadItemLabel = const<String> [
    "1","2","3","4","5","6","7","8","9"," ","0", "del"
  ];

  bool isValid = false;
  int currentCursor = 0;
  bool isLastCursor = false;
  List<String?> securityCode = [null, null, null, null];
  List<String?> correctSecurityCode = ["1","2","3","4"];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: isLastCursor && securityCode[0] != null ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onSurface
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8.0))
              ),
                width: 40.0,
                height: 40.0,
                child: securityCode[0] == null ? SvgPicture.asset(
                  "assets/icons/dot-icon.svg",
                  width: 8.0,
                  height: 8.0,
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.surface, BlendMode.srcIn),
                ) : SvgPicture.asset(
                  "assets/icons/dot-icon.svg",
                  width: 8.0,
                  height: 8.0,
                  colorFilter: isLastCursor ? ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn) : ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
                )
            ),
            const SizedBox(width: 20.0),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: isLastCursor && securityCode[1] != null ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onSurface
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8.0))
              ),
                width: 40.0,
                height: 40.0,
                child: securityCode[1] == null ? SvgPicture.asset(
                  "assets/icons/dot-icon.svg",
                  width: 8.0,
                  height: 8.0,
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.surface, BlendMode.srcIn),
                ) : SvgPicture.asset(
                  "assets/icons/dot-icon.svg",
                  width: 8.0,
                  height: 8.0,
                  colorFilter: isLastCursor ? ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn) : ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
                )
            ),
            const SizedBox(width: 20.0),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: isLastCursor && securityCode[2] != null ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onSurface
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8.0))
              ),
                width: 40.0,
                height: 40.0,
                child: securityCode[2] == null ? SvgPicture.asset(
                  "assets/icons/dot-icon.svg",
                  width: 8.0,
                  height: 8.0,
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.surface, BlendMode.srcIn),
                ) : SvgPicture.asset(
                  "assets/icons/dot-icon.svg",
                  width: 8.0,
                  height: 8.0,
                  colorFilter: isLastCursor ? ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn) : ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
                )
            ),
            const SizedBox(width: 20.0),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: isLastCursor && securityCode[3] != null ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onSurface
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8.0))
              ),
                width: 40.0,
                height: 40.0,
                child: securityCode[3] == null ? SvgPicture.asset(
                  "assets/icons/dot-icon.svg",
                  width: 8.0,
                  height: 8.0,
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.surface, BlendMode.srcIn),
                ) : SvgPicture.asset(
                  "assets/icons/dot-icon.svg",
                  width: 8.0,
                  height: 8.0,
                  colorFilter: isLastCursor ? ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn) : ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
                )
            )
          ],
        ),
        const SizedBox(height: 120.0),
        GridView.count(
          shrinkWrap: true,
          mainAxisSpacing: 2.0,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          childAspectRatio: 2.0,
          crossAxisCount: 3,
          // crossAxisSpacing:10.0,
          children: List.generate(keypadItemLabel.length, (index) {
            return index == 9 
              ? Container()
              : TextButton(
                onPressed: () {
                  setState(() {
                    if (currentCursor == 0) {
                      if (keypadItemLabel[index] == "del") {
                        securityCode[0] = null;
                        currentCursor = 0;
                      } else {
                        securityCode[0] = keypadItemLabel[index];
                        currentCursor = 1;
                      }
                      isLastCursor = false;
                    } 
                    else if (currentCursor == 1) {
                      if (keypadItemLabel[index] == "del") {
                        if (securityCode[1] == null) {
                          securityCode[0] = null;
                          currentCursor = 0;
                        } else {
                          securityCode[1] = null;
                          currentCursor = 0;
                        }
                        
                      } else {
                        securityCode[1] = keypadItemLabel[index];
                        currentCursor = 2;
                      }   
                      isLastCursor = false;
                    } else if (currentCursor == 2) {
                      if (keypadItemLabel[index] == "del") {
                        if (securityCode[2] == null) {
                          securityCode[1] = null;
                          currentCursor = 1;
                        } else {
                          securityCode[2] = null;
                          currentCursor = 1;
                        }
                      } else {
                        securityCode[2] = keypadItemLabel[index];
                        currentCursor = 3;
                      }
                      isLastCursor = false;
                    } else if (currentCursor == 3) {
                      if (keypadItemLabel[index] == "del") {
                        isLastCursor = false;
                        if (securityCode[3] == null) {
                          securityCode[2] = null;
                          currentCursor = 2;
                        } else {
                          securityCode[3] = null;
                          currentCursor = 2;
                        }
                      } else {
                        securityCode[3] = keypadItemLabel[index];
                        currentCursor = 3;
                        isLastCursor = true;
                      }
                    } 
                    
                    if (listEquals(securityCode, correctSecurityCode)) {
                      if (isLastCursor) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Welcome back!"),
                        ));

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const Entry();
                            },
                          )
                        );
                      }
                    } else {
                      if (isLastCursor) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Wrong Password (Try 1234:>)"),
                        ));
                        securityCode[0] = null;
                        securityCode[1] = null;
                        securityCode[2] = null;
                        securityCode[3] = null;
                        currentCursor = 0;
                      }  
                    }
                  });

                  

                  debugPrint("Sec code 0 = ${securityCode[0]}");
                  debugPrint("Sec code 1 = ${securityCode[1]}");
                  debugPrint("Sec code 2 = ${securityCode[2]}");
                  debugPrint("Sec code 3 = ${securityCode[3]}");
                  debugPrint("Current Cursor = $currentCursor");
                  debugPrint("Is last cursor? $isLastCursor");
                },
                child: index == 11 ? SvgPicture.asset(
                  "assets/icons/backspace-icon.svg",
                  width: 32.0,
                  height: 32.0,
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
                ) : Text(
                  keypadItemLabel[index],
                  style: Theme.of(context).textTheme.headlineMedium?.apply(
                    color: Theme.of(context).colorScheme.onSurface
                  ),
                )
              );
            },
          )
        ),
      ],
    );
  }

}

