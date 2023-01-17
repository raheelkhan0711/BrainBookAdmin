// ignore_for_file: file_names
class PhrasePostModel {
  String? english;
  String? audioUrl;
  String? targetLanguage;
  String? languageId;
  String? phraseId;

  PhrasePostModel(
      {this.english,
      this.audioUrl,
      this.targetLanguage,
      this.languageId,
      this.phraseId});

  PhrasePostModel.fromJson(Map<String, dynamic> json) {
    english = json['english'];
    audioUrl = json['audioUrl'];
    targetLanguage = json['targetLanguage'];
    languageId = json['language'];
    phraseId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['english'] = english;
    data['audioUrl'] = audioUrl;
    data['targetLanguage'] = targetLanguage;
    data['language'] = languageId;
    data['_id'] = phraseId;
    return data;
  }
}
