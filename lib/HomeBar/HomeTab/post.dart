class User {
  final int id;
  final String name;
  final String imageUrl;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  get user => null;
}

class Post {
  final User sender;
  final String time;
  final String postUrl;
  final bool isLiked;

  Post({
    required this.sender,
    required this.time,
    required this.postUrl,
    required this.isLiked,
  });
}

final User currentUser = User(
  id: 0,
  name: 'CiwiG0',
  imageUrl: 'assets/ciwi.jpg',
);

final User ayaka = User(
  id: 1,
  name: 'Calonku',
  imageUrl: 'assets/ayaka.jpg',
);
final User raidenEi = User(
  id: 2,
  name: 'Chef Ei',
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
  name: 'Exuvia',
  imageUrl: 'assets/zhongli.jpeg',
);
final User albedo = User(
  id: 9,
  name: 'Pamannya klee',
  imageUrl: 'assets/albedo.jpeg',
);
final User xiao = User(
  id: 10,
  name: 'Manusia adalah Alat',
  imageUrl: 'assets/xiao.jpeg',
);

List<Post> posts = [
  Post(
    sender: ayaka,
    time: '7:28 PM',
    postUrl: 'assets/ciwi.jpg',
    isLiked: true,
  ),
  Post(
    sender: zhongli,
    time: 'A week ago',
    postUrl: '',
    isLiked: true,
  ),
  Post(
    sender: raidenEi,
    time: '1:16 PM',
    postUrl: '',
    isLiked: false,
  ),
  Post(
    sender: albedo,
    time: '5:49 PM',
    postUrl: '',
    isLiked: false,
  ),
  Post(
    sender: yanfei,
    time: '5:21 PM',
    postUrl: '',
    isLiked: false,
  ),
  Post(
    sender: ganyu,
    time: 'Yesterday',
    postUrl: '',
    isLiked: false,
  ),
  Post(
    sender: hutao,
    time: '0:34 AM',
    postUrl: '',
    isLiked: false,
  ),
  Post(
    sender: xiao,
    time: '7:32 PM',
    postUrl: '',
    isLiked: false,
  ),
  Post(
    sender: yoimiya,
    time: '6:13 AM',
    postUrl: '',
    isLiked: false,
  ),
  Post(
    sender: eula,
    time: '4:53 AM',
    postUrl: '',
    isLiked: false,
  ),
];
