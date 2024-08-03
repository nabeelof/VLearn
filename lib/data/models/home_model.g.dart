// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      notificationCount: (json['notification_count'] as num?)?.toInt(),
      teachers: (json['teachers'] as List<dynamic>?)
          ?.map((e) => TeacherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      slides: (json['slides'] as List<dynamic>?)
          ?.map((e) => SlideModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => CourseDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      stories: (json['stories'] as List<dynamic>?)
          ?.map((e) => StoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ads: (json['ads'] as List<dynamic>?)
          ?.map((e) => AdsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'notification_count': instance.notificationCount,
      'teachers': instance.teachers,
      'slides': instance.slides,
      'stories': instance.stories,
      'courses': instance.courses,
      'ads': instance.ads,
    };

StoryModel _$StoryModelFromJson(Map<String, dynamic> json) => StoryModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      isVideo: (json['is_video'] as num?)?.toInt(),
      thumb: json['thumb'] as String?,
      url: json['url'] as String?,
      duration: json['duration'] as String?,
    )
      ..teacherName = json['teacher_name'] as String?
      ..teacherImage = json['teacher_image'] as String?
      ..storiesFiles = (json['stories_files'] as List<dynamic>?)
          ?.map((e) => StoryModel.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$StoryModelToJson(StoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_video': instance.isVideo,
      'thumb': instance.thumb,
      'url': instance.url,
      'duration': instance.duration,
      'teacher_name': instance.teacherName,
      'teacher_image': instance.teacherImage,
      'stories_files': instance.storiesFiles,
    };

PaginatedCoursesModel _$PaginatedCoursesModelFromJson(
        Map<String, dynamic> json) =>
    PaginatedCoursesModel(
      totalCourses: (json['total_courses'] as num?)?.toInt(),
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => CourseDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaginatedCoursesModelToJson(
        PaginatedCoursesModel instance) =>
    <String, dynamic>{
      'total_courses': instance.totalCourses,
      'courses': instance.courses,
    };

CourseDetailsModel _$CourseDetailsModelFromJson(Map<String, dynamic> json) =>
    CourseDetailsModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] == null
          ? null
          : NameModel.fromJson(json['name'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : NameModel.fromJson(json['description'] as Map<String, dynamic>),
      price: json['price'] as String?,
      priceAfterDiscount: json['price_after_discount'] as String?,
      teacherId: (json['teacher_id'] as num?)?.toInt(),
      introVideo: json['intro_video'] as String?,
      whatsappLink: json['whatsapp_link'] as String?,
      hasAttendance: (json['has_attendance'] as num?)?.toInt(),
      attendancePrice: json['attendance_price'] as String?,
      secondCategoryId: (json['second_category_id'] as num?)?.toInt(),
      thirdCategoryId: (json['third_category_id'] as num?)?.toInt(),
      firstCategoryId: (json['first_category_id'] as num?)?.toInt(),
      semesterId: (json['semester_id'] as num?)?.toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      active: json['active'] as bool?,
      showOrder: (json['show_order'] as num?)?.toInt(),
      isApproved: (json['is_approved'] as num?)?.toInt(),
      isFeatured: (json['is_featured'] as num?)?.toInt(),
      isRecommended: (json['is_recommended'] as num?)?.toInt(),
      forSale: (json['for_sale'] as num?)?.toInt(),
      deletedAt: json['deleted_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      teacherFirstName: json['teacher_first_name'] as String?,
      teacherLastName: json['teacher_last_name'] as String?,
      teacherImage: json['teacher_image'] as String?,
      isFavorite: (json['is_favorite'] as num?)?.toInt(),
      inCart: (json['in_cart'] as num?)?.toInt(),
      addOns: (json['add_ons'] as List<dynamic>?)
          ?.map((e) => AddOnsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      discountPercentage: json['discount_percentage'] as String?,
      isPurchased: (json['is_purchased'] as num?)?.toInt(),
      fixMedia: json['fix_media'] as bool?,
      customFields: (json['custom_fields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hasMedia: json['has_media'] as bool?,
      isBlocked: (json['is_blocked'] as num?)?.toInt(),
      isLocked: (json['is_locked'] as num?)?.toInt(),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      duration: json['duration'] as String?,
      subCourses: (json['sub_courses'] as List<dynamic>?)
          ?.map((e) => SubCourseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      quizzesCount: (json['quizzes_count'] as num?)?.toInt(),
      termsCount: (json['terms_count'] as num?)?.toInt(),
      questionsCount: (json['questions_count'] as num?)?.toInt(),
      examQuestionsCount: json['exam_questions_count'] as String?,
      examDuration: json['exam_duration'] as String?,
      examSeconds: (json['exam_seconds'] as num?)?.toInt(),
      canExam: (json['can_exam'] as num?)?.toInt(),
      showExam: (json['show_exam'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CourseDetailsModelToJson(CourseDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'price_after_discount': instance.priceAfterDiscount,
      'teacher_id': instance.teacherId,
      'intro_video': instance.introVideo,
      'whatsapp_link': instance.whatsappLink,
      'has_attendance': instance.hasAttendance,
      'attendance_price': instance.attendancePrice,
      'second_category_id': instance.secondCategoryId,
      'third_category_id': instance.thirdCategoryId,
      'first_category_id': instance.firstCategoryId,
      'semester_id': instance.semesterId,
      'parent_id': instance.parentId,
      'active': instance.active,
      'show_order': instance.showOrder,
      'is_approved': instance.isApproved,
      'is_featured': instance.isFeatured,
      'is_recommended': instance.isRecommended,
      'for_sale': instance.forSale,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'teacher_first_name': instance.teacherFirstName,
      'teacher_last_name': instance.teacherLastName,
      'teacher_image': instance.teacherImage,
      'is_favorite': instance.isFavorite,
      'in_cart': instance.inCart,
      'add_ons': instance.addOns,
      'discount_percentage': instance.discountPercentage,
      'is_purchased': instance.isPurchased,
      'fix_media': instance.fixMedia,
      'custom_fields': instance.customFields,
      'has_media': instance.hasMedia,
      'is_blocked': instance.isBlocked,
      'is_locked': instance.isLocked,
      'sub_courses': instance.subCourses,
      'duration': instance.duration,
      'quizzes_count': instance.quizzesCount,
      'terms_count': instance.termsCount,
      'questions_count': instance.questionsCount,
      'media': instance.media,
      'exam_questions_count': instance.examQuestionsCount,
      'exam_duration': instance.examDuration,
      'exam_seconds': instance.examSeconds,
      'can_exam': instance.canExam,
      'show_exam': instance.showExam,
    };

PaginatedTeachersModel _$PaginatedTeachersModelFromJson(
        Map<String, dynamic> json) =>
    PaginatedTeachersModel(
      totalTeachers: (json['total_teachers'] as num?)?.toInt(),
      teachers: (json['teachers'] as List<dynamic>?)
          ?.map((e) => TeacherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaginatedTeachersModelToJson(
        PaginatedTeachersModel instance) =>
    <String, dynamic>{
      'total_teachers': instance.totalTeachers,
      'teachers': instance.teachers,
    };

TeacherModel _$TeacherModelFromJson(Map<String, dynamic> json) => TeacherModel(
      id: (json['id'] as num?)?.toInt(),
      roleId: (json['role_id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      fatherName: json['father_name'] as String?,
      phoneCode: json['phone_code'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      secondaryPhoneCode: json['secondary_phone_code'] as String?,
      secondaryPhone: json['secondary_phone'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      buildingNumber: json['building_number'] as String?,
      birthday: json['birthday'] as String?,
      gender: json['gender'] as String?,
      bio: json['bio'] as String?,
      address: json['address'] as String?,
      job: json['job'] as String?,
      cover: json['cover'] as String?,
      firstCategoryId: (json['first_category_id'] as num?)?.toInt(),
      secondCategoryId: (json['second_category_id'] as num?)?.toInt(),
      thirdCategoryId: (json['third_category_id'] as num?)?.toInt(),
      secondaryActivationCode: json['secondary_activation_code'] as String?,
      emailActivationCode: json['email_activation_code'] as String?,
      active: (json['active'] as num?)?.toInt(),
      balance: (json['balance'] as num?)?.toInt(),
      coins: (json['coins'] as num?)?.toInt(),
      lastLogin: json['last_login'] as String?,
      loginAttemps: (json['login_attemps'] as num?)?.toInt(),
      savedPassword: (json['saved_password'] as num?)?.toInt(),
      savedPassword2: (json['saved_password2'] as num?)?.toInt(),
      notificationCount: (json['notification_count'] as num?)?.toInt(),
      isFeatured: (json['isFeatured'] as num?)?.toInt(),
      blocked: (json['blocked'] as num?)?.toInt(),
      blockedBypassDate: json['blocked_bypass_date'] as String?,
      deviceToken: json['device_token'] as String?,
      locale: json['locale'] as String?,
      platform: json['platform'] as String?,
      platform2: json['platform2'] as String?,
      isDeleted: (json['is_deleted'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      isFollowing: (json['is_following'] as num?)?.toInt(),
      followers: (json['followers'] as num?)?.toInt(),
      coursesCount: (json['courses_count'] as num?)?.toInt(),
      image: json['image'] as String?,
      secondCategory: (json['second_category'] as List<dynamic>?)
          ?.map((e) => UniversityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => CourseDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCourses: (json['total_courses'] as num?)?.toInt(),
      customFields: (json['custom_fields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hasMedia: json['has_media'] as bool?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TeacherModelToJson(TeacherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role_id': instance.roleId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'father_name': instance.fatherName,
      'phone_code': instance.phoneCode,
      'phone': instance.phone,
      'email': instance.email,
      'secondary_phone_code': instance.secondaryPhoneCode,
      'secondary_phone': instance.secondaryPhone,
      'country': instance.country,
      'city': instance.city,
      'street': instance.street,
      'building_number': instance.buildingNumber,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'bio': instance.bio,
      'address': instance.address,
      'job': instance.job,
      'first_category_id': instance.firstCategoryId,
      'second_category_id': instance.secondCategoryId,
      'third_category_id': instance.thirdCategoryId,
      'secondary_activation_code': instance.secondaryActivationCode,
      'email_activation_code': instance.emailActivationCode,
      'active': instance.active,
      'balance': instance.balance,
      'coins': instance.coins,
      'last_login': instance.lastLogin,
      'login_attemps': instance.loginAttemps,
      'saved_password': instance.savedPassword,
      'saved_password2': instance.savedPassword2,
      'notification_count': instance.notificationCount,
      'isFeatured': instance.isFeatured,
      'blocked': instance.blocked,
      'blocked_bypass_date': instance.blockedBypassDate,
      'device_token': instance.deviceToken,
      'locale': instance.locale,
      'platform': instance.platform,
      'platform2': instance.platform2,
      'is_deleted': instance.isDeleted,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'is_following': instance.isFollowing,
      'followers': instance.followers,
      'courses_count': instance.coursesCount,
      'image': instance.image,
      'cover': instance.cover,
      'second_category': instance.secondCategory,
      'courses': instance.courses,
      'total_courses': instance.totalCourses,
      'custom_fields': instance.customFields,
      'has_media': instance.hasMedia,
      'media': instance.media,
    };

LectureModel _$LectureModelFromJson(Map<String, dynamic> json) => LectureModel(
      quizzes: (json['quizzes'] as List<dynamic>?)
          ?.map((e) => QuizModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalQuizzes: (json['total_quizzes'] as num?)?.toInt(),
      totalQuestions: (json['total_questions'] as num?)?.toInt(),
      correctInARow: (json['correct_in_a_row'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LectureModelToJson(LectureModel instance) =>
    <String, dynamic>{
      'quizzes': instance.quizzes,
      'total_quizzes': instance.totalQuizzes,
      'total_questions': instance.totalQuestions,
      'correct_in_a_row': instance.correctInARow,
    };

SubCourseModel _$SubCourseModelFromJson(Map<String, dynamic> json) =>
    SubCourseModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] == null
          ? null
          : NameModel.fromJson(json['name'] as Map<String, dynamic>),
      firstCategoryId: (json['first_category_id'] as num?)?.toInt(),
      secondCategoryId: (json['second_category_id'] as num?)?.toInt(),
      thirdCategoryId: (json['third_category_id'] as num?)?.toInt(),
      semesterId: (json['semester_id'] as num?)?.toInt(),
      courseId: (json['course_id'] as num?)?.toInt(),
      subCourseId: (json['sub_course_id'] as num?)?.toInt(),
      price: json['price'] as String?,
      parentId: (json['parent_id'] as num?)?.toInt(),
      active: json['active'] as bool?,
      showOrder: (json['show_order'] as num?)?.toInt(),
      priceAfterDiscount: json['price_after_discount'] as String?,
      description: json['description'] == null
          ? null
          : NameModel.fromJson(json['description'] as Map<String, dynamic>),
      deletedAt: json['deleted_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      teacherId: (json['teacher_id'] as num?)?.toInt(),
      courseName: json['course_name'] == null
          ? null
          : NameModel.fromJson(json['course_name'] as Map<String, dynamic>),
      teacherFirstName: json['teacher_first_name'] as String?,
      teacherLastName: json['teacher_last_name'] as String?,
      teacherImage: json['teacher_image'] as String?,
      discountPercentage: json['discount_percentage'] as String?,
      isPurchased: (json['is_purchased'] as num?)?.toInt(),
      customFields: (json['custom_fields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isBlocked: (json['is_blocked'] as num?)?.toInt(),
      isLocked: (json['is_locked'] as num?)?.toInt(),
      forSale: (json['for_sale'] as num?)?.toInt(),
      quizzesCount: (json['quizzes_count'] as num?)?.toInt(),
    )..isFavorite = (json['is_favorite'] as num?)?.toInt();

Map<String, dynamic> _$SubCourseModelToJson(SubCourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'first_category_id': instance.firstCategoryId,
      'second_category_id': instance.secondCategoryId,
      'third_category_id': instance.thirdCategoryId,
      'semester_id': instance.semesterId,
      'course_id': instance.courseId,
      'sub_course_id': instance.subCourseId,
      'price': instance.price,
      'parent_id': instance.parentId,
      'active': instance.active,
      'show_order': instance.showOrder,
      'price_after_discount': instance.priceAfterDiscount,
      'description': instance.description,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'course_name': instance.courseName,
      'teacher_first_name': instance.teacherFirstName,
      'teacher_last_name': instance.teacherLastName,
      'teacher_image': instance.teacherImage,
      'discount_percentage': instance.discountPercentage,
      'is_purchased': instance.isPurchased,
      'custom_fields': instance.customFields,
      'is_blocked': instance.isBlocked,
      'is_locked': instance.isLocked,
      'teacher_id': instance.teacherId,
      'for_sale': instance.forSale,
      'is_favorite': instance.isFavorite,
      'quizzes_count': instance.quizzesCount,
    };

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) => VideoModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] == null
          ? null
          : NameModel.fromJson(json['name'] as Map<String, dynamic>),
      url: json['url'] as String?,
      isCompressed: (json['is_compressed'] as num?)?.toInt(),
      rawUrl: json['raw_url'] as String?,
      firstCategoryId: (json['first_category_id'] as num?)?.toInt(),
      secondCategoryId: (json['second_category_id'] as num?)?.toInt(),
      thirdCategoryId: (json['third_category_id'] as num?)?.toInt(),
      semesterId: (json['semester_id'] as num?)?.toInt(),
      courseId: (json['course_id'] as num?)?.toInt(),
      subCourseId: (json['sub_course_id'] as num?)?.toInt(),
      classId: (json['class_id'] as num?)?.toInt(),
      parentId: json['parent_id'] as String?,
      active: json['active'] as bool?,
      duration: json['duration'] as String?,
      deletedAt: json['deleted_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      isPurchased: (json['is_purchased'] as num?)?.toInt(),
      currentDuration: (json['current_duration'] as num?)?.toInt(),
      watchPercentage: (json['watch_percentage'] as num?)?.toInt(),
      customFields: (json['custom_fields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$VideoModelToJson(VideoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'is_compressed': instance.isCompressed,
      'raw_url': instance.rawUrl,
      'first_category_id': instance.firstCategoryId,
      'second_category_id': instance.secondCategoryId,
      'third_category_id': instance.thirdCategoryId,
      'semester_id': instance.semesterId,
      'course_id': instance.courseId,
      'sub_course_id': instance.subCourseId,
      'class_id': instance.classId,
      'parent_id': instance.parentId,
      'active': instance.active,
      'duration': instance.duration,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'is_purchased': instance.isPurchased,
      'current_duration': instance.currentDuration,
      'watch_percentage': instance.watchPercentage,
      'custom_fields': instance.customFields,
    };

NoteModel _$NoteModelFromJson(Map<String, dynamic> json) => NoteModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] == null
          ? null
          : NameModel.fromJson(json['name'] as Map<String, dynamic>),
      url: json['url'] as String?,
      canShare: (json['can_share'] as num?)?.toInt(),
      canPrint: (json['can_print'] as num?)?.toInt(),
      firstCategoryId: (json['first_category_id'] as num?)?.toInt(),
      secondCategoryId: (json['second_category_id'] as num?)?.toInt(),
      thirdCategoryId: (json['third_category_id'] as num?)?.toInt(),
      semesterId: (json['semester_id'] as num?)?.toInt(),
      courseId: (json['course_id'] as num?)?.toInt(),
      subCourseId: (json['sub_course_id'] as num?)?.toInt(),
      classId: (json['class_id'] as num?)?.toInt(),
      parentId: json['parent_id'] as String?,
      active: json['active'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      isPurchased: (json['is_purchased'] as num?)?.toInt(),
      isWatched: (json['is_watched'] as num?)?.toInt(),
      customFields: (json['custom_fields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$NoteModelToJson(NoteModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'can_share': instance.canShare,
      'can_print': instance.canPrint,
      'first_category_id': instance.firstCategoryId,
      'second_category_id': instance.secondCategoryId,
      'third_category_id': instance.thirdCategoryId,
      'semester_id': instance.semesterId,
      'course_id': instance.courseId,
      'sub_course_id': instance.subCourseId,
      'class_id': instance.classId,
      'parent_id': instance.parentId,
      'active': instance.active,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'is_purchased': instance.isPurchased,
      'is_watched': instance.isWatched,
      'custom_fields': instance.customFields,
    };

OtherModel _$OtherModelFromJson(Map<String, dynamic> json) => OtherModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] == null
          ? null
          : NameModel.fromJson(json['name'] as Map<String, dynamic>),
      url: json['url'] as String?,
      firstCategoryId: (json['first_category_id'] as num?)?.toInt(),
      secondCategoryId: (json['second_category_id'] as num?)?.toInt(),
      thirdCategoryId: (json['third_category_id'] as num?)?.toInt(),
      semesterId: (json['semester_id'] as num?)?.toInt(),
      courseId: (json['course_id'] as num?)?.toInt(),
      subCourseId: (json['sub_course_id'] as num?)?.toInt(),
      classId: (json['class_id'] as num?)?.toInt(),
      parentId: json['parent_id'] as String?,
      ext: json['ext'] as String?,
      canDownload: (json['can_download'] as num?)?.toInt(),
      active: json['active'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      isPurchased: (json['is_purchased'] as num?)?.toInt(),
      isWatched: (json['is_watched'] as num?)?.toInt(),
      customFields: (json['custom_fields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$OtherModelToJson(OtherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'first_category_id': instance.firstCategoryId,
      'second_category_id': instance.secondCategoryId,
      'third_category_id': instance.thirdCategoryId,
      'semester_id': instance.semesterId,
      'course_id': instance.courseId,
      'sub_course_id': instance.subCourseId,
      'class_id': instance.classId,
      'parent_id': instance.parentId,
      'ext': instance.ext,
      'can_download': instance.canDownload,
      'active': instance.active,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'is_purchased': instance.isPurchased,
      'is_watched': instance.isWatched,
      'custom_fields': instance.customFields,
    };

QuizModel _$QuizModelFromJson(Map<String, dynamic> json) => QuizModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] == null
          ? null
          : NameModel.fromJson(json['name'] as Map<String, dynamic>),
      price: json['price'] as String?,
      active: json['active'] as bool?,
      isFeatured: (json['is_featured'] as num?)?.toInt(),
      deletedAt: json['deleted_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      priceBeforeDiscount: json['price_before_discount'] as String?,
      discountPercentage: json['discount_percentage'] as String?,
      isPurchased: (json['is_purchased'] as num?)?.toInt(),
      fixMedia: json['fix_media'] as bool?,
      customFields: (json['custom_fields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hasMedia: json['has_media'] as bool?,
      isBlocked: (json['is_blocked'] as num?)?.toInt(),
      isLocked: (json['is_locked'] as num?)?.toInt(),
      isFavorite: (json['is_favorite'] as num?)?.toInt(),
      totalQuestions: (json['total_questions'] as num?)?.toInt(),
      courseName: json['course_name'] == null
          ? null
          : NameModel.fromJson(json['course_name'] as Map<String, dynamic>),
      teacherFirstName: json['teacher_first_name'] as String?,
      teacherLastName: json['teacher_last_name'] as String?,
      teacherImage: json['teacher_image'] as String?,
      subCourseName: json['sub_course_name'] == null
          ? null
          : NameModel.fromJson(json['sub_course_name'] as Map<String, dynamic>),
      wrongAnswers: (json['wrong_answers'] as num?)?.toInt(),
      hasExamine: json['has_examine'] as bool?,
      correctAnswers: (json['correct_in_a_row'] as num?)?.toInt(),
    );

Map<String, dynamic> _$QuizModelToJson(QuizModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'active': instance.active,
      'is_featured': instance.isFeatured,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'is_favorite': instance.isFavorite,
      'price_before_discount': instance.priceBeforeDiscount,
      'discount_percentage': instance.discountPercentage,
      'is_purchased': instance.isPurchased,
      'fix_media': instance.fixMedia,
      'custom_fields': instance.customFields,
      'has_media': instance.hasMedia,
      'is_blocked': instance.isBlocked,
      'is_locked': instance.isLocked,
      'total_questions': instance.totalQuestions,
      'course_name': instance.courseName,
      'teacher_first_name': instance.teacherFirstName,
      'teacher_last_name': instance.teacherLastName,
      'teacher_image': instance.teacherImage,
      'sub_course_name': instance.subCourseName,
      'correct_in_a_row': instance.correctAnswers,
      'wrong_answers': instance.wrongAnswers,
      'has_examine': instance.hasExamine,
    };

AddOnsModel _$AddOnsModelFromJson(Map<String, dynamic> json) => AddOnsModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] == null
          ? null
          : NameModel.fromJson(json['name'] as Map<String, dynamic>),
      price: json['price'] as String?,
      description: json['description'] == null
          ? null
          : NameModel.fromJson(json['description'] as Map<String, dynamic>),
      isOnline: json['is_online'] as bool?,
      active: json['active'] as bool?,
      courseId: (json['course_id'] as num?)?.toInt(),
      forSale: (json['for_sale'] as num?)?.toInt(),
      discountPercentage: json['discount_percentage'] as String?,
      isPurchased: (json['is_purchased'] as num?)?.toInt(),
      customFields: (json['custom_fields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AddOnsModelToJson(AddOnsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'is_online': instance.isOnline,
      'active': instance.active,
      'course_id': instance.courseId,
      'for_sale': instance.forSale,
      'discount_percentage': instance.discountPercentage,
      'is_purchased': instance.isPurchased,
      'custom_fields': instance.customFields,
    };

MediaModel _$MediaModelFromJson(Map<String, dynamic> json) => MediaModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      url: json['url'] as String?,
      formatedSize: json['formated_size'] as String?,
      icon: json['icon'] as String?,
      thumb: json['thumb'] as String?,
      uuid: json['uuid'] as String?,
    );

Map<String, dynamic> _$MediaModelToJson(MediaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'thumb': instance.thumb,
      'icon': instance.icon,
      'formated_size': instance.formatedSize,
      'uuid': instance.uuid,
    };

NameModel _$NameModelFromJson(Map<String, dynamic> json) => NameModel(
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$NameModelToJson(NameModel instance) => <String, dynamic>{
      'en': instance.en,
      'ar': instance.ar,
    };

SlideModel _$SlideModelFromJson(Map<String, dynamic> json) => SlideModel(
      id: (json['id'] as num?)?.toInt(),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SlideModelToJson(SlideModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'media': instance.media,
    };

AdsModel _$AdsModelFromJson(Map<String, dynamic> json) => AdsModel(
      name: json['name'] == null
          ? null
          : NameModel.fromJson(json['name'] as Map<String, dynamic>),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$AdsModelToJson(AdsModel instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
    };
