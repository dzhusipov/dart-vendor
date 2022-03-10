import 'audio.dart';
import 'chat.dart';
import 'contact.dart';
import 'document.dart';
import 'location.dart';
import 'message_entity.dart';
import 'photo_size.dart';
import 'sticker.dart';
import 'user.dart';
import 'venue.dart';
import 'video.dart';
import 'voice.dart';

class Message {
  late int message_id;
  User? from;
  late int date;
  Chat? chat;
  User? forward_from;
  late int forward_date;
  Message? reply_to_message;
  late String text;
  List<MessageEntity>? entities;
  Audio? audio;
  Document? document;
  List<PhotoSize>? photo;
  Sticker? sticker;
  Video? video;
  Voice? voice;
  late String caption;
  Contact? contact;
  Location? location;
  Venue? venue;
  User? new_chat_member;
  User? left_chat_member;
  late String new_chat_title;
  List<PhotoSize>? new_chat_photo;
  late bool delete_chat_photo = true;
  late bool group_chat_created = true;
  late bool supergroup_chat_created = true;
  late bool channel_chat_created = true;
  late int migrate_to_chat_id;
  late int migrate_from_chat_id;
  Message? pinned_message;

  Message(
      this.message_id,
      this.from,
      this.date,
      this.chat,
      this.forward_from,
      this.forward_date,
      this.reply_to_message,
      this.text,
      this.entities,
      this.audio,
      this.document,
      this.photo,
      this.sticker,
      this.video,
      this.voice,
      this.caption,
      this.contact,
      this.location,
      this.venue,
      this.new_chat_member,
      this.left_chat_member,
      this.new_chat_title,
      this.new_chat_photo,
      this.delete_chat_photo,
      this.group_chat_created,
      this.supergroup_chat_created,
      this.channel_chat_created,
      this.migrate_to_chat_id,
      this.migrate_from_chat_id,
      this.pinned_message);

  Message.fromJson(Map<String, dynamic> json) {
    message_id = json['message_id'];
    from = json['from'] != null ? User.fromJson(json['from']) : null;
    date = json['date'];
    chat = json['chat'] != null ? Chat.fromJson(json['chat']) : null;
    forward_from = json['forward_from'] != null
        ? User.fromJson(json['forward_from'])
        : null;
    forward_date = json['forward_date'];
    reply_to_message = json['reply_to_message'] != null
        ? Message.fromJson(json['reply_to_message'])
        : null;
    text = json['text'];
    entities = json['entities'] != null
        ? List<MessageEntity>.from(
            json['entities'].map((x) => MessageEntity.fromJson(x)))
        : null;
    audio = json['audio'] != null ? Audio.fromJson(json['audio']) : null;
    document =
        json['document'] != null ? Document.fromJson(json['document']) : null;
    photo = json['photo'] != null
        ? List<PhotoSize>.from(json['photo'].map((x) => PhotoSize.fromJson(x)))
        : null;
    sticker =
        json['sticker'] != null ? Sticker.fromJson(json['sticker']) : null;
    video = json['video'] != null ? Video.fromJson(json['video']) : null;
    voice = json['voice'] != null ? Voice.fromJson(json['voice']) : null;
  }
}
