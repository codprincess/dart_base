/**
 * author: jing
 * created on: 2023/1/31 16:59
 * description: dataTime类
 */
void main() {
 //  final now = DateTime.now();//2023-01-31 17:04:16.953126
 // // final berlinWallFell = DateTime.utc(2023,2,1);//2023-02-01 00:00:00.000Z
 //  final moonLanding = DateTime.parse('2023-01-31 20:18:04Z');//2023-01-31 20:18:04.000Z
 //
 //  // print(berlinWallFell.year); // 2023
 //  // print(berlinWallFell.month); // 2
 //  // print(berlinWallFell.day); // 1
 //  // print(moonLanding.hour); // 20
 //  // print(moonLanding.minute); // 18
 //
 //  final berlinWallFell = DateTime.utc(2023,DateTime.january,31);//2023-01-31 00:00:00.000Z
 //  // print(berlinWallFell);
 //  // print(DateTime.january);//1
 //  // print(berlinWallFell.month);//1
 //  // print(berlinWallFell.weekday);//2
 //
 //  final dDay = DateTime.utc(2023,1,31);
 //  print(dDay.isUtc);//true
 //  final dDayLocal = DateTime(2023,1,31);
 //  print(dDayLocal.isUtc);//false
 //
 //  final localDay = dDay.toLocal();//2023-01-31 08:00:00.000
 //  print(localDay.isUtc);//false
 //  final utcFromLocal = localDay.toUtc();//false
 //  print(utcFromLocal);//2023-01-31 00:00:00.000Z
 //  print(utcFromLocal.isUtc);//true
 //
 //  print(dDay.timeZoneName);//UTC
 //  print(localDay.timeZoneName);//CST
 //
 //  print(dDay.timeZoneOffset); // 0:00:00.000000
 //  print(localDay.timeZoneOffset); // 8:00:00.000000
 //
 //  print(berlinWallFell.isAfter(moonLanding)); // false
 //  print(berlinWallFell.isBefore(moonLanding)); // true
 //  print(dDay.isAtSameMomentAs(localDay)); // true
 //
 //
 //  final later = now.add(const Duration(hours: 36));
 //  print(later);//2023-02-02 05:40:27.955669

 // final moonLanding = DateTime.parse('2023-01-31 20:18:04Z');
 //  final berlinWallFell = DateTime.utc(2023,DateTime.february,26);
 //  final difference = berlinWallFell.difference(moonLanding);
 //  print(difference.inDays);//25
 //
 //  final dentistAppointment = DateTime(2023, 1, 31, 17, 30);//2023-01-31 17:30:00.000
 //  print(dentistAppointment);
 //
 //  final today = DateTime.now();
 //  print(today);//2023-01-31 18:03:32.363396
 //  final fiftyDaysAgo = today.subtract(const Duration(days: 50));
 //  print(fiftyDaysAgo);//2022-12-12 18:03:32.363396



  // final berlinWallFell = DateTime.utc(1989, DateTime.november, 9);
  // final dDay = DateTime.utc(1944, DateTime.june, 6);
  //
  // final difference = berlinWallFell.difference(dDay);
  // print(difference.inDays); // 16592

  final moonLanding = DateTime.utc(2023, 1, 31, 20, 18, 04);
  print(moonLanding);//2023-01-31 20:18:04.000Z
  final isoDate = moonLanding.toIso8601String();
  print(isoDate);//2023-01-31T20:18:04.000Z

  final today = DateTime.now();
  print(today);//2023-01-31 18:43:07.496521
  final fiftyDaysFromNow = today.add(const Duration(days: 50));
  print(fiftyDaysFromNow);//2023-03-22 18:43:07.496521
}