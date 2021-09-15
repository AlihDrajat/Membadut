class User {
  final int id;
  final String name;
  final String imageUrl;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'CiwiG0',
  imageUrl: 'assets/ciwi.jpg',
);

// USERS
final User ayaka = User(
  id: 1,
  name: 'Calonku',
  imageUrl: 'assets/ayaka.jpeg',
);
final User raidenei = User(
  id: 2,
  name: 'Raiden Ei',
  imageUrl: 'assets/Ei.jpeg',
);
final User eula = User(
  id: 3,
  name: 'Eula',
  imageUrl: 'assets/eula.jpeg',
);
final User hutao = User(
  id: 4,
  name: 'Kang Peti',
  imageUrl: 'assets/hutao.jpeg',
);
final User ganyu = User(
  id: 5,
  name: 'Qurban',
  imageUrl: 'assets/ganyu.jpeg',
);
final User yanfei = User(
  id: 6,
  name: 'Yanfei',
  imageUrl: 'assets/yanfei.jpeg',
);
final User yoimiya = User(
  id: 7,
  name: 'Peledak Handal',
  imageUrl: 'assets/yoimiya.jpeg',
);
final User zhongli = User(
  id: 8,
  name: 'No Mora(x)',
  imageUrl: 'assets/zhongli.jpeg',
);
final User albedo = User(
  id: 9,
  name: 'Pamannya klee',
  imageUrl: 'assets/albedo.jpeg',
);
final User xiao = User(
  id: 10,
  name: 'Xiao',
  imageUrl: 'assets/xiao.jpeg',
);
// FAVORITE CONTACTS
List<User> favorites = [ayaka, hutao, ganyu, yoimiya, albedo, zhongli];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: ayaka,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: zhongli,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: raidenei,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: albedo,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ganyu,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: hutao,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: xiao,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: yoimiya,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: eula,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: ayaka,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ayaka,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ayaka,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ayaka,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
