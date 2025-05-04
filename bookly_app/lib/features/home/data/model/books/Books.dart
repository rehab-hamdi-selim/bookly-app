 import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';

/// kind : "books#volume"
/// id : "ACxq93pkuokC"
/// etag : "QJrXCuI+Yr4"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/ACxq93pkuokC"
/// volumeInfo : {"title":"An Account, Shewing in Numerical Order the Tickets Intitled to Benefits in the Lottery ... Anno 1769-1772, 1778-1789","publisher":"Thomas Lee","publishedDate":"1787","readingModes":{"text":false,"image":true},"pageCount":92,"printedPageCount":92,"printType":"BOOK","maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.5.5.0.full.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73D7QAKrafSZppEwTFJmQYMytiEAn_Y3yPBNKIGuNnYqKD_b_0wiI7VBU29oc4Uh8OxJ9DGccg65We__VceOBIoSOPk1H_zSzC5tJxag61chcaMZ13oYFRYa0Rszj9HDBXye9_2&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70RFRl1JqriUZUO8u0TTVnJJ5YTXvoiBDLhcDoJfG0ZFG4Xs7I5Exi3cqjVJQn1xedp28I4P51KPV-Y5Vi6m9IkN3mRqKMh-WN-KsITx7zg3tYf5me5RwGDU-fIMSlyV4QR-TUT&source=gbs_api","small":"http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE72_yxSgKpqAX1NzJRN0KdjywRGnhUjQNCSPBwqRbtQWSzqVE2KYMcImITXshSnTPrdt_3klKuqeH68DS-Tet61W8daL5aLD-OG4TVgr6_Elz5hhXc68Rd3b1HeHApAx0Pr9N7fg&source=gbs_api","medium":"http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73MCMBdkXpPdB2e11KkuOv9ZtTU6HPw-EtA72FYZgbyaXn8F9WUjyJYhQL4Y0sIY8AH2nqCYvrIG_N52wjhfvl0YlEyk_S77Hx-zlnPF0FQYRFhLP0r2MofbWu_hD6MBVo06KFT&source=gbs_api","large":"http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE70qMfBp17M-CgQleFNXN-1ztItRIJGXkMKugHX5YJ-5CUQ3rYjDjwOl1mdh_FQ5nvMDpy6QSkDVBRTroWriWRk9_rzxnR-ud4UNCyvTkC50JImixael1HVsNLcCQeWEJ7Dl9Fbl&source=gbs_api","extraLarge":"http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE70KLMYch-d68vn6SD3mHVSO9H-zr3WPd82stjJviasEDQ4iSS8ShE5_AK5P-TDYhcXc3w4gQ-2itcqww1ueVQbZiViPoXGJT21xPpeEbIPEDtnx6hQu0q5JOtcrXz9Io7vbEynI&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=ACxq93pkuokC&hl=&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=ACxq93pkuokC&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=ACxq93pkuokC"}
/// saleInfo : {"country":"EG","saleability":"FREE","isEbook":true,"buyLink":"https://play.google.com/store/books/details?id=ACxq93pkuokC&rdid=book-ACxq93pkuokC&rdot=1&source=gbs_api"}
/// accessInfo : {"country":"EG","viewability":"ALL_PAGES","embeddable":true,"publicDomain":true,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false,"downloadLink":"http://books.google.com.eg/books/download/An_Account_Shewing_in_Numerical_Order_th.epub?id=ACxq93pkuokC&hl=&output=epub&source=gbs_api"},"pdf":{"isAvailable":true,"downloadLink":"http://books.google.com.eg/books/download/An_Account_Shewing_in_Numerical_Order_th.pdf?id=ACxq93pkuokC&hl=&output=pdf&sig=ACfU3U1zvpsTaNF94FtvCiOeBDKuF1ePVQ&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=ACxq93pkuokC&hl=&source=gbs_api","accessViewStatus":"FULL_PUBLIC_DOMAIN","quoteSharingAllowed":false}

class Books {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  Books({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo,});

  Books.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    return map;
  }

}