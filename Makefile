all: clean build

clean:
	rm -rf ./build

build:
	mkdir ./build
	gcc ./switch_video.c -o ./build/switch_video
	gcc ./switch_usb.c -o ./build/kvm_switch_usb
	gcc ./pip_small.c -o ./build/kvm_pip_small
	gcc ./pip_big.c -o ./build/kvm_pip_big
	gcc ./pip_position.c -o ./build/kvm_pip_position
	sudo chown root:root ./build/*
	sudo chmod 4755 ./build/*

install:
	mv ./build/* /usr/local/bin/

shortcuts:
	mkdir -p /home/ben/.local/share/applications/ /home/ben/.local/share/icons
	cp ./shortcuts/*.desktop /home/ben/.local/share/applications/
	cp ./icons/* /home/ben/.local/share/icons/

.PHONY: shortcuts
