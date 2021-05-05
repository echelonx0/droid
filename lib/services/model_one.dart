import 'package:hive/hive.dart';

part 'model_one.g.dart';

@HiveType(typeId: 0)
class Inventory extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String description;

  Inventory({this.name, this.description});
}
