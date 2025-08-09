import 'widgets.dart';

Future<void> showSignInPopUp({
  required BuildContext context,
  required void Function(String username) onJoin,
  required String buttonTitle,

}) async {
  final TextEditingController controller = TextEditingController();
  final ValueNotifier<bool> isButtonEnabled = ValueNotifier(false);

  await showDialog<String>(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return AlertDialog(
        title: Text(context.loc.sign_in_title),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: context.loc.username_hint,
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            isButtonEnabled.value = value.trim().isNotEmpty;
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(context.loc.cancel),
          ),
          ValueListenableBuilder<bool>(
            valueListenable: isButtonEnabled,
            builder: (context, enabled, _) {
              return ElevatedButton(
                onPressed: enabled
                    ? () {
                        final username = controller.text.trim();
                        Navigator.of(context).pop();
                        onJoin(username);
                      }
                    : null,
                child: Text(buttonTitle),
              );
            },
          ),
        ],
      );
    },
  );
}
