# SPDX-License-Identifier: GPL-2.0
TARGETS	:= example.png
all: $(TARGETS)
%.png: %.dot
	dot -Tpng $^ -o $@
