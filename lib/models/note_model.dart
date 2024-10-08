import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class notes_model extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String sub_title;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;

  notes_model(
      {required this.title,
      required this.sub_title,
      required this.date,
      required this.color});
}
