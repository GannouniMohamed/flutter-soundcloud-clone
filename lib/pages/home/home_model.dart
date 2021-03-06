import 'package:equatable/equatable.dart';

/// generate by https://javiercbk.github.io/json_to_dart/
class AutogeneratedHome {
  final List<HomeModel> results;

  AutogeneratedHome({this.results});

  factory AutogeneratedHome.fromJson(Map<String, dynamic> json) {
    List<HomeModel> temp;
    if (json['results'] != null) {
      temp = new List<HomeModel>();
      json['results'].forEach((v) {
        temp.add(new HomeModel.fromJson(v));
      });
    }
    return AutogeneratedHome(results: temp);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HomeModel extends Equatable {
  final int id;
  final String name;

  HomeModel(this.id, this.name);

  @override
  List<Object> get props => [id, name];

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(json['id'], json['name']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
  
}
