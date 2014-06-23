SRCDIRS = `find * -prune\
	  -type d 	\
	  ! -name CVS	\
          ! -name knime-modules \
          ! -name build-* \
	  ! -name .` knime-modules
