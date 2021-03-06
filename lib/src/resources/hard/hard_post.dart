import 'dart:convert';

import 'package:cloudmate/src/models/road_map_content_model.dart';
import 'package:cloudmate/src/models/road_map_content_type.dart';
import 'package:cloudmate/src/resources/hard/hard_chat.dart';
import 'package:cloudmate/src/resources/hard/hard_exam_post.dart';

class Post {
  final String id;
  String groupName;
  String authorName;
  String imageGroup;
  String imageAuthor;
  String content;
  int status;
  Exam? exam;
  RoadMapContentModel? attendance;
  List<String>? images;

  Post({
    required this.id,
    required this.groupName,
    required this.authorName,
    required this.imageGroup,
    required this.imageAuthor,
    required this.content,
    required this.status,
    this.attendance,
    this.exam,
    this.images,
  });

  Post copyWith({
    String? id,
    String? groupName,
    String? authorName,
    String? imageGroup,
    String? imageAuthor,
    String? content,
  }) {
    return Post(
      id: id ?? this.id,
      groupName: groupName ?? this.groupName,
      authorName: authorName ?? this.authorName,
      imageGroup: imageGroup ?? this.imageGroup,
      imageAuthor: imageAuthor ?? this.imageAuthor,
      content: content ?? this.content,
      status: status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'groupName': groupName,
      'authorName': authorName,
      'imageGroup': imageGroup,
      'imageAuthor': imageAuthor,
      'content': content,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'],
      groupName: map['groupName'],
      authorName: map['authorName'],
      imageGroup: map['imageGroup'],
      imageAuthor: map['imageAuthor'],
      content: map['content'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(id: $id, groupName: $groupName, authorName: $authorName, imageGroup: $imageGroup, imageAuthor: $imageAuthor, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Post &&
        other.id == id &&
        other.groupName == groupName &&
        other.authorName == authorName &&
        other.imageGroup == imageGroup &&
        other.imageAuthor == imageAuthor &&
        other.content == content;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        groupName.hashCode ^
        authorName.hashCode ^
        imageGroup.hashCode ^
        imageAuthor.hashCode ^
        content.hashCode;
  }
}

List<Post> posts = [
  Post(
    id: '4',
    groupName: 'Kotlin - Khoa Ph???m',
    authorName: 'H???ng Vinh',
    imageGroup:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ87JPs-UCb6UdsnWVx9H0O57TczZ9m8yOYIA&usqp=CAU',
    imageAuthor: 'https://avatars.githubusercontent.com/u/60530946?v=4',
    content: '??i???m danh n??o...',
    status: 2,
    attendance: RoadMapContentModel(
      id: '',
      startTime: DateTime.now(),
      endTime: DateTime.now().add(
        Duration(minutes: 10),
      ),
      name: '',
      description: '',
      type: RoadMapContentType.attendance,
      roadMapContentId: '',
    ),
  ),
  Post(
    id: '1',
    groupName: 'Flutter Advance',
    authorName: 'lambiengcode',
    imageGroup:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzy6LtbJQP3wf-qBbtsfO1zJO3q_RZp59Yow&usqp=CAU',
    imageAuthor: 'https://avatars.githubusercontent.com/u/60530946?v=4',
    content: 'Nh??? ????ng gi??? nha c??c b???n!',
    status: 0,
    exam: Exam(
      id: '',
      name: 'Ki???m tra tu???n 7',
      duration: 3600,
      startTime: DateTime.now().add(
        Duration(minutes: 60),
      ),
    ),
  ),
  Post(
    id: '6',
    groupName: 'Android',
    authorName: 'H???ng Vinh',
    imageGroup:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM_ZRIHU7JMPfPUhWh-kdOQd4E9BUYFyrw9UYRS0goplX9UW4TNRfcqiAh5Ax7ZNXYwiM&usqp=CAU',
    imageAuthor: 'https://avatars.githubusercontent.com/u/60530946?v=4',
    content: 'Xin ch??o m???i ng?????i, m??nh mu???n h???i c??ch xu???t file apk b???ng l???nh ???',
    status: 3,
    images: [],
  ),
  Post(
    id: '5',
    groupName: 'Firebase',
    authorName: 'H???ng Vinh',
    imageGroup: 'https://firebase.google.com/images/brand-guidelines/logo-logomark.png',
    imageAuthor: 'https://avatars.githubusercontent.com/u/60530946?v=4',
    content: 'Cho m??nh h???i ??o???n code n??y sao kh??ng ch???y ???????c ???!',
    status: 3,
    images: chats.sublist(1).map((e) => e.image!).toList(),
  ),
  Post(
    id: '2',
    groupName: 'Javascript Basic',
    authorName: 'lambiengcode',
    imageGroup:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRle534gajxIaVBiruE-qYOJ5rWSoIOuXhzyQ&usqp=CAU',
    imageAuthor: 'https://avatars.githubusercontent.com/u/60530946?v=4',
    content: '',
    status: 0,
    exam: Exam(
      id: '',
      name: 'Ki???m tra gi???a k???',
      duration: 1200,
      startTime: DateTime.now().add(
        Duration(minutes: 60),
      ),
    ),
  ),
  Post(
    id: '3',
    groupName: 'Java Spring Boot',
    authorName: 'H???ng Vinh',
    imageGroup:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNUxJc3GaGeWGdkAUX2HV26TuJwVM5f9yvxA&usqp=CAU',
    imageAuthor: 'https://avatars.githubusercontent.com/u/60530946?v=4',
    content: 'N???p BTVN ????ng nha c??c em...',
    status: 1,
    attendance: RoadMapContentModel(
      id: '',
      startTime: DateTime.now(),
      endTime: DateTime.now().add(
        Duration(minutes: 10),
      ),
      name: 'BTVN Tu???n 7',
      description: '',
      type: RoadMapContentType.attendance,
      roadMapContentId: '',
    ),
  ),
];
