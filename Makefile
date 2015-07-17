SOURCES=square.png title_logo_dark.png title_logo_light.png title_logo_white.png
OBJS=$(SOURCES:.png=)
PROC=convert
OUTPUTDIR=sizes

all: $(SOURCES) $(OBJS)

outputdir:
	rm -rf $(OUTPUTDIR)
	mkdir $(OUTPUTDIR)

$(OBJS): outputdir
	echo $@
	$(PROC) -resize x500 $@.png $(OUTPUTDIR)/$@_lg.png
	$(PROC) -resize x250 $@.png $(OUTPUTDIR)/$@_md.png
	$(PROC) -resize x100 $@.png $(OUTPUTDIR)/$@_sm.png
	$(PROC) -resize x50  $@.png $(OUTPUTDIR)/$@_xs.png

