

class Artist{
  String name;
  String link;
  String about;

  Artist({this.name, this.link, this.about});

  Artist.fromJson(Map <String, dynamic> json):
    this (
        name: json['name'],
        link: json['link'],
        about: json['about']
    );
}