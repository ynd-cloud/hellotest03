
class ApiDogsDao {
  String message;
  String status;

  ApiDogsDao({this.message, this.status});

  ApiDogsDao.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}
// Can use Json convert this function here >> https://javiercbk.github.io/json_to_dart/
