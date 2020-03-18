# SPDX-License-Identifier: GPL-2.0
TARGETS	:= example.png
TARGETS	+= iso20022.png
all: $(TARGETS)
%.png: %.dot
	dot -Tpng $^ -o $@
