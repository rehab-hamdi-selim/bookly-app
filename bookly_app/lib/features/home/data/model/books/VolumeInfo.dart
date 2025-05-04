import 'ReadingModes.dart';
import 'PanelizationSummary.dart';
import 'ImageLinks.dart';

/// title : "An Account, Shewing in Numerical Order the Tickets Intitled to Benefits in the Lottery ... Anno 1769-1772, 1778-1789"
/// publisher : "Thomas Lee"
/// publishedDate : "1787"
/// readingModes : {"text":false,"image":true}
/// pageCount : 92
/// printedPageCount : 92
/// printType : "BOOK"
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "0.5.5.0.full.1"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73D7QAKrafSZppEwTFJmQYMytiEAn_Y3yPBNKIGuNnYqKD_b_0wiI7VBU29oc4Uh8OxJ9DGccg65We__VceOBIoSOPk1H_zSzC5tJxag61chcaMZ13oYFRYa0Rszj9HDBXye9_2&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70RFRl1JqriUZUO8u0TTVnJJ5YTXvoiBDLhcDoJfG0ZFG4Xs7I5Exi3cqjVJQn1xedp28I4P51KPV-Y5Vi6m9IkN3mRqKMh-WN-KsITx7zg3tYf5me5RwGDU-fIMSlyV4QR-TUT&source=gbs_api","small":"http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE72_yxSgKpqAX1NzJRN0KdjywRGnhUjQNCSPBwqRbtQWSzqVE2KYMcImITXshSnTPrdt_3klKuqeH68DS-Tet61W8daL5aLD-OG4TVgr6_Elz5hhXc68Rd3b1HeHApAx0Pr9N7fg&source=gbs_api","medium":"http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73MCMBdkXpPdB2e11KkuOv9ZtTU6HPw-EtA72FYZgbyaXn8F9WUjyJYhQL4Y0sIY8AH2nqCYvrIG_N52wjhfvl0YlEyk_S77Hx-zlnPF0FQYRFhLP0r2MofbWu_hD6MBVo06KFT&source=gbs_api","large":"http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE70qMfBp17M-CgQleFNXN-1ztItRIJGXkMKugHX5YJ-5CUQ3rYjDjwOl1mdh_FQ5nvMDpy6QSkDVBRTroWriWRk9_rzxnR-ud4UNCyvTkC50JImixael1HVsNLcCQeWEJ7Dl9Fbl&source=gbs_api","extraLarge":"http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE70KLMYch-d68vn6SD3mHVSO9H-zr3WPd82stjJviasEDQ4iSS8ShE5_AK5P-TDYhcXc3w4gQ-2itcqww1ueVQbZiViPoXGJT21xPpeEbIPEDtnx6hQu0q5JOtcrXz9Io7vbEynI&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com.eg/books?id=ACxq93pkuokC&hl=&source=gbs_api"
/// infoLink : "https://play.google.com/store/books/details?id=ACxq93pkuokC&source=gbs_api"
/// canonicalVolumeLink : "https://play.google.com/store/books/details?id=ACxq93pkuokC"

class VolumeInfo {
  VolumeInfo({
      this.title, 
      this.publisher, 
      this.publishedDate, 
      this.readingModes, 
      this.pageCount, 
      this.printedPageCount, 
      this.printType, 
      this.maturityRating, 
      this.allowAnonLogging, 
      this.contentVersion, 
      this.panelizationSummary, 
      this.imageLinks, 
      this.language, 
      this.previewLink, 
      this.infoLink, 
      this.canonicalVolumeLink,});

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    readingModes = json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes']) : null;
    pageCount = json['pageCount'];
    printedPageCount = json['printedPageCount'];
    printType = json['printType'];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null ? PanelizationSummary.fromJson(json['panelizationSummary']) : null;
    imageLinks = json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }
  String? title;
  String? publisher;
  String? publishedDate;
  ReadingModes? readingModes;
  int? pageCount;
  int? printedPageCount;
  String? printType;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['pageCount'] = pageCount;
    map['printedPageCount'] = printedPageCount;
    map['printType'] = printType;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks?.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }

}