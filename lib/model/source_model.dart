class Source
{
  String name;

  Source({ this.name});

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(name: json['name']);
  }
}