// ignore_for_file: public_member_api_docs, sort_constructors_first

class HomeEntity {
  int? notificationCount;
  List<TeacherEntity>? teachers;
  List<SlideEntity>? slides;
  List<CourseEntity>? courses;
  List<StoryEntity>? stories;
  List<AdsEntity>? ads;

  HomeEntity(
      {this.notificationCount,
      this.teachers,
      this.slides,
      this.courses,
      this.stories,
      this.ads});
}

class StoryEntity {
  StoryEntity({
    required this.id,
    required this.name,
    required this.isVideo,
    required this.thumb,
    required this.url,
    required this.duration,
    required this.teacherName,
    required this.teacherImage,
    required this.storiesFiles,
  });

  int id;
  String name;
  int isVideo;
  String thumb;
  String url;
  String duration;
  String teacherName;
  String teacherImage;
  List<StoryEntity> storiesFiles;
}

class PaginatedListEntity {
  int? total;
  List<dynamic>? paginatedList;

  PaginatedListEntity({
    this.total,
    this.paginatedList,
  });
}

class PaginatedStudentsEntity {
  int? total;
  String? questionsCount;
  String? time;

  List<StudentEntity>? paginatedList;

  PaginatedStudentsEntity(
      {this.total, this.paginatedList, this.questionsCount, this.time});
}

class StudentEntity {
  String? timeOfQuiz;
  String? mark;
  int? id;
  String? studentName;
  String? studentImage;

  StudentEntity(
      {this.timeOfQuiz,
      this.mark,
      this.id,
      this.studentName,
      this.studentImage});
}

class CourseEntity {
  int? id;
  NameEntity? name;
  NameEntity? description;
  String? price;
  String? priceAfterDiscount;
  int? teacherId;
  String? introVideo;
  String? whatsappLink;
  bool? hasAttendance;
  String? attendancePrice;
  int? secondCategoryId;
  int? thirdCategoryId;
  int? firstCategoryId;
  int? semesterId;
  int? parentId;
  bool? active;
  bool? showOrder;
  bool? isApproved;
  bool? isFeatured;
  bool? isRecommended;
  bool? forSale;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  List<AddOnsEntity>? addOns;
  bool? isFavorite;
  String? duration;
  String? teacherFirstName;
  String? teacherLastName;
  String? teacherImage;
  List<SubCourseEntity>? subCourses;
  String? discountPercentage;
  bool? isPurchased;
  bool? fixMedia;
  List<String>? customFields;
  bool? hasMedia;
  bool? isBlocked;
  bool? isLocked;
  List<MediaEntity>? media;
  int? quizzesCount;
  int? termsCount;
  int? questionsCount;
  String? examQuestionsCount;
  String? examDuration;
  int? examSeconds;
  int canExam;
  int showExam;

  CourseEntity({
    this.id,
    this.name,
    this.description,
    this.price,
    this.priceAfterDiscount,
    this.teacherId,
    this.introVideo,
    this.whatsappLink,
    this.hasAttendance,
    this.attendancePrice,
    this.secondCategoryId,
    this.thirdCategoryId,
    this.firstCategoryId,
    this.semesterId,
    this.parentId,
    this.active,
    this.showOrder,
    this.isApproved,
    this.isFeatured,
    this.isRecommended,
    this.forSale,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.addOns,
    this.isFavorite,
    this.duration,
    this.teacherFirstName,
    this.teacherLastName,
    this.teacherImage,
    this.subCourses,
    this.discountPercentage,
    this.isPurchased,
    this.fixMedia,
    this.customFields,
    this.hasMedia,
    this.isBlocked,
    this.isLocked,
    this.media,
    this.quizzesCount,
    this.termsCount,
    this.questionsCount,
    this.examQuestionsCount,
    this.examDuration,
    this.examSeconds,
    this.canExam = 0,
    this.showExam = 0,
  });
}

class TeacherEntity {
  int? id;
  int? roleId;
  String firstName;
  String lastName;
  String? fatherName;
  String? phoneCode;
  String? phone;
  String? email;
  String? secondaryPhoneCode;
  String? secondaryPhone;
  String? country;
  String? city;
  String? street;
  String? buildingNumber;
  String? birthday;
  String? gender;
  String? bio;
  String? address;
  String? job;
  int? firstCategoryId;
  int? secondCategoryId;
  int? thirdCategoryId;
  String? secondaryActivationCode;
  String? emailActivationCode;
  int? active;
  int? balance;
  int? coins;
  String? lastLogin;
  int? loginAttempts;
  int? savedPassword;
  int? savedPassword2;
  int? notificationCount;
  bool? isFeatured;
  bool? blocked;
  String? blockedBypassDate;
  String? deviceToken;
  String? locale;
  String? platform;
  String? platform2;
  bool? isDeleted;
  String? createdAt;
  String? updatedAt;
  bool? isFollowing;
  int? followers;
  int? coursesCount;
  String image;
  String cover;
  List<UniversityEntity>? secondCategory;
  List<CourseEntity>? courses;
  int? totalCourses;
  List<String>? customFields;
  bool? hasMedia;
  List<MediaEntity>? media;

  TeacherEntity({
    this.id,
    this.roleId,
    required this.firstName,
    required this.lastName,
    this.fatherName,
    this.phoneCode,
    this.phone,
    this.email,
    this.secondaryPhoneCode,
    this.secondaryPhone,
    this.country,
    this.city,
    this.street,
    this.buildingNumber,
    this.birthday,
    this.gender,
    this.bio,
    this.address,
    this.job,
    this.firstCategoryId,
    this.secondCategoryId,
    this.thirdCategoryId,
    this.secondaryActivationCode,
    this.emailActivationCode,
    this.active,
    required this.cover,
    this.balance,
    this.coins,
    this.lastLogin,
    this.loginAttempts,
    this.savedPassword,
    this.savedPassword2,
    this.notificationCount,
    this.isFeatured,
    this.blocked,
    this.blockedBypassDate,
    this.deviceToken,
    this.locale,
    this.platform,
    this.platform2,
    this.isDeleted,
    this.createdAt,
    this.updatedAt,
    this.isFollowing,
    this.followers,
    this.coursesCount,
    required this.image,
    this.secondCategory,
    this.courses,
    this.totalCourses,
    this.customFields,
    this.hasMedia,
    this.media,
  });
}

class UniversityEntity {
  int? id;
  int? secondCategoryId;
  NameEntity? name;
  int? year;
  String? image;

  UniversityEntity({
    this.id,
    this.secondCategoryId,
    this.name,
    this.year,
    this.image,
  });
}

class QuizEntity {
  int? id;
  NameEntity? name;
  String? price;
  bool? active;
  bool? isFeatured;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  String? priceBeforeDiscount;
  String? discountPercentage;
  bool? isPurchased;
  bool? fixMedia;
  List<String>? customFields;
  bool? hasMedia;
  bool? isBlocked;
  bool? isFavorite;
  bool? isLocked;

  // String image;
  List<CourseEntity>? courses;
  int? totalQuestions;
  NameEntity? courseName;
  String? teacherFirstName;
  String? teacherLastName;
  String? teacherImage;
  NameEntity? subCourseName;
  int? correctAnswers;
  int? wrongAnswers;
  bool? hasExamine;

  QuizEntity({
    this.id,
    this.name,
    this.price,
    this.active,
    this.isFeatured,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.priceBeforeDiscount,
    this.discountPercentage,
    this.isPurchased,
    this.fixMedia,
    this.customFields,
    this.hasMedia,
    this.isBlocked,
    this.isLocked,
    this.courses,
    this.isFavorite,
    this.totalQuestions,
    this.courseName,
    this.teacherFirstName,
    this.teacherLastName,
    this.teacherImage,
    this.subCourseName,
    this.correctAnswers,
    this.hasExamine,
    this.wrongAnswers,
  });
}

class SubCourseEntity {
  NameEntity? name;
  int? id;
  int? firstCategoryId;
  int? secondCategoryId;
  int? thirdCategoryId;
  int? semesterId;
  int? courseId;
  int? subCourseId;
  String? price;
  int? parentId;
  bool? active;
  bool? showOrder;
  String? priceAfterDiscount;
  NameEntity? description;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  NameEntity? courseName;
  String? teacherFirstName;
  String? teacherLastName;
  int? teacherId;
  String? teacherImage;
  String? discountPercentage;
  bool? isPurchased;
  List<String>? customFields;
  bool? isBlocked;
  bool? isLocked;
  bool? isFavorite;
  bool? forSale;
  int? quizzesCount;

  SubCourseEntity({
    this.name,
    this.id,
    this.firstCategoryId,
    this.secondCategoryId,
    this.thirdCategoryId,
    this.semesterId,
    this.courseId,
    this.subCourseId,
    this.teacherId,
    this.price,
    this.parentId,
    this.active,
    this.isFavorite,
    this.showOrder,
    this.priceAfterDiscount,
    this.description,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.courseName,
    this.teacherFirstName,
    this.teacherLastName,
    this.teacherImage,
    this.discountPercentage,
    this.isPurchased,
    this.customFields,
    this.isBlocked,
    this.isLocked,
    this.forSale,
    this.quizzesCount,
  });
}

class LectureEntity {
  int totalQuizzes;
  int totalQuestions;
  int correctInARow;
  List<QuizEntity>? quizzes;

  LectureEntity({
    required this.totalQuizzes,
    required this.totalQuestions,
    required this.correctInARow,
    this.quizzes,
  });
}

class NoteEntity {
  int? id;
  NameEntity? name;
  String? url;
  int? canShare;
  int? canPrint;
  int? firstCategoryId;
  int? secondCategoryId;
  int? thirdCategoryId;
  int? semesterId;
  int? courseId;
  int? subCourseId;
  int? classId;
  String? parentId;
  bool? active;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  int? isPurchased;
  int? isWatched;
  List<String>? customFields;

  NoteEntity({
    this.id,
    this.name,
    this.url,
    this.canShare,
    this.canPrint,
    this.firstCategoryId,
    this.secondCategoryId,
    this.thirdCategoryId,
    this.semesterId,
    this.courseId,
    this.subCourseId,
    this.classId,
    this.parentId,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.isPurchased,
    this.isWatched,
    this.customFields,
  });
}

class OtherEntity {
  int? id;
  NameEntity? name;
  String? url;
  int? firstCategoryId;
  int? secondCategoryId;
  int? thirdCategoryId;
  int? semesterId;
  int? courseId;
  int? subCourseId;
  int? classId;
  String? parentId;
  String? ext;
  int? canDownload;
  bool? active;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  int? isPurchased;
  int? isWatched;
  List<String>? customFields;

  OtherEntity({
    this.id,
    this.name,
    this.url,
    this.firstCategoryId,
    this.secondCategoryId,
    this.thirdCategoryId,
    this.semesterId,
    this.courseId,
    this.subCourseId,
    this.classId,
    this.parentId,
    this.ext,
    this.canDownload,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.isPurchased,
    this.isWatched,
    this.customFields,
  });
}

class VideoEntity {
  int? id;
  NameEntity? name;
  String? url;
  int? isCompressed;
  String? rawUrl;
  int? firstCategoryId;
  int? secondCategoryId;
  int? thirdCategoryId;
  int? semesterId;
  int? courseId;
  int? subCourseId;
  int? classId;
  String? parentId;
  bool? active;
  String? duration;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  int? isPurchased;
  String? currentDuration;
  int? watchPercentage;
  List<String>? customFields;

  VideoEntity({
    this.id,
    this.name,
    this.url,
    this.isCompressed,
    this.rawUrl,
    this.firstCategoryId,
    this.secondCategoryId,
    this.thirdCategoryId,
    this.semesterId,
    this.courseId,
    this.subCourseId,
    this.classId,
    this.parentId,
    this.active,
    this.duration,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.isPurchased,
    this.currentDuration,
    this.watchPercentage,
    this.customFields,
  });
}

class AddOnsEntity {
  int? id;
  NameEntity? name;
  String? price;
  NameEntity? description;
  bool? isOnline;
  bool? active;
  int? courseId;
  int? forSale;
  String? discountPercentage;
  int? isPurchased;
  List<String>? customFields;

  AddOnsEntity({
    this.id,
    this.name,
    this.price,
    this.description,
    this.isOnline,
    this.active,
    this.courseId,
    this.forSale,
    this.discountPercentage,
    this.isPurchased,
    this.customFields,
  });
}

class NameEntity {
  String? en;
  String? ar;

  NameEntity({
    this.en,
    this.ar,
  });

  get name => en;
      //Get.find<AppController>().lang.value.languageCode == 'ar' ? ar : en;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'en': en,
      'ar': ar,
    };
  }

  factory NameEntity.fromMap(Map<String, dynamic> map) {
    return NameEntity(
      en: map['en'] != null ? map['en'] as String : null,
      ar: map['ar'] != null ? map['ar'] as String : null,
    );
  }
}

class MediaEntity {
  int? id;
  String? url;
  String? thumb;
  String? image;

  MediaEntity({
    this.id,
    this.url,
    this.thumb,
    this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'url': url,
      'thumb': thumb,
      'image': image,
    };
  }

  factory MediaEntity.fromMap(Map<String, dynamic> map) {
    return MediaEntity(
      id: map['id'] as int,
      url: map['url'] as String,
      thumb: map['thumb'] as String,
      image: map['image'] as String,
    );
  }
}

class SlideEntity {
  int? id;
  List<MediaEntity>? media;

  SlideEntity({
    this.id,
    this.media,
  });
}


class AdsEntity {
  NameEntity? name;
  String? image;

  AdsEntity({
    this.name,
    this.image,
  });
}