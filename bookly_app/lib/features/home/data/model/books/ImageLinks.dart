/// smallThumbnail : "http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73D7QAKrafSZppEwTFJmQYMytiEAn_Y3yPBNKIGuNnYqKD_b_0wiI7VBU29oc4Uh8OxJ9DGccg65We__VceOBIoSOPk1H_zSzC5tJxag61chcaMZ13oYFRYa0Rszj9HDBXye9_2&source=gbs_api"
/// thumbnail : "http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70RFRl1JqriUZUO8u0TTVnJJ5YTXvoiBDLhcDoJfG0ZFG4Xs7I5Exi3cqjVJQn1xedp28I4P51KPV-Y5Vi6m9IkN3mRqKMh-WN-KsITx7zg3tYf5me5RwGDU-fIMSlyV4QR-TUT&source=gbs_api"
/// small : "http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE72_yxSgKpqAX1NzJRN0KdjywRGnhUjQNCSPBwqRbtQWSzqVE2KYMcImITXshSnTPrdt_3klKuqeH68DS-Tet61W8daL5aLD-OG4TVgr6_Elz5hhXc68Rd3b1HeHApAx0Pr9N7fg&source=gbs_api"
/// medium : "http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73MCMBdkXpPdB2e11KkuOv9ZtTU6HPw-EtA72FYZgbyaXn8F9WUjyJYhQL4Y0sIY8AH2nqCYvrIG_N52wjhfvl0YlEyk_S77Hx-zlnPF0FQYRFhLP0r2MofbWu_hD6MBVo06KFT&source=gbs_api"
/// large : "http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE70qMfBp17M-CgQleFNXN-1ztItRIJGXkMKugHX5YJ-5CUQ3rYjDjwOl1mdh_FQ5nvMDpy6QSkDVBRTroWriWRk9_rzxnR-ud4UNCyvTkC50JImixael1HVsNLcCQeWEJ7Dl9Fbl&source=gbs_api"
/// extraLarge : "http://books.google.com/books/content?id=ACxq93pkuokC&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE70KLMYch-d68vn6SD3mHVSO9H-zr3WPd82stjJviasEDQ4iSS8ShE5_AK5P-TDYhcXc3w4gQ-2itcqww1ueVQbZiViPoXGJT21xPpeEbIPEDtnx6hQu0q5JOtcrXz9Io7vbEynI&source=gbs_api"

class ImageLinks {
  ImageLinks({
      this.smallThumbnail, 
      this.thumbnail, 
      this.small, 
      this.medium, 
      this.large, 
      this.extraLarge,});

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
    small = json['small'];
    medium = json['medium'];
    large = json['large'];
    extraLarge = json['extraLarge'];
  }
  String? smallThumbnail;
  String? thumbnail;
  String? small;
  String? medium;
  String? large;
  String? extraLarge;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail;
    map['thumbnail'] = thumbnail;
    map['small'] = small;
    map['medium'] = medium;
    map['large'] = large;
    map['extraLarge'] = extraLarge;
    return map;
  }

}