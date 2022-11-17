import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/result_state.dart';
import '../../../common/style.dart';
import '../provider/profile_notifier.dart';

class ImageProfileWidget extends StatelessWidget {
  const ImageProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProfileNotifier>(context);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Foto Profil',
            style: TextStyle(
              fontSize: 16,
              fontWeight: AppStyle.semiBold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          provider.state != ResultState.HasData
              ? SizedBox(
                  height: 250,
                  width: 250,
                  child: Material(
                    color: AppStyle.textSecondaryColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(16),
                    child: InkWell(
                      onTap: () {
                        provider.pickImage();
                      },
                      borderRadius: BorderRadius.circular(16),
                      child: const Center(
                        child: Icon(
                          Icons.camera_alt,
                          size: 100,
                          color: AppStyle.textSecondaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.memory(
                    provider.imageBytes,
                    width: 250,
                    fit: BoxFit.contain,
                    height: 250,
                  ),
                ),
        ],
      ),
    );
  }
}
