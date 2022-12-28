// ignore_for_file: file_names
class PhrasePutModel {
  String? phraseId;
  String? english;
  String? audioUrl;
  String? targetLanguage;

  PhrasePutModel(
      {this.phraseId, this.english, this.audioUrl, this.targetLanguage});

  PhrasePutModel.fromJson(Map<String, dynamic> json) {
    phraseId = json['_id'];
    english = json['english'];
    audioUrl = json['audioUrl'];
    targetLanguage = json['targetLanguage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = phraseId;
    data['english'] = english;
    data['audioUrl'] = audioUrl;
    data['targetLanguage'] = targetLanguage;
    return data;
  }
}
