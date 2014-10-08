BUILD_DIR='_build/'
TIME=`date -Iseconds`
TEMPDIR='/tmp/'

build: sass 
	@echo -e "\nbuilding the webpage\n"
	#cd _assets/css/_sass/ && compass compile
	mynt gen -f $(BUILD_DIR)

sass: 
	sass --update ./_assets/css/_sass:./_assets/css --cache-location /tmp/sass-cache --trace --sourcemap=none 

deploy: build
	cd _build && git add -A && git ci -m "${TIME}" && git push origin master


serve: build 
	@ echo "Serving on port 8082"
	sass --watch ./_assets/css/_sass:./_assets/css --cache-location /tmp/sass-cache --trace --sourcemap=none & echo "$$!" > /tmp/cserve.pid
	@ sleep 2
	mynt watch -f $(BUILD_DIR) & echo "$$!" >> /tmp/cserve.pid
	@ sleep 2
	mynt serve -p 8082 $(BUILD_DIR) & echo "$$!" >> /tmp/cserve.pid

stop:
	@ for i in $$(cat /tmp/cserve.pid); do echo killing pid: $$i; kill $$i; done



