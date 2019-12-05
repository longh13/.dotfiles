.PHONY: install installdev

stow = cd config && stow -v -t ~

install:
	xargs -d '\n' -a packages/package.list yay --noconfirm --needed -S

installdev: install
	xargs -d '\n' -a packages/dev.list yay --noconfirm --needed -S
