import 'user_model.dart';

class MessageModel {
  final UserModel sender;
  final String time;
  final String text;

  final bool unread;

  MessageModel({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });

  get isLiked => null;
}

// YOU _ CURRENT USERMODEL

final UserModel currentUserModel = UserModel(
  id: 0,
  name: 'Current UserModel',
  imageUrl: 'images/profile.png',
);

// USER MODEL

final UserModel julianDasilva = UserModel(
  id: 2,
  name: 'Julian Dasilva',
  imageUrl: 'images/Julian Dasilva.jpg',
);
final UserModel claireKumas = UserModel(
  id: 3,
  name: 'Claire Kumas',
  imageUrl: 'images/Claire Kumas.jpg',
);
final UserModel mikeLyne = UserModel(
  id: 4,
  name: 'Mike Lyne',
  imageUrl: 'images/Mike Lyne.jpg',
);
final UserModel ashleyWilliams = UserModel(
  id: 5,
  name: 'Ashley Williams',
  imageUrl: 'images/Ashley Williams.jpg',
);
final UserModel blairDota = UserModel(
  id: 6,
  name: 'Blair Dota',
  imageUrl: 'images/Blair Dota.jpg',
);
final UserModel mollyClark = UserModel(
  id: 7,
  name: 'Molly Clark',
  imageUrl: 'images/Molly Clark.jpg',
);

// EXAMPLE CHATS ON HOME SCREEN DATA

List<MessageModel> chats = [
  MessageModel(
    sender: julianDasilva,
    time: '12:00 PM',
    text: 'Hi Julian! See you after work?',
    unread: true,
  ),
  MessageModel(
    sender: mikeLyne,
    time: '13:50 PM',
    text: 'I must tell you my interview this...',
    unread: true,
  ),
  MessageModel(
    sender: claireKumas,
    time: '13:30 PM',
    text: 'Yes I can do this to you in the...',
    unread: false,
  ),
  MessageModel(
    sender: blairDota,
    time: '13:00 PM',
    text: 'By the way, did not you see my...',
    unread: false,
  ),
  MessageModel(
    sender: mollyClark,
    time: '12:45 PM',
    text: 'Yes I am so happy!',
    unread: false,
  ),
  MessageModel(
    sender: ashleyWilliams,
    time: '12:15 PM',
    text: "I'll be there this weekend with my...",
    unread: false,
  ),
];

// EXAMPLE MESSAGEModelS IN CHAT SCREEN  DATA

List<MessageModel> messages = [
  MessageModel(
    sender: julianDasilva,
    time: '5:30 PM',
    text: 'Hi Yaqoob ! What’s Up?',
    unread: true,
  ),
  MessageModel(
    sender: currentUserModel,
    time: '5:30 PM',
    text: "Oh, hello! All perfectly fine I'm just heading out for something",
    unread: true,
  ),
  MessageModel(
    sender: julianDasilva,
    time: '5:45 PM',
    text: 'How\'s the doggo?',
    unread: true,
  ),
  MessageModel(
    sender: julianDasilva,
    time: '6:15 PM',
    text: 'All the food',
    unread: true,
  ),
  MessageModel(
    sender: currentUserModel,
    time: '6:30 PM',
    text: "Yeah sure I'll be there this weekend with my brother",
    unread: true,
  ),
  MessageModel(
    sender: julianDasilva,
    time: '7:00 PM',
    text: 'Yes I Am So Happy',
    unread: true,
  ),
];
