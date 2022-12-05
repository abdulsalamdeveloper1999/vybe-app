import 'package:get/get.dart';

import '../modules/BookingConfirmed/bindings/booking_confirmed_binding.dart';
import '../modules/BookingConfirmed/views/booking_confirmed_view.dart';
import '../modules/Bottom/bindings/bottom_binding.dart';
import '../modules/Bottom/views/bottom_view.dart';
import '../modules/BuyTickets/bindings/buy_tickets_binding.dart';
import '../modules/BuyTickets/views/buy_tickets_view.dart';
import '../modules/CheckOut/bindings/check_out_binding.dart';
import '../modules/CheckOut/views/check_out_view.dart';
import '../modules/ContinueWith/bindings/continue_with_binding.dart';
import '../modules/ContinueWith/views/continue_with_view.dart';
import '../modules/EventHostPage/bindings/event_host_page_binding.dart';
import '../modules/EventHostPage/views/event_host_page_view.dart';
import '../modules/EventPage/bindings/event_page_binding.dart';
import '../modules/EventPage/views/event_page_view.dart';
import '../modules/FollowProfile/bindings/follow_profile_binding.dart';
import '../modules/FollowProfile/views/follow_profile_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/LoungePage/bindings/lounge_page_binding.dart';
import '../modules/LoungePage/views/lounge_page_view.dart';
import '../modules/Packages/bindings/packages_binding.dart';
import '../modules/Packages/views/packages_view.dart';
import '../modules/Payment/bindings/payment_binding.dart';
import '../modules/Payment/views/payment_view.dart';
import '../modules/PaymentCompleted/bindings/payment_completed_binding.dart';
import '../modules/PaymentCompleted/views/payment_completed_view.dart';
import '../modules/PaymentNotCompleted/bindings/payment_not_completed_binding.dart';
import '../modules/PaymentNotCompleted/views/payment_not_completed_view.dart';
import '../modules/ProfileBottomBar/bindings/profile_bottom_bar_binding.dart';
import '../modules/ProfileBottomBar/views/profile_bottom_bar_view.dart';
import '../modules/Register/bindings/register_binding.dart';
import '../modules/Register/views/register_view.dart';
import '../modules/RestaurantCard/bindings/restaurant_card_binding.dart';
import '../modules/RestaurantCard/views/restaurant_card_view.dart';
import '../modules/SearchBottomBar/bindings/search_bottom_bar_binding.dart';
import '../modules/SearchBottomBar/views/search_bottom_bar_view.dart';
import '../modules/Selection/bindings/login_binding.dart';
import '../modules/Selection/views/selection_view.dart';
import '../modules/SignUp/bindings/sign_up_binding.dart';
import '../modules/SignUp/views/sign_up_view.dart';
import '../modules/TicketsBottomBar/bindings/tickets_bottom_bar_binding.dart';
import '../modules/TicketsBottomBar/views/tickets_bottom_bar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SELECTION;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SELECTION,
      page: () => Selection(),
      binding: SelectionBinding(),
    ),
    GetPage(
      name: _Paths.CONTINUE_WITH,
      page: () => ContinueWithView(),
      binding: ContinueWithBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM,
      page: () => BottomView(),
      binding: BottomBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_BOTTOM_BAR,
      page: () => SearchBottomBarView(),
      binding: SearchBottomBarBinding(),
    ),
    GetPage(
      name: _Paths.TICKETS_BOTTOM_BAR,
      page: () => TicketsBottomBarView(),
      binding: TicketsBottomBarBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_BOTTOM_BAR,
      page: () => ProfileBottomBarView(),
      binding: ProfileBottomBarBinding(),
    ),
    GetPage(
      name: _Paths.CHECK_OUT,
      page: () => CheckOutView(),
      binding: CheckOutBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_COMPLETED,
      page: () => PaymentCompletedView(),
      binding: PaymentCompletedBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_NOT_COMPLETED,
      page: () => PaymentNotCompletedView(),
      binding: PaymentNotCompletedBinding(),
    ),
    GetPage(
      name: _Paths.BOOKING_CONFIRMED,
      page: () => BookingConfirmedView(),
      binding: BookingConfirmedBinding(),
    ),
    GetPage(
      name: _Paths.RESTAURANT_CARD,
      page: () => RestaurantCardView(),
      binding: RestaurantCardBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_HOST_PAGE,
      page: () => EventHostPageView(),
      binding: EventHostPageBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_PAGE,
      page: () => EventPageView(),
      binding: EventPageBinding(),
    ),
    GetPage(
      name: _Paths.BUY_TICKETS,
      page: () => BuyTicketsView(),
      binding: BuyTicketsBinding(),
    ),
    GetPage(
      name: _Paths.LOUNGE_PAGE,
      page: () => LoungePageView(),
      binding: LoungePageBinding(),
    ),
    GetPage(
      name: _Paths.PACKAGES,
      page: () => PackagesView(),
      binding: PackagesBinding(),
    ),
    GetPage(
      name: _Paths.FOLLOW_PROFILE,
      page: () => FollowProfileView(),
      binding: FollowProfileBinding(),
    ),
  ];
}
