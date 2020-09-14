TARGET = cli4dexpf-done
SRC = cli4dexpf

# sed -ne '/^__api_/s/__api_\([[:alnum:]_]*\).*/\1/p' $(SRC)

$(TARGET) : $(SRC)
	@cmdlist=$$(grep '^__dexpf_' $(SRC) | sed -e s/__dexpf_// -e 's/ *(.*//' -e 's/_/-/g' ) ;\
	for cmd in $$cmdlist							;\
	do									\
		dst=$$(printf "dexpf-%s" $$cmd)					; \
		(set -x; ln -fs $(SRC) $$dst)					; \
	done
	@touch $@

clean :
	@find . -type l -delete
	rm -f $(TARGET)
