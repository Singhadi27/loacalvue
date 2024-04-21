import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/event.dart';
import '../../model/event_noida.dart';
import 'event_details_background.dart';
import 'event_details_content.dart';

class EventDetailsPageN extends StatelessWidget {

  final EventN? eventN;

  const EventDetailsPageN({Key? key, this.eventN}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<EventN>.value(
        value: eventN!,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            EventDetailsBackground(),
            EventDetailsContent(),
          ],
        ),
      ),
    );
  }
}
