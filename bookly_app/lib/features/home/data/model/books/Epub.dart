/// isAvailable : false
/// downloadLink : "http://books.google.com.eg/books/download/An_Account_Shewing_in_Numerical_Order_th.epub?id=ACxq93pkuokC&hl=&output=epub&source=gbs_api"

class Epub {
  Epub({
      this.isAvailable, 
      this.downloadLink,});

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
    downloadLink = json['downloadLink'];
  }
  bool? isAvailable;
  String? downloadLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['downloadLink'] = downloadLink;
    return map;
  }

}