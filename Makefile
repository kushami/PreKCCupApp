.PHONY: test
test:
	flutter test

build_web: test
	flutter build web

deploy_web: test build_web
	firebase deploy

build_freeze:
	flutter pub run build_runner build --delete-conflicting-outputs

