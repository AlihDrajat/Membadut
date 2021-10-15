class User {
  final int id;
  final String name;
  final String imageUrl;
  final String signature;

  User(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.signature});

  get user => null;
}

final User currentUser =
    User(id: 0, name: 'CiwiG0', imageUrl: 'assets/ciwi.jpg', signature: '');

final User ayaka =
    User(id: 1, name: 'Calonku', imageUrl: 'assets/ayaka.jpg', signature: '');

final User raidenEi =
    User(id: 2, name: 'Chef Ei', imageUrl: 'assets/Ei.jpeg', signature: '');

final User eula =
    User(id: 3, name: 'Eula', imageUrl: 'assets/eula.jpeg', signature: '');

final User hutao = User(
    id: 4, name: 'Kang Peti', imageUrl: 'assets/hutao.jpeg', signature: '');

final User ganyu =
    User(id: 5, name: 'Qurban', imageUrl: 'assets/ganyu.jpeg', signature: '');

final User yanfei =
    User(id: 6, name: 'Yanfei', imageUrl: 'assets/yanfei.jpeg', signature: '');

final User yoimiya = User(
    id: 7,
    name: 'Peledak Handal',
    imageUrl: 'assets/yoimiya.jpeg',
    signature: '');

final User zhongli =
    User(id: 8, name: 'Exuvia', imageUrl: 'assets/zhongli.jpeg', signature: '');

final User albedo = User(
    id: 9,
    name: 'Pamannya klee',
    imageUrl: 'assets/albedo.jpeg',
    signature: '');

final User xiao = User(
    id: 10,
    name: 'Manusia adalah Alat',
    imageUrl: 'assets/xiao.jpeg',
    signature: '');

List<User> following = [
  User(
    id: 1,
    name: 'Calonku',
    imageUrl: 'assets/ayaka.jpg',
    signature: 'CiwiG0 <3',
  ),
  User(
    id: 2,
    name: 'Chef Ei',
    imageUrl: 'assets/Ei.jpeg',
    signature: 'Can cook!!',
  ),
  User(
    id: 3,
    name: 'Eula',
    imageUrl: 'assets/eula.jpeg',
    signature: 'Vengeance will be mine',
  ),
  User(
    id: 4,
    name: 'Kang Peti',
    imageUrl: 'assets/hutao.jpeg',
    signature: 'Come we have special offer for traveler',
  ),
  User(
    id: 5,
    name: 'Qurban',
    imageUrl: 'assets/ganyu.jpeg',
    signature: 'Still work overtime~',
  ),
  User(
    id: 6,
    name: 'Yanfei',
    imageUrl: 'assets/yanfei.jpeg',
    signature: 'The laws know no mercy',
  ),
  User(
    id: 7,
    name: 'Peledak Handal',
    imageUrl: 'assets/yoimiya.jpeg',
    signature: 'Biu Biu Pheww',
  ),
  User(
    id: 8,
    name: 'Exuvia',
    imageUrl: 'assets/zhongli.jpeg',
    signature: 'Where osmanthus wine?',
  ),
  User(
    id: 9,
    name: 'Pamannya Klee',
    imageUrl: 'assets/albedo.jpeg',
    signature: 'I have the best drop along the other ost',
  ),
  User(
    id: 10,
    name: 'Manusia adalah alat',
    imageUrl: 'assets/xiao.jpeg',
    signature: 'daijobu deso, datte kimi YOWAIMO',
  ),
];
