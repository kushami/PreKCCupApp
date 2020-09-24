.PHONY: test
test:
	flutter test

build_web: test
	flutter build web

deploy_web: test build_web
	firebase deploy

