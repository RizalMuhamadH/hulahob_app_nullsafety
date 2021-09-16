import 'package:hulahob_app_nullsafety/models/author.dart';
import 'package:hulahob_app_nullsafety/models/category.dart';
import 'package:hulahob_app_nullsafety/models/image.dart';

class News {
  int? id;
  String? title;
  String? description;
  Category? category;
  Image? image;
  Author? author;

  News(
      {this.id,
      this.title,
      this.description,
      this.category,
      this.image,
      this.author});

  News.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
    author =
        json['author'] != null ? new Author.fromJson(json['author']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    if (this.category != null) {
      data['category'] = this.category?.toJson();
    }
    if (this.image != null) {
      data['image'] = this.image?.toJson();
    }
    if (this.author != null) {
      data['author'] = this.author?.toJson();
    }
    return data;
  }
}
