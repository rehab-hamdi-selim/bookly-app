/// isAvailable : true
/// downloadLink : "http://books.google.com.eg/books/download/An_Account_Shewing_in_Numerical_Order_th.pdf?id=ACxq93pkuokC&hl=&output=pdf&sig=ACfU3U1zvpsTaNF94FtvCiOeBDKuF1ePVQ&source=gbs_api"

class Pdf {
  Pdf({
      this.isAvailable, 
      this.downloadLink,});

  Pdf.fromJson(dynamic json) {
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