import 'package:flutter/material.dart';
import 'package:online_store_customers/Providers/theme_provider.dart';
import 'package:online_store_customers/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

class NotificationScreen extends StatelessWidget {

  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NotificationItem> notifications = [
      NotificationItem(
        title: 'Your Cart',
        description: 'Are you Complete Shop',
        timestamp: '2 min ago',
        icon: Icons.shopping_bag_sharp,
      ),
      NotificationItem(
        title: 'Orders',
        description: 'Complete Your Orders',
        timestamp: '10 min ago',
        icon: Icons.star_border,
      ),
      NotificationItem(
        title: 'New Product',
        description: 'Check New Products',
        timestamp: '1 hr ago',
        icon: Icons.production_quantity_limits,
      ),
      // Add more notifications as needed
    ];
    final themeProvider = Provider.of<ThemeProvider>(context);
    final Color color =
    themeProvider.getDarkTheme ? Colors.white : Colors.black;
    return Scaffold(

      appBar: AppBar(

        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
          text: "Notifications",
          color: color,
          textSize: 24,
          isTitle: true,
        ),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Icon(
                    notification.icon,
                    color: Colors.white,
                  ),
                ),
                title: Text(notification.title),
                subtitle: Text(notification.description),
                trailing: Text(
                  notification.timestamp,
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  // Handle notification tap if necessary
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String description;
  final String timestamp;
  final IconData icon;

  NotificationItem({
    required this.title,
    required this.description,
    required this.timestamp,
    required this.icon,
  });
}