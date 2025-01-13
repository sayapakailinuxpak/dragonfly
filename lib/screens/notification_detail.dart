import 'package:dragonfly/data/notification_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationDetail extends StatelessWidget {
  const NotificationDetail({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {}, 
          icon: SvgPicture.asset(
            "assets/icons/arrow-left-icon.svg"
          )
        ),
        title: Text(
          "Notification",
          style: Theme.of(context).textTheme.titleMedium?.apply(
            fontWeightDelta: 1
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  NotificationModel.notificationItems[0].thumbnailImage
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                NotificationModel.notificationItems[0].title,
                style: Theme.of(context).textTheme.titleLarge?.apply(
                  color: Theme.of(context).colorScheme.primary
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                NotificationModel.notificationItems[0].messageBody,
                style: Theme.of(context).textTheme.bodySmall?.apply(
                  color: const Color(0xFF606060)
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}