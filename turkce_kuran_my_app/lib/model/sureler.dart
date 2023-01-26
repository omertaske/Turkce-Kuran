// To parse this JSON data, do
//
//     final sureler = surelerFromJson(jsonString);

import 'dart:convert';

Sureler surelerFromJson(String str) => Sureler.fromJson(json.decode(str));

String surelerToJson(Sureler data) => json.encode(data.toJson());

class Sureler {
    Sureler({
        this.data,
    });

    List<Datum> data;

    factory Sureler.fromJson(Map<String, dynamic> json) => Sureler(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.id,
        this.name,
        this.slug,
        this.verseCount,
        this.pageNumber,
        this.nameOriginal,
        this.audio,
    });

    int id;
    String name;
    String slug;
    int verseCount;
    int pageNumber;
    String nameOriginal;
    Audio audio;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        verseCount: json["verse_count"],
        pageNumber: json["pageNumber"],
        nameOriginal: json["name_original"],
        audio: Audio.fromJson(json["audio"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "verse_count": verseCount,
        "pageNumber": pageNumber,
        "name_original": nameOriginal,
        "audio": audio.toJson(),
    };
}

class Audio {
    Audio({
        this.mp3,
        this.duration,
    });

    String mp3;
    int duration;

    factory Audio.fromJson(Map<String, dynamic> json) => Audio(
        mp3: json["mp3"],
        duration: json["duration"],
    );

    Map<String, dynamic> toJson() => {
        "mp3": mp3,
        "duration": duration,
    };
}
