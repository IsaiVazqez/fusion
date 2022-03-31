import 'dart:convert';

class Torneos {
  Torneos({
    required this.bases,
    required this.costo,
    required this.disciplina,
    required this.disponibilidad,
    required this.equipos,
    this.picture,
    this.id,
    required this.rondas,
    required this.tipotorneo,
  });

  String bases;
  int costo;
  String disciplina;
  bool disponibilidad;
  int equipos;
  String? picture;
  int rondas;
  String tipotorneo;
  String? id;

  factory Torneos.fromJson(String str) => Torneos.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Torneos.fromMap(Map<String, dynamic> json) => Torneos(
        bases: json["bases"],
        costo: json["costo"],
        disciplina: json["disciplina"],
        disponibilidad: json["disponibilidad"],
        equipos: json["equipos"],
        picture: json["picture"],
        rondas: json["rondas"],
        tipotorneo: json["tipotorneo"],
      );

  Map<String, dynamic> toMap() => {
        "bases": bases,
        "costo": costo,
        "disciplina": disciplina,
        "disponibilidad": disponibilidad,
        "equipos": equipos,
        "picture": picture,
        "rondas": rondas,
        "tipotorneo": tipotorneo,
      };

  Torneos copy() => Torneos(
        disponibilidad: this.disponibilidad,
        costo: this.costo,
        picture: this.picture,
        equipos: this.equipos,
        tipotorneo: this.tipotorneo,
        bases: this.bases,
        disciplina: this.disciplina,
        rondas: this.rondas,
        id: this.id,
      );
}