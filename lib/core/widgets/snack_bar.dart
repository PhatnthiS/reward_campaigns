import 'widgets.dart';

class AppSnackBar extends SnackBar {
  AppSnackBar({
    super.key,
    required String message,
    IconData icon = Icons.check_circle,
    Color color = Colors.green,
    super.duration = const Duration(seconds: 3),
  }) : super(
         behavior: SnackBarBehavior.floating,
         backgroundColor: Colors.transparent,
         elevation: 0,
         content: Container(
           padding: const EdgeInsets.all(16),
           decoration: BoxDecoration(
             color: color,
             borderRadius: BorderRadius.circular(16),

           ),
           child: Row(
             children: [
               Icon(icon, color: AppColors.white),
               const SizedBox(width: 12),
               Expanded(
                 child: Text(
                   message,
                   style: TextStyle(color: AppColors.textSecondary).copyWith(color: AppColors.white),
                 ),
               ),
             ],
           ),
         ),
       );
}
