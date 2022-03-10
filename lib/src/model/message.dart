
import 'document.dart';
import 'audio.dart';
import 'chat.dart';
import 'photo_size.dart';
import 'user.dart';
import 'message_entity.dart';

class Message {
     int message_id;
     User from;
     int date;
     Chat chat;
     User forward_from;
     int forward_date;
     Message reply_to_message;
     String text;
     List<MessageEntity> entities;
     Audio audio;
     Document document;
     List<PhotoSize> photo;
     Sticker sticker;
     Video video;
     Voice voice;
     String caption;
     Contact contact;
     Location location;
     Venue venue;
     User new_chat_member;
     User left_chat_member;
     String new_chat_title;
     PhotoSize[] new_chat_photo;
     bool delete_chat_photo = true;
     bool group_chat_created = true;
     bool supergroup_chat_created = true;
     bool channel_chat_created = true;
     int migrate_to_chat_id;
     int migrate_from_chat_id;
     Message pinned_message;

     Message({required this.message_id, required this.from, required this.date, required this.chat, required this.forward_from, required this.forward_date, required this.reply_to_message, required this.text, this.entities, this.audio, this.document, this.photo, this.sticker, this.video, this.voice, required this.caption, this.contact, this.location, this.venue, required this.new_chat_member, required this.left_chat_member, required this.new_chat_title, this.new_chat_photo, required this.delete_chat_photo, required this.group_chat_created, required this.supergroup_chat_created, required this.channel_chat_created, required this.migrate_to_chat_id, required this.migrate_from_chat_id, required this.pinned_message});
     
}