import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ca/app/router/app_router_config.dart';

@RoutePage()
class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.routeTitle),
      ),
    );
  }
}
