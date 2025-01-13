
import 'package:dragonfly/data/inbox_model.dart';
import 'package:dragonfly/data/notification_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Inbox",
            style: Theme.of(context).textTheme.titleMedium?.apply(
              fontWeightDelta: 1
            )
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: Theme.of(context).textTheme.bodyMedium?.apply(
              color: Theme.of(context).colorScheme.primary
            ),
            unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
            tabs: const [
              Tab(text: "Inbox"),
              Tab(text: "Notification(1)")
            ]
          )
        ),
        body: const TabBarView(
          children: [
            InboxMessageSection(),
            NotificationSection()
          ],
        )
      )
    );
  }
}

class InboxMessageSection extends StatelessWidget {
  const InboxMessageSection({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                    decoration: BoxDecoration(
                      color: const Color(0x0D05BE71),
                      // color: const Color(0xFF05BE71),
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/bell-icon.svg",
                      colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          InboxModel.inboxItems[index].title,
                          style: Theme.of(context).textTheme.titleSmall?.apply(
                            color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          InboxModel.inboxItems[index].message,
                          style: Theme.of(context).textTheme.bodySmall?.apply(
                            color: const Color(0xFF606060)
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Divider(
                  color: Color(0xFFEBEBEB),
                ),
              );
            },
            itemCount: InboxModel.inboxItems.length,
          ),
          
        ],
      ),
    );
  }
}

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                NotificationModel.notificationItems[index].title,
                style: Theme.of(context).textTheme.titleMedium?.apply(
                  color: Theme.of(context).colorScheme.primary
                )
              ),
              const SizedBox(height: 16.0),
              Text(
                NotificationModel.notificationItems[0].messageBody,
                style: Theme.of(context).textTheme.bodySmall?.apply(
                  color: const Color(0xFF606060)
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  NotificationModel.notificationItems[index].thumbnailImage,
                ),
              )
            ],
          );
        }, 
        separatorBuilder: (context, index) {
          return const SizedBox(height: 32.0);
        }, 
        itemCount: NotificationModel.notificationItems.length,
      )
    );
  }
}