// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
import 'package:vlearn_test/data/models/university_model.dart';
import 'package:vlearn_test/domain/entities/home_entity.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  @JsonKey(name: 'notification_count')
  int? notificationCount;
  List<TeacherModel>? teachers;
  List<SlideModel>? slides;
  List<StoryModel>? stories;
  List<CourseDetailsModel>? courses;
  List<AdsModel>? ads;

  HomeModel(
      {this.notificationCount,
      this.teachers,
      this.slides,
      this.courses,
      this.stories,
        this.ads});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return _$HomeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);

  HomeEntity toDomain() {
    return HomeEntity(
        courses:
            courses?.map((e) => e.toDomain()).toList(),
        teachers: teachers?.map((e) => e.toDomain()).toList(),
        notificationCount: notificationCount!,
        stories:
            stories?.map((e) => e.toDomain()).toList(),
        slides:
            slides?.map((e) => e.toDomain()).toList(),
        ads:
        ads?.map((e) => e.toDomain()).toList());
  }
}

@JsonSerializable()
class StoryModel {
  StoryModel(
      {this.id, this.name, this.isVideo, this.thumb, this.url, this.duration});

  int? id;
  String? name;
  @JsonKey(name: 'is_video')
  int? isVideo;
  String? thumb;
  String? url;
  String? duration;
  @JsonKey(name: 'teacher_name')
  String? teacherName;
  @JsonKey(name: 'teacher_image')
  String? teacherImage;
  @JsonKey(name: 'stories_files')
  List<StoryModel>? storiesFiles;

  factory StoryModel.fromJson(Map<String, dynamic> json) {
    return _$StoryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StoryModelToJson(this);

  StoryEntity toDomain() {
    return StoryEntity(
      id: id ?? 0,
      duration: duration ?? '',
      isVideo: isVideo ?? 0,
      name: name ?? '',
      thumb: thumb ?? '',
      url: url ?? '',
      teacherName: teacherName ?? '',
      teacherImage: teacherImage ?? '',
      storiesFiles: storiesFiles != null
          ? storiesFiles!.map((e) => e.toDomain()).toList()
          : [],
    );
  }
}

@JsonSerializable()
class PaginatedCoursesModel {
  @JsonKey(name: 'total_courses')
  int? totalCourses;
  List<CourseDetailsModel>? courses;

  PaginatedCoursesModel({
    this.totalCourses,
    this.courses,
  });

  factory PaginatedCoursesModel.fromJson(Map<String, dynamic> json) {
    return _$PaginatedCoursesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaginatedCoursesModelToJson(this);

  PaginatedListEntity toDomain() {
    return PaginatedListEntity(
      total: totalCourses,
      paginatedList:
          courses?.map((e) => e.toDomain()).toList(),
    );
  }
}

@JsonSerializable()
class CourseDetailsModel {
  int? id;
  NameModel? name;
  NameModel? description;
  String? price;
  @JsonKey(name: 'price_after_discount')
  String? priceAfterDiscount;
  @JsonKey(name: 'teacher_id')
  int? teacherId;
  @JsonKey(name: 'intro_video')
  String? introVideo;
  @JsonKey(name: 'whatsapp_link')
  String? whatsappLink;
  @JsonKey(name: 'has_attendance')
  int? hasAttendance;
  @JsonKey(name: 'attendance_price')
  String? attendancePrice;
  @JsonKey(name: 'second_category_id')
  int? secondCategoryId;
  @JsonKey(name: 'third_category_id')
  int? thirdCategoryId;
  @JsonKey(name: 'first_category_id')
  int? firstCategoryId;
  @JsonKey(name: 'semester_id')
  int? semesterId;
  @JsonKey(name: 'parent_id')
  int? parentId;

  bool? active;
  @JsonKey(name: 'show_order')
  int? showOrder;
  @JsonKey(name: 'is_approved')
  int? isApproved;
  @JsonKey(name: 'is_featured')
  int? isFeatured;
  @JsonKey(name: 'is_recommended')
  int? isRecommended;
  @JsonKey(name: 'for_sale')
  int? forSale;
  @JsonKey(name: 'deleted_at')
  String? deletedAt;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'teacher_first_name')
  String? teacherFirstName;
  @JsonKey(name: 'teacher_last_name')
  String? teacherLastName;
  @JsonKey(name: 'teacher_image')
  String? teacherImage;
  @JsonKey(name: 'is_favorite')
  int? isFavorite;
  @JsonKey(name: 'in_cart')
  int? inCart;
  @JsonKey(name: 'add_ons')
  List<AddOnsModel>? addOns;
  @JsonKey(name: 'discount_percentage')
  String? discountPercentage;
  @JsonKey(name: 'is_purchased')
  int? isPurchased;
  @JsonKey(name: 'fix_media')
  bool? fixMedia;
  @JsonKey(name: 'custom_fields')
  List<String>? customFields;
  @JsonKey(name: 'has_media')
  bool? hasMedia;
  @JsonKey(name: 'is_blocked')
  int? isBlocked;
  @JsonKey(name: 'is_locked')
  int? isLocked;
  @JsonKey(name: 'sub_courses')
  List<SubCourseModel>? subCourses;
  String? duration;
  @JsonKey(name: 'quizzes_count')
  int? quizzesCount;
  @JsonKey(name: 'terms_count')
  int? termsCount;
  @JsonKey(name: 'questions_count')
  int? questionsCount;
  List<MediaModel>? media;
  @JsonKey(name: 'exam_questions_count')
  String? examQuestionsCount;
  @JsonKey(name: 'exam_duration')
  String? examDuration;
  @JsonKey(name: 'exam_seconds')
  int? examSeconds;
  @JsonKey(name: 'can_exam')
  int? canExam;
  @JsonKey(name: 'show_exam')
  int? showExam;

  CourseDetailsModel({
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
    this.teacherFirstName,
    this.teacherLastName,
    this.teacherImage,
    this.isFavorite,
    this.inCart,
    this.addOns,
    this.discountPercentage,
    this.isPurchased,
    this.fixMedia,
    this.customFields,
    this.hasMedia,
    this.isBlocked,
    this.isLocked,
    this.media,
    this.duration,
    this.subCourses,
    this.quizzesCount,
    this.termsCount,
    this.questionsCount,
    this.examQuestionsCount,
    this.examDuration,
    this.examSeconds,
    this.canExam,
    this.showExam,
  });

  factory CourseDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$CourseDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CourseDetailsModelToJson(this);

  CourseEntity toDomain() {
    return CourseEntity(
      id: id,
      active: active,
      attendancePrice: attendancePrice,
      createdAt: createdAt,
      customFields: customFields,
      deletedAt: deletedAt,
      duration: duration,
      fixMedia: fixMedia,
      firstCategoryId: firstCategoryId,
      forSale: forSale == 0 ? false : true,
      hasAttendance: hasAttendance == 0 ? false : true,
      hasMedia: hasMedia,
      introVideo: introVideo,
      isApproved: isApproved == 0 ? false : true,
      isBlocked: isBlocked == 0 ? false : true,
      isFeatured: isFeatured == 0 ? false : true,
      isLocked: isLocked == 0 ? false : true,
      isPurchased: isPurchased == 0 ? false : true,
      isRecommended: isRecommended == 0 ? false : true,
      parentId: parentId,
      secondCategoryId: secondCategoryId,
      semesterId: semesterId,
      showOrder: showOrder == 0 ? false : true,
      teacherId: teacherId,
      thirdCategoryId: thirdCategoryId,
      updatedAt: updatedAt,
      whatsappLink: whatsappLink,
      name: name?.toDomain(),
      teacherFirstName: teacherFirstName ?? "",
      teacherImage: teacherImage ?? "",
      teacherLastName: teacherLastName ?? "",
      isFavorite: isFavorite == 0 ? false : true,
      price: price ?? "",
      priceAfterDiscount: priceAfterDiscount,
      discountPercentage: discountPercentage ?? "",
      media: media?.map((e) => e.toDomain()).toList(),
      description: description?.toDomain(),
      subCourses: subCourses?.map((e) => e.toDomain()).toList(),
      addOns: addOns?.map((e) => e.toDomain()).toList(),
      quizzesCount: quizzesCount,
      termsCount: termsCount,
      questionsCount: questionsCount,
      examQuestionsCount: examQuestionsCount,
      examDuration: examDuration,
      examSeconds: examSeconds,
      canExam: canExam ?? 0,
      showExam: showExam ?? 0,
    );
  }
}

@JsonSerializable()
class PaginatedTeachersModel {
  @JsonKey(name: 'total_teachers')
  int? totalTeachers;
  List<TeacherModel>? teachers;

  PaginatedTeachersModel({
    this.totalTeachers,
    this.teachers,
  });

  factory PaginatedTeachersModel.fromJson(Map<String, dynamic> json) {
    return _$PaginatedTeachersModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaginatedTeachersModelToJson(this);

  PaginatedListEntity toDomain() {
    return PaginatedListEntity(
      total: totalTeachers,
      paginatedList:
          teachers?.map((e) => e.toDomain()).toList(),
    );
  }
}

@JsonSerializable()
class TeacherModel {
  int? id;
  @JsonKey(name: 'role_id')
  int? roleId;
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'last_name')
  String? lastName;
  @JsonKey(name: 'father_name')
  String? fatherName;
  @JsonKey(name: 'phone_code')
  String? phoneCode;
  String? phone;
  String? email;
  @JsonKey(name: 'secondary_phone_code')
  String? secondaryPhoneCode;
  @JsonKey(name: 'secondary_phone')
  String? secondaryPhone;
  String? country;
  String? city;
  String? street;
  @JsonKey(name: 'building_number')
  String? buildingNumber;
  String? birthday;
  String? gender;
  String? bio;
  String? address;
  String? job;
  @JsonKey(name: 'first_category_id')
  int? firstCategoryId;
  @JsonKey(name: 'second_category_id')
  int? secondCategoryId;
  @JsonKey(name: 'third_category_id')
  int? thirdCategoryId;
  @JsonKey(name: 'secondary_activation_code')
  String? secondaryActivationCode;
  @JsonKey(name: 'email_activation_code')
  String? emailActivationCode;
  int? active;
  int? balance;
  int? coins;
  @JsonKey(name: 'last_login')
  String? lastLogin;
  @JsonKey(name: 'login_attemps')
  int? loginAttemps;
  @JsonKey(name: 'saved_password')
  int? savedPassword;
  @JsonKey(name: 'saved_password2')
  int? savedPassword2;
  @JsonKey(name: 'notification_count')
  int? notificationCount;
  int? isFeatured;
  int? blocked;
  @JsonKey(name: 'blocked_bypass_date')
  String? blockedBypassDate;
  @JsonKey(name: 'device_token')
  String? deviceToken;
  String? locale;
  String? platform;
  String? platform2;
  @JsonKey(name: 'is_deleted')
  int? isDeleted;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'is_following')
  int? isFollowing;
  int? followers;
  @JsonKey(name: 'courses_count')
  int? coursesCount;
  String? image;
  String? cover;
  @JsonKey(name: 'second_category')
  List<UniversityModel>? secondCategory;
  List<CourseDetailsModel>? courses;
  @JsonKey(name: 'total_courses')
  int? totalCourses;
  @JsonKey(name: 'custom_fields')
  List<String>? customFields;
  @JsonKey(name: 'has_media')
  bool? hasMedia;
  List<MediaModel>? media;

  TeacherModel({
    this.id,
    this.roleId,
    this.firstName,
    this.lastName,
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
    this.cover,
    this.firstCategoryId,
    this.secondCategoryId,
    this.thirdCategoryId,
    this.secondaryActivationCode,
    this.emailActivationCode,
    this.active,
    this.balance,
    this.coins,
    this.lastLogin,
    this.loginAttemps,
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
    this.image,
    this.secondCategory,
    this.courses,
    this.totalCourses,
    this.customFields,
    this.hasMedia,
    this.media,
  });

  factory TeacherModel.fromJson(Map<String, dynamic> json) {
    return _$TeacherModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TeacherModelToJson(this);

  TeacherEntity toDomain() {
    return TeacherEntity(
        active: active,
        address: address,
        balance: balance,
        bio: bio,
        birthday: birthday,
        blocked: blocked == 0 ? false : true,
        blockedBypassDate: blockedBypassDate,
        buildingNumber: buildingNumber,
        city: city,
        coins: coins,
        country: country,
        cover: cover ?? "",
        courses:
            courses?.map((e) => e.toDomain()).toList(),
        coursesCount: coursesCount,
        createdAt: createdAt,
        customFields: customFields,
        deviceToken: deviceToken,
        email: email,
        emailActivationCode: emailActivationCode,
        fatherName: fatherName ?? "",
        firstCategoryId: firstCategoryId,
        firstName: firstName ?? "",
        followers: followers,
        gender: gender,
        hasMedia: hasMedia,
        id: id,
        image: image ?? "",
        isDeleted: isDeleted == 0 ? false : true,
        isFeatured: isFeatured == 0 ? false : true,
        isFollowing: isFollowing == 0 ? false : true,
        job: job,
        lastLogin: lastLogin,
        lastName: lastName ?? "",
        locale: locale,
        loginAttempts: loginAttemps,
        notificationCount: notificationCount,
        media: media?.map((e) => e.toDomain()).toList(),
        phone: phone,
        phoneCode: phoneCode,
        platform2: platform2,
        roleId: roleId,
        platform: platform,
        savedPassword2: savedPassword2,
        savedPassword: savedPassword,
        secondCategory: secondCategory?.map((e) => e.toDomain()).toList(),
        secondCategoryId: secondCategoryId,
        secondaryActivationCode: secondaryActivationCode,
        secondaryPhone: secondaryPhone,
        secondaryPhoneCode: secondaryPhoneCode,
        street: street,
        thirdCategoryId: thirdCategoryId,
        totalCourses: totalCourses,
        updatedAt: updatedAt);
  }
}

@JsonSerializable()
class LectureModel {
  List<QuizModel>? quizzes;
  @JsonKey(name: 'total_quizzes')
  int? totalQuizzes;
  @JsonKey(name: 'total_questions')
  int? totalQuestions;
  @JsonKey(name: 'correct_in_a_row')
  int? correctInARow;

  LectureModel({
    this.quizzes,
    this.totalQuizzes,
    this.totalQuestions,
    this.correctInARow,
  });

  factory LectureModel.fromJson(Map<String, dynamic> json) {
    return _$LectureModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LectureModelToJson(this);

  LectureEntity toDomain() {
    return LectureEntity(
      quizzes: quizzes?.map((e) => e.toDomain()).toList(),
      totalQuizzes: totalQuizzes ?? 0,
      totalQuestions: totalQuestions ?? 0,
      correctInARow: correctInARow ?? 0,
    );
  }
}

@JsonSerializable()
class SubCourseModel {
  int? id;
  NameModel? name;
  @JsonKey(name: 'first_category_id')
  int? firstCategoryId;
  @JsonKey(name: 'second_category_id')
  int? secondCategoryId;
  @JsonKey(name: 'third_category_id')
  int? thirdCategoryId;
  @JsonKey(name: 'semester_id')
  int? semesterId;
  @JsonKey(name: 'course_id')
  int? courseId;
  @JsonKey(name: 'sub_course_id')
  int? subCourseId;
  String? price;
  @JsonKey(name: 'parent_id')
  int? parentId;
  bool? active;
  @JsonKey(name: 'show_order')
  int? showOrder;
  @JsonKey(name: 'price_after_discount')
  String? priceAfterDiscount;
  NameModel? description;
  @JsonKey(name: 'deleted_at')
  String? deletedAt;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'course_name')
  NameModel? courseName;
  @JsonKey(name: 'teacher_first_name')
  String? teacherFirstName;
  @JsonKey(name: 'teacher_last_name')
  String? teacherLastName;
  @JsonKey(name: 'teacher_image')
  String? teacherImage;
  @JsonKey(name: 'discount_percentage')
  String? discountPercentage;
  @JsonKey(name: 'is_purchased')
  int? isPurchased;
  @JsonKey(name: 'custom_fields')
  List<String>? customFields;
  @JsonKey(name: 'is_blocked')
  int? isBlocked;
  @JsonKey(name: 'is_locked')
  int? isLocked;
  @JsonKey(name: 'teacher_id')
  int? teacherId;
  @JsonKey(name: 'for_sale')
  int? forSale;
  @JsonKey(name: 'is_favorite')
  int? isFavorite;
  @JsonKey(name: 'quizzes_count')
  int? quizzesCount;

  SubCourseModel({
    this.id,
    this.name,
    this.firstCategoryId,
    this.secondCategoryId,
    this.thirdCategoryId,
    this.semesterId,
    this.courseId,
    this.subCourseId,
    this.price,
    this.parentId,
    this.active,
    this.showOrder,
    this.priceAfterDiscount,
    this.description,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.teacherId,
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

  factory SubCourseModel.fromJson(Map<String, dynamic> json) {
    return _$SubCourseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SubCourseModelToJson(this);

  SubCourseEntity toDomain() {
    return SubCourseEntity(
      active: active,
      courseId: courseId,
      teacherId: teacherId,
      description: description?.toDomain(),
      id: id,
      discountPercentage: discountPercentage,
      forSale: forSale == 0 ? false : true,
      courseName: courseName?.toDomain(),
      createdAt: createdAt,
      deletedAt: deletedAt,
      firstCategoryId: firstCategoryId,
      isBlocked: isBlocked == 0 ? false : true,
      isLocked: isLocked == 0 ? false : true,
      isFavorite: isFavorite == 0 ? false : true,
      parentId: parentId,
      priceAfterDiscount: priceAfterDiscount,
      secondCategoryId: secondCategoryId,
      subCourseId: subCourseId,
      semesterId: semesterId,
      teacherLastName: teacherLastName,
      teacherFirstName: teacherFirstName,
      teacherImage: teacherImage,
      showOrder: showOrder == 0 ? false : true,
      thirdCategoryId: thirdCategoryId,
      updatedAt: updatedAt,
      name: name?.toDomain(),
      isPurchased: isPurchased == 0 ? false : true,
      price: price,
      customFields: customFields!,
      quizzesCount: quizzesCount,
    );
  }
}

@JsonSerializable()
class VideoModel {
  int? id;
  NameModel? name;
  String? url;
  @JsonKey(name: 'is_compressed')
  int? isCompressed;
  @JsonKey(name: 'raw_url')
  String? rawUrl;
  @JsonKey(name: 'first_category_id')
  int? firstCategoryId;
  @JsonKey(name: 'second_category_id')
  int? secondCategoryId;
  @JsonKey(name: 'third_category_id')
  int? thirdCategoryId;
  @JsonKey(name: 'semester_id')
  int? semesterId;
  @JsonKey(name: 'course_id')
  int? courseId;
  @JsonKey(name: 'sub_course_id')
  int? subCourseId;
  @JsonKey(name: 'class_id')
  int? classId;
  @JsonKey(name: 'parent_id')
  String? parentId;
  bool? active;
  String? duration;
  @JsonKey(name: 'deleted_at')
  String? deletedAt;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'is_purchased')
  int? isPurchased;
  @JsonKey(name: 'current_duration')
  int? currentDuration;
  @JsonKey(name: 'watch_percentage')
  int? watchPercentage;
  @JsonKey(name: 'custom_fields')
  List<String>? customFields;

  VideoModel({
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

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return _$VideoModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VideoModelToJson(this);

  VideoEntity toDomain() {
    return VideoEntity(
        active: active,
        currentDuration: currentDuration.toString(),
        duration: duration,
        isCompressed: isCompressed,
        rawUrl: rawUrl,
        watchPercentage: watchPercentage,
        classId: classId,
        courseId: courseId,
        createdAt: createdAt,
        customFields: customFields,
        deletedAt: deletedAt,
        firstCategoryId: firstCategoryId,
        id: id,
        isPurchased: isPurchased,
        name: name?.toDomain(),
        parentId: parentId,
        secondCategoryId: secondCategoryId,
        semesterId: semesterId,
        subCourseId: subCourseId,
        updatedAt: updatedAt,
        thirdCategoryId: thirdCategoryId,
        url: url);
  }
}

@JsonSerializable()
class NoteModel {
  int? id;
  NameModel? name;
  String? url;
  @JsonKey(name: 'can_share')
  int? canShare;
  @JsonKey(name: 'can_print')
  int? canPrint;
  @JsonKey(name: 'first_category_id')
  int? firstCategoryId;
  @JsonKey(name: 'second_category_id')
  int? secondCategoryId;
  @JsonKey(name: 'third_category_id')
  int? thirdCategoryId;
  @JsonKey(name: 'semester_id')
  int? semesterId;
  @JsonKey(name: 'course_id')
  int? courseId;
  @JsonKey(name: 'sub_course_id')
  int? subCourseId;
  @JsonKey(name: 'class_id')
  int? classId;
  @JsonKey(name: 'parent_id')
  String? parentId;
  bool? active;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'deleted_at')
  String? deletedAt;
  @JsonKey(name: 'is_purchased')
  int? isPurchased;
  @JsonKey(name: 'is_watched')
  int? isWatched;
  @JsonKey(name: 'custom_fields')
  List<String>? customFields;

  NoteModel({
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

  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return _$NoteModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NoteModelToJson(this);

  NoteEntity toDomain() {
    return NoteEntity(
        active: active,
        canPrint: canPrint,
        canShare: canShare,
        classId: classId,
        courseId: courseId,
        createdAt: createdAt,
        customFields: customFields,
        deletedAt: deletedAt,
        firstCategoryId: firstCategoryId,
        id: id,
        isPurchased: isPurchased,
        isWatched: isWatched,
        name: name?.toDomain(),
        parentId: parentId,
        secondCategoryId: secondCategoryId,
        semesterId: semesterId,
        subCourseId: subCourseId,
        updatedAt: updatedAt,
        thirdCategoryId: thirdCategoryId,
        url: url);
  }
}

@JsonSerializable()
class OtherModel {
  int? id;
  NameModel? name;
  String? url;
  @JsonKey(name: 'first_category_id')
  int? firstCategoryId;
  @JsonKey(name: 'second_category_id')
  int? secondCategoryId;
  @JsonKey(name: 'third_category_id')
  int? thirdCategoryId;
  @JsonKey(name: 'semester_id')
  int? semesterId;
  @JsonKey(name: 'course_id')
  int? courseId;
  @JsonKey(name: 'sub_course_id')
  int? subCourseId;
  @JsonKey(name: 'class_id')
  int? classId;
  @JsonKey(name: 'parent_id')
  String? parentId;
  String? ext;
  @JsonKey(name: 'can_download')
  int? canDownload;
  bool? active;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'deleted_at')
  String? deletedAt;
  @JsonKey(name: 'is_purchased')
  int? isPurchased;
  @JsonKey(name: 'is_watched')
  int? isWatched;
  @JsonKey(name: 'custom_fields')
  List<String>? customFields;

  OtherModel({
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

  factory OtherModel.fromJson(Map<String, dynamic> json) {
    return _$OtherModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtherModelToJson(this);

  OtherEntity toDomain() {
    return OtherEntity(
      active: active,
      canDownload: canDownload,
      classId: classId,
      courseId: courseId,
      createdAt: createdAt,
      customFields: customFields,
      deletedAt: deletedAt,
      ext: ext,
      id: id,
      firstCategoryId: firstCategoryId,
      secondCategoryId: secondCategoryId,
      thirdCategoryId: thirdCategoryId,
      name: name?.toDomain(),
      isPurchased: isPurchased,
      isWatched: isWatched,
      subCourseId: subCourseId,
      semesterId: semesterId,
      updatedAt: updatedAt,
      url: url,
      parentId: parentId,
    );
  }
}

@JsonSerializable()
class QuizModel {
  int? id;
  NameModel? name;
  String? price;
  bool? active;
  @JsonKey(name: 'is_featured')
  int? isFeatured;
  @JsonKey(name: 'deleted_at')
  String? deletedAt;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'is_favorite')
  int? isFavorite;
  @JsonKey(name: 'price_before_discount')
  String? priceBeforeDiscount;
  @JsonKey(name: 'discount_percentage')
  String? discountPercentage;
  @JsonKey(name: 'is_purchased')
  int? isPurchased;
  @JsonKey(name: 'fix_media')
  bool? fixMedia;
  @JsonKey(name: 'custom_fields')
  List<String>? customFields;
  @JsonKey(name: 'has_media')
  bool? hasMedia;
  @JsonKey(name: 'is_blocked')
  int? isBlocked;
  @JsonKey(name: 'is_locked')
  int? isLocked;
  @JsonKey(name: 'total_questions')
  int? totalQuestions;
  @JsonKey(name: 'course_name')
  NameModel? courseName;
  @JsonKey(name: 'teacher_first_name')
  String? teacherFirstName;
  @JsonKey(name: 'teacher_last_name')
  String? teacherLastName;
  @JsonKey(name: 'teacher_image')
  String? teacherImage;
  @JsonKey(name: 'sub_course_name')
  NameModel? subCourseName;
  @JsonKey(name: 'correct_in_a_row')
  int? correctAnswers;
  @JsonKey(name: 'wrong_answers')
  int? wrongAnswers;
  @JsonKey(name: 'has_examine')
  bool? hasExamine;

  QuizModel({
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
    this.isFavorite,
    this.totalQuestions,
    this.courseName,
    this.teacherFirstName,
    this.teacherLastName,
    this.teacherImage,
    this.subCourseName,
    this.wrongAnswers,
    this.hasExamine,
    this.correctAnswers,
  });

  factory QuizModel.fromJson(Map<String, dynamic> json) {
    return _$QuizModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$QuizModelToJson(this);

  QuizEntity toDomain() {
    return QuizEntity(
      active: active,
      createdAt: createdAt,
      customFields: customFields,
      deletedAt: deletedAt,
      discountPercentage: discountPercentage,
      fixMedia: fixMedia,
      hasMedia: hasMedia,
      isBlocked: isBlocked == 0 ? false : true,
      isFeatured: isFeatured == 0 ? false : true,
      isPurchased: isPurchased == 0 ? false : true,
      id: id,
      isLocked: isLocked == 0 ? false : true,
      isFavorite: isFavorite == 0 ? false : true,
      price: price,
      name: name!.toDomain(),
      updatedAt: updatedAt,
      priceBeforeDiscount: priceBeforeDiscount,
      totalQuestions: totalQuestions,
      courseName: courseName?.toDomain(),
      teacherFirstName: teacherFirstName,
      teacherLastName: teacherLastName,
      teacherImage: teacherImage,
      subCourseName: subCourseName?.toDomain(),
      correctAnswers: correctAnswers,
      hasExamine: hasExamine,
      wrongAnswers: wrongAnswers,
    );
  }
}

@JsonSerializable()
class AddOnsModel {
  int? id;
  NameModel? name;
  String? price;
  NameModel? description;
  @JsonKey(name: 'is_online')
  bool? isOnline;
  bool? active;
  @JsonKey(name: 'course_id')
  int? courseId;
  @JsonKey(name: 'for_sale')
  int? forSale;
  @JsonKey(name: 'discount_percentage')
  String? discountPercentage;
  @JsonKey(name: 'is_purchased')
  int? isPurchased;
  @JsonKey(name: 'custom_fields')
  List<String>? customFields;

  AddOnsModel({
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

  factory AddOnsModel.fromJson(Map<String, dynamic> json) {
    return _$AddOnsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddOnsModelToJson(this);

  AddOnsEntity toDomain() {
    return AddOnsEntity(
        active: active,
        courseId: courseId,
        description: description?.toDomain(),
        id: id,
        discountPercentage: discountPercentage,
        forSale: forSale,
        isOnline: isOnline,
        name: name?.toDomain(),
        isPurchased: isPurchased,
        price: price,
        customFields: customFields);
  }
}

@JsonSerializable()
class MediaModel {
  int? id;
  String? name;
  String? url;
  String? thumb;
  String? icon;
  @JsonKey(name: 'formated_size')
  String? formatedSize;
  String? uuid;

  MediaModel(
      {this.id,
      this.name,
      this.url,
      this.formatedSize,
      this.icon,
      this.thumb,
      this.uuid});

  MediaEntity toDomain() => MediaEntity(
        image: name,
        url: url ?? "",
        thumb: thumb,
        id: id,
      );

  factory MediaModel.fromJson(Map<String, dynamic> json) {
    return _$MediaModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MediaModelToJson(this);
}

@JsonSerializable()
class NameModel {
  String? en;
  String? ar;

  NameModel({
    this.en,
    this.ar,
  });

  factory NameModel.fromJson(Map<String, dynamic> json) {
    return _$NameModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NameModelToJson(this);

  NameEntity toDomain() {
    return NameEntity(
      ar: ar,
      en: en,
    );
  }
}

@JsonSerializable()
class SlideModel {
  int? id;
  List<MediaModel>? media;

  SlideModel({
    this.id,
    this.media,
  });

  factory SlideModel.fromJson(Map<String, dynamic> json) {
    return _$SlideModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SlideModelToJson(this);

  SlideEntity toDomain() {
    return SlideEntity(
      id: id,
      media: media!.map((e) => e.toDomain()).toList(),
    );
  }
}


@JsonSerializable()
class AdsModel {
  NameModel? name;
  String? image;

  AdsModel({
    this.name,
    this.image,
  });

  factory AdsModel.fromJson(Map<String, dynamic> json) {
    return _$AdsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AdsModelToJson(this);

  AdsEntity toDomain() {
    return AdsEntity(
      name: name?.toDomain(),
      image: image,
    );
  }
}
