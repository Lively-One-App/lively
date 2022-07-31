gen:
	flutter pub run build_runner watch --delete-conflicting-outputs

clear-pods:
	rm -rf Pods; pod cache clean --all; pod deintegrate; pod setup; pod install