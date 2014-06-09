SRCDIRS = `find * -prune\
	  -type d 	\
	  ! -name CVS	\
          ! -name knime-modules \
          ! -name build-knime-modules \
	  ! -name .` knime-modules
