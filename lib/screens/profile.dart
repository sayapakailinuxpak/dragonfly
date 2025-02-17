import 'package:dragonfly/data/user_account_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.titleMedium?.apply(
            fontWeightDelta: 1
          ),
        ),
        centerTitle: true,
      ),
      body: (mediaQuery.size.height > 640) ? Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/foto-diri-image.png",
                      width: 48.0,
                      height: 48.0,
                    ),
                    const SizedBox(width: 12.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Eldis Simone",
                            style: Theme.of(context).textTheme.titleMedium?.apply(
                              fontWeightDelta: 2,
                              color: Theme.of(context).colorScheme.onSurface
                            )
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            "Platinum Member",
                            style: Theme.of(context).textTheme.labelMedium?.apply(
                              color: const Color(0xFF606060)
                            )
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 32.0),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              UserAccountModel.userAccountItems[index].icon,
                              colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                            ),
                            const SizedBox(width: 16.0),
                            Expanded(
                              child: Text(
                                UserAccountModel.userAccountItems[index].title,
                                style: Theme.of(context).textTheme.titleSmall?.apply(
                                  color: const Color(0xFF606060)
                                ),
                              ),
                            ),
                            SvgPicture.asset(
                              "assets/icons/chevron-right-icon.svg",
                              width: 16.0,
                              height: 16.0,
                              colorFilter: const ColorFilter.mode(Color(0xFFB1B1B1), BlendMode.srcIn),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        
                      },
                    );
                  }, 
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Color(0xFFEBEBEB),
                    );
                  }, 
                  itemCount: UserAccountModel.userAccountItems.length
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: FilledButton(
                onPressed: () {
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                }, 
                style: ButtonStyle(
                  textStyle: WidgetStatePropertyAll(Theme.of(context).textTheme.labelLarge),
                  backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.error),
                  padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0)),
                  shape: WidgetStateProperty.all(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))
                    )
                  )
                ),
                child: const Text("Log Out")
              ),
            )
          ],
        ),
      ) : SingleChildScrollView(
            child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/foto-diri-image.png",
                          width: 48.0,
                          height: 48.0,
                        ),
                        const SizedBox(width: 12.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Eldis Simone",
                                style: Theme.of(context).textTheme.titleMedium?.apply(
                                  fontWeightDelta: 2,
                                  color: Theme.of(context).colorScheme.onSurface
                                )
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                "Platinum Member",
                                style: Theme.of(context).textTheme.labelMedium?.apply(
                                  color: const Color(0xFF606060)
                                )
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 32.0),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  UserAccountModel.userAccountItems[index].icon,
                                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                                ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: Text(
                                    UserAccountModel.userAccountItems[index].title,
                                    style: Theme.of(context).textTheme.titleSmall?.apply(
                                      color: const Color(0xFF606060)
                                    ),
                                  ),
                                ),
                                SvgPicture.asset(
                                  "assets/icons/chevron-right-icon.svg",
                                  width: 16.0,
                                  height: 16.0,
                                  colorFilter: const ColorFilter.mode(Color(0xFFB1B1B1), BlendMode.srcIn),
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            
                          },
                        );
                      }, 
                      separatorBuilder: (context, index) {
                        return const Divider(
                          color: Color(0xFFEBEBEB),
                        );
                      }, 
                      itemCount: UserAccountModel.userAccountItems.length
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: FilledButton(
                    onPressed: () {
                      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                    }, 
                    style: ButtonStyle(
                      textStyle: WidgetStatePropertyAll(Theme.of(context).textTheme.labelLarge),
                      backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.error),
                      padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0)),
                      shape: WidgetStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0))
                        )
                      )
                    ),
                    child: const Text("Log Out")
                  ),
                )
              ],
            ),
          ),
      )
    );
  }
}
