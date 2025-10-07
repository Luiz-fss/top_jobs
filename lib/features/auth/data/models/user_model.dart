class UserModel {
  String id;
  String name;
  String phone;
  bool isActive;
  List<String> roles;

  UserModel({
    required this.name,
    required this.id,
    required this.phone,
    required this.isActive,
    required this.roles,
  });

  factory UserModel.fromJson(Map<String,dynamic>json) =>UserModel(
    name: json["name"],
    id: json["id"],
    isActive: json["isActive"],
    phone: json["phone"],
    roles: List<String>.from(json["roles"].map((x)=>x)),
  );

  Map<String, dynamic> toJson()=> {
    "name":name,
    "id":id,
    "isActive": isActive,
    "phone":phone,
    "roles":List<dynamic>.from(roles.map((x)=>x)),
  };
}
