import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class AvatarBloc implements BlocBase{

  final _avatarController = BehaviorSubject<dynamic>();
  Sink get inAvatar => _avatarController.sink;
  Stream get outAvatar => _avatarController.stream;

  AvatarBloc();

  @override
  void dispose() {
    _avatarController.close();
  }

}