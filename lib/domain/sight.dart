class Sight {
  String name;
  String lat;
  String lon;
  String url;
  String details;
  String type;
  String image;
  bool visited = false;
  DateTime? visitedDate;
  DateTime? plannedDate;

  Sight(
    this.name,
    this.lat,
    this.lon,
    this.url,
    this.details,
    this.type,
    this.image, [
    this.visited = false,
    this.visitedDate,
    this.plannedDate,
  ]);
}
