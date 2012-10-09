
install:
	@ make install-usrlocal || make install-home

install-home:
	@ test -d ~/bin && ln -s $(PWD)/bin/rld ~/bin/ && \
		echo "rld command symlink installed at ~/bin"

install-usrlocal:
	@ test -w /usr/local/bin && ln -s $(PWD)/bin/rld /usr/local/bin/ && \
		echo "rld command symlink installed at /usr/local/bin"

uninstall:
	@ 	 ( test -h ~/bin/rld && rm ~/bin/rld ) \
		;  ( test -h /usr/local/bin/rld && rm /usr/local/bin/rld ) \
		|| true
	@ echo "all rld command symlinks removed"
