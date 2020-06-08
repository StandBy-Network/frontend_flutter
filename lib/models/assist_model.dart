import 'package:flutter/foundation.dart';

class Assist {
  final String id;
  final String date;
  final String description;
  final String status;
  final bool isIAskFor;
  
  Assist({
    @required this.id,
    @required this.date,
    @required this.description,
    @required this.status,
    this.isIAskFor
  });
}

