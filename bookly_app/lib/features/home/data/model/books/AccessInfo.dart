import 'Epub.dart';
import 'Pdf.dart';

/// country : "EG"
/// viewability : "ALL_PAGES"
/// embeddable : true
/// publicDomain : true
/// textToSpeechPermission : "ALLOWED"
/// epub : {"isAvailable":false,"downloadLink":"http://books.google.com.eg/books/download/An_Account_Shewing_in_Numerical_Order_th.epub?id=ACxq93pkuokC&hl=&output=epub&source=gbs_api"}
/// pdf : {"isAvailable":true,"downloadLink":"http://books.google.com.eg/books/download/An_Account_Shewing_in_Numerical_Order_th.pdf?id=ACxq93pkuokC&hl=&output=pdf&sig=ACfU3U1zvpsTaNF94FtvCiOeBDKuF1ePVQ&source=gbs_api"}
/// webReaderLink : "http://play.google.com/books/reader?id=ACxq93pkuokC&hl=&source=gbs_api"
/// accessViewStatus : "FULL_PUBLIC_DOMAIN"
/// quoteSharingAllowed : false

class AccessInfo {
  AccessInfo({
      this.country, 
      this.viewability, 
      this.embeddable, 
      this.publicDomain, 
      this.textToSpeechPermission, 
      this.epub, 
      this.pdf, 
      this.webReaderLink, 
      this.accessViewStatus, 
      this.quoteSharingAllowed,});

  AccessInfo.fromJson(dynamic json) {
    country = json['country'];
    viewability = json['viewability'];
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission'];
    epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    pdf = json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null;
    webReaderLink = json['webReaderLink'];
    accessViewStatus = json['accessViewStatus'];
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['viewability'] = viewability;
    map['embeddable'] = embeddable;
    map['publicDomain'] = publicDomain;
    map['textToSpeechPermission'] = textToSpeechPermission;
    if (epub != null) {
      map['epub'] = epub?.toJson();
    }
    if (pdf != null) {
      map['pdf'] = pdf?.toJson();
    }
    map['webReaderLink'] = webReaderLink;
    map['accessViewStatus'] = accessViewStatus;
    map['quoteSharingAllowed'] = quoteSharingAllowed;
    return map;
  }

}