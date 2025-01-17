import 'package:dragonfly/screens/home.dart';
import 'package:dragonfly/screens/inbox.dart';
import 'package:dragonfly/screens/pocket.dart';
import 'package:dragonfly/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class Entry extends StatefulWidget {
  const Entry({super.key});

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {


  int _currentPageIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorShape: const CircleBorder(),
          indicatorColor: const Color(0x00FFFFFF),
          surfaceTintColor: Theme.of(context).colorScheme.background,
          labelTextStyle: MaterialStateProperty.resolveWith((states) {
            return states.contains(MaterialState.selected) 
              ? Theme.of(context).textTheme.labelMedium?.apply(
                color: Theme.of(context).colorScheme.primary
              )
              : Theme.of(context).textTheme.labelMedium?.apply(
                color: const Color(0xFFB1B1B1)
              );
          }),
        ),
        child: NavigationBar(
          destinations: [
            NavigationDestination(
              icon: IconButton(
                onPressed: null, 
                icon: SvgPicture.asset(
                  "assets/icons/home-icon.svg",
                  colorFilter: _currentPageIndex == 0 
                    ? ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn)
                    : const ColorFilter.mode(Color(0xFFB1B1B1), BlendMode.srcIn)
                )
              ), 
              label: "Home"
            ),
            NavigationDestination(
              icon: IconButton(
                onPressed: null, 
                icon: SvgPicture.asset(
                  "assets/icons/wallet-icon.svg",
                  colorFilter: _currentPageIndex == 1 
                    ? ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn)
                    : const ColorFilter.mode(Color(0xFFB1B1B1), BlendMode.srcIn)
                )
              ), 
              label: "Pocket"
            ),
            NavigationDestination(
              icon: IconButton(
                onPressed: null, 
                icon: SvgPicture.asset(
                  "assets/icons/notification-status-icon.svg",
                  colorFilter: _currentPageIndex == 2 
                    ? ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn)
                    : const ColorFilter.mode(Color(0xFFB1B1B1), BlendMode.srcIn)
                )
              ), 
              label: "Inbox"
            ),
            NavigationDestination(
              icon: IconButton(
                onPressed: null, 
                icon: SvgPicture.asset(
                  "assets/icons/profile-icon.svg",
                  colorFilter: _currentPageIndex == 3 
                    ? ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn)
                    : const ColorFilter.mode(Color(0xFFB1B1B1), BlendMode.srcIn)
                ),
              ), 
              label: "Profile"
            )
          ],
          selectedIndex: _currentPageIndex,
          onDestinationSelected: (index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
        ),
      ),
      body: [
        const Home(),
        const Pocket(),
        const Inbox(),
        const Profile()
      ][_currentPageIndex],
    );
  } 
}
