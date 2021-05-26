class Sight {
  String name;
  String lat;
  String lon;
  String url;
  String details;
  SightType type;

  Sight(
    this.name,
    this.lat,
    this.lon,
    this.url,
    this.details,
    this.type,
  );
}

enum SightType { Nature, Building }
