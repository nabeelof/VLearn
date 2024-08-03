import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:vlearn_test/core/Constants/constants.dart';
import 'package:vlearn_test/core/injection.dart';
import 'package:vlearn_test/data/params/home_params.dart';
import 'package:vlearn_test/domain/usecases/home_usecases/get_courses_usecase.dart';
import 'package:vlearn_test/domain/usecases/home_usecases/get_home_usecase.dart';

import '../../../domain/entities/home_entity.dart';

class HomeController extends GetxController {
  RefreshController refreshController =
      RefreshController(initialRefresh: false);
  final RxInt _sliderIndex = 0.obs;
  RxList<SlideEntity> _slides = <SlideEntity>[].obs;
  final RxList<CourseEntity> _courses = <CourseEntity>[].obs;
  final RxBool _isLoadingHome = true.obs;
  final RxBool _isLoadingCourses = true.obs;
  final RxBool _isLoadingSlides = true.obs;
  final Rx<int> _pageNumber = 0.obs;

  int get sliderIndex => _sliderIndex.value;

  bool get isLoadingHome => _isLoadingHome.value;

  List<SlideEntity> get slides => _slides;

  List<CourseEntity> get courses => _courses;

  bool get isLoadingSlides => _isLoadingSlides.value;

  bool get isLoadingCourses => _isLoadingCourses.value;

  int get pageNumber => _pageNumber.value;

  set isLoadingHome(bool value) => _isLoadingHome.value = value;

  set sliderIndex(int value) => _sliderIndex.value = value;

  set slides(value) => _slides.value = value;

  set courses(value) => _courses.value = value;

  set isLoadingSlides(value) => _isLoadingSlides.value = value;

  set isLoadingCourses(value) => _isLoadingCourses.value = value;

  set pageNumber(value) => _pageNumber.value = value;

  onRefreshList() async {
    await getHomeByChoice("slides");
    pageNumber = 0;
    courses.clear();
    _courses.refresh();
    await getCoursesList();
    refreshController.refreshCompleted();
  }

  onLoadingCoursesList() async {
    await getCoursesList();
  }

  onSliderChange(int index) {
    sliderIndex = index;
  }

  @override
  void onInit() {
    super.onInit();
    getHomeByChoice("slides");
    getCoursesList();
  }

  @override
  onClose() {
    refreshController.dispose();
    super.onClose();
  }

  getHomeByChoice(String choice) {
    getHome(HomeParams(
        firstCategoryId: 4,
        secondCategoryId: 4,
        choice: choice,
        thirdCategoryId: 2));
  }

  getHome(HomeParams params) async {
    GetHomeUseCase getHomeUseCase = sl();
    final result = await getHomeUseCase(params);
    result!.fold((l) {
      refreshController.refreshFailed();
    }, (r) async {
      if (params.choice == "slides") {
        sliderIndex = 0;
        _slides = r.slides!.obs;
        isLoadingSlides = false;
        isLoadingHome = false;
      }
    });
  }

  getCoursesList() async {
    GetCoursesUseCase getAllCoursesUseCase = sl();
    final result = await getAllCoursesUseCase(
      HomeParams(
          offset: pageNumber,
          limit: PAGE_LENGTH,
          firstCategoryId: 4,
          secondCategoryId: 4,
          thirdCategoryId: 2),
    );
    result!.fold((l) => {refreshController.loadFailed()}, (r) {
      pageNumber++;
      courses.addAll(r.paginatedList! as List<CourseEntity>);
      _courses.refresh();
      if (r.paginatedList!.isEmpty) {
        refreshController.loadNoData();
      } else {
        refreshController.loadComplete();
      }
      isLoadingCourses = false;
    });
  }
}
