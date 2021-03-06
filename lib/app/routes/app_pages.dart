import 'package:tanino_x/app/modules/menu/views/menu_view.dart';
import 'package:tanino_x/app/modules/menu/bindings/menu_binding.dart';
import 'package:tanino_x/app/modules/schedules/views/schedules_view.dart';
import 'package:tanino_x/app/modules/schedules/bindings/schedules_binding.dart';
import 'package:tanino_x/app/modules/contact/views/contact_view.dart';
import 'package:tanino_x/app/modules/contact/bindings/contact_binding.dart';
import 'package:tanino_x/app/modules/specialties/views/specialties_view.dart';
import 'package:tanino_x/app/modules/specialties/bindings/specialties_binding.dart';
import 'package:tanino_x/app/modules/services/views/services_view.dart';
import 'package:tanino_x/app/modules/services/bindings/services_binding.dart';
import 'package:tanino_x/app/modules/fidelity/views/fidelity_view.dart';
import 'package:tanino_x/app/modules/fidelity/bindings/fidelity_binding.dart';
import 'package:tanino_x/app/modules/professional_perfil/views/professional_perfil_view.dart';
import 'package:tanino_x/app/modules/professional_perfil/bindings/professional_perfil_binding.dart';
import 'package:tanino_x/app/modules/professionals/views/professionals_view.dart';
import 'package:tanino_x/app/modules/professionals/bindings/professionals_binding.dart';
import 'package:tanino_x/app/modules/signup/views/signup_view.dart';
import 'package:tanino_x/app/modules/signup/bindings/signup_binding.dart';
import 'package:tanino_x/app/modules/login/views/login_view.dart';
import 'package:tanino_x/app/modules/login/bindings/login_binding.dart';
import 'package:tanino_x/app/modules/home/views/home_view.dart';
import 'package:tanino_x/app/modules/home/bindings/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  
static const INITIAL = Routes.SPECIALTIES;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page:()=> HomeView(), 
      binding: HomeBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Routes.LOGIN, 
      page:()=> LoginView(), 
      binding: LoginBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.SIGNUP, 
      page:()=> SignupView(), 
      binding: SignupBinding(),
      transition: Transition.fadeIn
    ),
    GetPage(
      name: Routes.PROFESSIONALS, 
      page:()=> ProfessionalsView(), 
      binding: ProfessionalsBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Routes.PROFESSIONAL_PERFIL, 
      page:()=> ProfessionalPerfilView(), 
      binding: ProfessionalPerfilBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Routes.FIDELITY, 
      page:()=> FidelityView(), 
      binding: FidelityBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Routes.SERVICES, 
      page:()=> ServicesView(), 
      binding: ServicesBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Routes.SPECIALTIES, 
      page:()=> SpecialtiesView(), 
      binding: SpecialtiesBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Routes.CONTACT, 
      page:()=> ContactView(), 
      binding: ContactBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Routes.SCHEDULES, 
      page:()=> SchedulesView(), 
      binding: SchedulesBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Routes.MENU, 
      page:()=> MenuView(), 
      binding: MenuBinding(),
    ),
  ];
}