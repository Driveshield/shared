class Modeltesting {
  final String nameprod;
  final String uang;
  final String id;

  Modeltesting({
    required this.nameprod,
    required this.uang,
    required this.id,
  });

  factory Modeltesting.fromJson(Map<String, dynamic> json) {
    return Modeltesting(
      nameprod: json['nameprod'],
      id: json['id'],
      uang: json['uang'],
    );
  }
}