import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart';

Location getLocation(String locationName) {
  tz.initializeTimeZones();

  final location = tz.getLocation(locationName);

  return location;
}