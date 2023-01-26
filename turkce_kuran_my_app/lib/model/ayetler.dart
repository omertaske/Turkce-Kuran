// To parse this JSON data, do
//
//     final ayetler = ayetlerFromJson(jsonString);

import 'dart:convert';

Ayetler ayetlerFromJson(String str) => Ayetler.fromJson(json.decode(str));

String ayetlerToJson(Ayetler data) => json.encode(data.toJson());

class Ayetler {
    Ayetler({
        this.data,
    });

    Data data;

    factory Ayetler.fromJson(Map<String, dynamic> json) => Ayetler(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class Data {
    Data({
        this.id,
        this.name,
        this.slug,
        this.verseCount,
        this.pageNumber,
        this.audio,
        this.zero,
        this.verses,
    });

    int id;
    String name;
    String slug;
    int verseCount;
    int pageNumber;
    Audio audio;
    Zero zero;
    List<Zero> verses;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        verseCount: json["verse_count"],
        pageNumber: json["pageNumber"],
        audio: Audio.fromJson(json["audio"]),
        zero: Zero.fromJson(json["zero"]),
        verses: List<Zero>.from(json["verses"].map((x) => Zero.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "verse_count": verseCount,
        "pageNumber": pageNumber,
        "audio": audio.toJson(),
        "zero": zero.toJson(),
        "verses": List<dynamic>.from(verses.map((x) => x.toJson())),
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

class Zero {
    Zero({
        this.id,
        this.surahId,
        this.verseNumber,
        this.verse,
        this.page,
        this.juzNumber,
        this.transcription,
        this.translation,
    });

    int id;
    int surahId;
    int verseNumber;
    String verse;
    int page;
    int juzNumber;
    String transcription;
    Translation translation;

    factory Zero.fromJson(Map<String, dynamic> json) => Zero(
        id: json["id"],
        surahId: json["surah_id"],
        verseNumber: json["verse_number"],
        verse: json["verse"],
        page: json["page"],
        juzNumber: json["juzNumber"],
        transcription: json["transcription"],
        translation: Translation.fromJson(json["translation"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "surah_id": surahId,
        "verse_number": verseNumber,
        "verse": verse,
        "page": page,
        "juzNumber": juzNumber,
        "transcription": transcription,
        "translation": translation.toJson(),
    };
}

class Translation {
    Translation({
        this.id,
        this.author,
        this.text,
        this.footnotes,
    });

    int id;
    Author author;
    String text;
    List<Footnote> footnotes;

    factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        id: json["id"],
        author: Author.fromJson(json["author"]),
        text: json["text"],
        footnotes: json["footnotes"] == null ? null : List<Footnote>.from(json["footnotes"].map((x) => Footnote.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "author": author.toJson(),
        "text": text,
        "footnotes": footnotes == null ? null : List<dynamic>.from(footnotes.map((x) => x.toJson())),
    };
}

class Author {
    Author({
        this.id,
        this.name,
        this.description,
        this.language,
    });

    int id;
    String name;
    String description;
    String language;

    factory Author.fromJson(Map<String, dynamic> json) => Author(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        language: json["language"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "language": language,
    };
}

class Footnote {
    Footnote({
        this.id,
        this.number,
        this.text,
    });

    int id;
    int number;
    String text;

    factory Footnote.fromJson(Map<String, dynamic> json) => Footnote(
        id: json["id"],
        number: json["number"],
        text: json["text"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "number": number,
        "text": text,
    };
}
