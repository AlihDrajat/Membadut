class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool newStory;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.newStory,
  });

  get user => null;
}

class PostList {
  final User sender;
  final String time;
  final String postUrl;
  final bool isLiked;

  PostList(
      {required this.sender,
      required this.time,
      required this.postUrl,
      required this.isLiked});
}

final User currentUser =
    User(id: 0, name: 'CiwiG0', imageUrl: 'assets/ciwi.jpg', newStory: false);

final User ayaka =
    User(id: 1, name: 'Calonku', imageUrl: 'assets/ayaka.jpg', newStory: true);

final User raidenEi =
    User(id: 2, name: 'Chef Ei', imageUrl: 'assets/Ei.jpeg', newStory: true);

final User eula =
    User(id: 3, name: 'Eula', imageUrl: 'assets/eula.jpeg', newStory: true);

final User hutao = User(
    id: 4, name: 'Kang Peti', imageUrl: 'assets/hutao.jpeg', newStory: true);

final User ganyu =
    User(id: 5, name: 'Qurban', imageUrl: 'assets/ganyu.jpeg', newStory: false);

final User yanfei = User(
    id: 6, name: 'Yanfei', imageUrl: 'assets/yanfei.jpeg', newStory: false);

final User yoimiya = User(
    id: 7,
    name: 'Peledak Handal',
    imageUrl: 'assets/yoimiya.jpeg',
    newStory: false);
final User zhongli = User(
    id: 8, name: 'Exuvia', imageUrl: 'assets/zhongli.jpeg', newStory: false);
final User albedo = User(
    id: 9,
    name: 'Pamannya klee',
    imageUrl: 'assets/albedo.jpeg',
    newStory: false);
final User xiao = User(
    id: 10,
    name: 'Manusia adalah Alat',
    imageUrl: 'assets/xiao.jpeg',
    newStory: false);

List<User> story = [
  User(
    id: 0,
    name: 'You',
    imageUrl: 'assets/ciwi.jpg',
    newStory: false,
  ),
  User(
    id: 1,
    name: 'Calonku',
    imageUrl: 'assets/ayaka.jpg',
    newStory: true,
  ),
  User(
    id: 2,
    name: 'Chef Ei',
    imageUrl: 'assets/Ei.jpeg',
    newStory: true,
  ),
  User(
    id: 3,
    name: 'Eula',
    imageUrl: 'assets/eula.jpeg',
    newStory: true,
  ),
  User(
    id: 4,
    name: 'Kang Peti',
    imageUrl: 'assets/hutao.jpeg',
    newStory: true,
  ),
  User(
    id: 5,
    name: 'Qurban',
    imageUrl: 'assets/ganyu.jpeg',
    newStory: false,
  ),
  User(
    id: 6,
    name: 'Yanfei',
    imageUrl: 'assets/yanfei.jpeg',
    newStory: false,
  ),
  User(
    id: 7,
    name: 'Peledak Handal',
    imageUrl: 'assets/yoimiya.jpeg',
    newStory: false,
  ),
  User(
    id: 8,
    name: 'Exuvia',
    imageUrl: 'assets/zhongli.jpeg',
    newStory: false,
  ),
  User(
    id: 9,
    name: 'Pamannya Klee',
    imageUrl: 'assets/albedo.jpeg',
    newStory: false,
  ),
  User(
    id: 10,
    name: 'Manusia adalah alat',
    imageUrl: 'assets/xiao.jpeg',
    newStory: false,
  ),
];

List<PostList> posts = [
  PostList(
    sender: ayaka,
    time: '7:28 PM',
    postUrl: 'assets/ciwi.jpg',
    isLiked: true,
  ),
  PostList(
    sender: zhongli,
    time: 'A week ago',
    postUrl: '',
    isLiked: true,
  ),
  PostList(
    sender: raidenEi,
    time: '1:16 PM',
    postUrl: '',
    isLiked: false,
  ),
  PostList(
    sender: albedo,
    time: '5:49 PM',
    postUrl: '',
    isLiked: false,
  ),
  PostList(
    sender: yanfei,
    time: '5:21 PM',
    postUrl: '',
    isLiked: false,
  ),
  PostList(
    sender: ganyu,
    time: 'Yesterday',
    postUrl: '',
    isLiked: false,
  ),
  PostList(
    sender: hutao,
    time: '0:34 AM',
    postUrl: '',
    isLiked: false,
  ),
  PostList(
    sender: xiao,
    time: '7:32 PM',
    postUrl: '',
    isLiked: false,
  ),
  PostList(
    sender: yoimiya,
    time: '6:13 AM',
    postUrl: '',
    isLiked: false,
  ),
  PostList(
    sender: eula,
    time: '4:53 AM',
    postUrl: '',
    isLiked: false,
  ),
  PostList(
    sender: xiao,
    time: '',
    postUrl: '',
    isLiked: true,
  )
];
