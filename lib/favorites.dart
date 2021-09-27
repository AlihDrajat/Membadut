class User {
  final int id;
  final String name;
  final String imageUrl;
  final String lastSeen;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.lastSeen,
  });

  get user => null;
}

class Message {
  final User sender;
  final String time;
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

final User currentUser = User(
  id: 0,
  name: 'CiwiG0',
  imageUrl: 'assets/ciwi.jpg',
  lastSeen: '',
);

final User ayaka = User(
  id: 1,
  name: 'Calonku',
  imageUrl: 'assets/ayaka.jpg',
  lastSeen: 'last seen today at 7.29 PM ',
);
final User raidenEi = User(
  id: 2,
  name: 'Chef Ei',
  imageUrl: 'assets/Ei.jpeg',
  lastSeen: 'last seen today at 1:20 PM ',
);
final User eula = User(
  id: 3,
  name: 'Eula',
  imageUrl: 'assets/eula.jpeg',
  lastSeen: 'last seen today at 5:00 Am',
);
final User hutao = User(
  id: 4,
  name: 'Kang Peti',
  imageUrl: 'assets/hutao.jpeg',
  lastSeen: 'last seen today at 0:48 AM',
);
final User ganyu = User(
  id: 5,
  name: 'Qurban',
  imageUrl: 'assets/ganyu.jpeg',
  lastSeen: 'last seen Yesterday',
);
final User yanfei = User(
  id: 6,
  name: 'Yanfei',
  imageUrl: 'assets/yanfei.jpeg',
  lastSeen: 'last seen today at 5:30 PM',
);
final User yoimiya = User(
  id: 7,
  name: 'Peledak Handal',
  imageUrl: 'assets/yoimiya.jpeg',
  lastSeen: 'last seen today at 7:02 AM',
);
final User zhongli = User(
  id: 8,
  name: 'Exuvia',
  imageUrl: 'assets/zhongli.jpeg',
  lastSeen: 'last seen a week ago',
);
final User albedo = User(
  id: 9,
  name: 'Pamannya klee',
  imageUrl: 'assets/albedo.jpeg',
  lastSeen: 'last seen today at 5:51 PM',
);
final User xiao = User(
  id: 10,
  name: 'Manusia adalah Alat',
  imageUrl: 'assets/xiao.jpeg',
  lastSeen: 'last seen today at 7:40 PM',
);

List<User> favorites = [ayaka, hutao, ganyu, yoimiya, albedo, zhongli];

List<Message> chats = [
  Message(
    sender: ayaka,
    time: '7:28 PM',
    text: 'I miss you... T_T',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: zhongli,
    time: 'A week ago',
    text: 'Where is barbarabatatoes??',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: raidenEi,
    time: '1:16 PM',
    text: 'Are eyes vision too?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: albedo,
    time: '5:49 PM',
    text: 'Wassup, let\'s swim in dragonspine. Today so hot ',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: yanfei,
    time: '5:21 PM',
    text: 'Wassup, let\'s swim in dragonspine. Today so hot ',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ganyu,
    time: 'Yesterday',
    text: 'Coconut milk??',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: hutao,
    time: '0:34 AM',
    text: 'Wanna play hide n seek?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: xiao,
    time: '7:32 PM',
    text: 'Mendoksai neee..',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: yoimiya,
    time: '6:13 AM',
    text: 'Who is klee?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: eula,
    time: '4:53 AM',
    text: 'You\'ll have vengeance',
    isLiked: false,
    unread: false,
  ),
];

List<Message> messages = [
  Message(
    sender: currentUser,
    time: '5:32 PM',
    text: 'Okayy have fun',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: ayaka,
    time: '5:30 PM',
    text: 'I just took a bath. Then i want to read novel, catch ya later....',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Ehe...how about you?what are you doing',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ayaka,
    time: '3:45 PM',
    text: 'Aaaaa thats sweet...',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '3:15 PM',
    text: 'About you of course ^_^',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: ayaka,
    time: '2:30 PM',
    text: 'Waaaa what did you dream about??',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:00 PM',
    text: 'Just woke up from my best dream',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ayaka,
    time: '1.55 PM',
    text: 'Hello honey...how\'s going?',
    isLiked: false,
    unread: true,
  ),
];
