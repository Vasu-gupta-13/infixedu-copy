class AdminCategory {
  String? title;
  dynamic id;

  AdminCategory({this.title, this.id});

  factory AdminCategory.fromJson(Map<String, dynamic> json) {
    return AdminCategory(
      title: json['category_name'],
      id: json['id'],
    );
  }
}

class AdminCategoryList {
  List<AdminCategory> categories;

  AdminCategoryList(this.categories);

  factory AdminCategoryList.fromJson(List<dynamic> json) {
    List<AdminCategory> subjects = [];

    subjects = json.map((i) => AdminCategory.fromJson(i)).toList();

    return AdminCategoryList(subjects);
  }
}
