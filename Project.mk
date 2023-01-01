INCLUDES := $(subst :, ,$(INCDIR))
INCLUDEFILES := $(foreach incdir,$(INCLUDES),$(shell find $(incdir) -type f -name "*.h"))
INCLUDEFILES += $(wildcard *.h)

SFILES := $(foreach component,$(COMPONENTS),$(wildcard $(component)/$(ARCHITECTURE)/*.s))

DFILES := $(foreach component,$(COMPONENTS),$(wildcard $(component)/*.df)) \
			$(foreach component,$(COMPONENTS),$(wildcard $(component)/$(ARCHITECTURE)/*.df))

OBJ    := $(DFILES:.df=.$(ARCHITECTURE).$(CHKFRE).o)
SOBJ   := $(SFILES:.s=.$(ARCHITECTURE).$(CHKFRE).o)

ifndef EXECFILEMODE
	EXECFILEMODE := 493
endif

FULLOUTPUTFILE = $(BUILDROOT)/$(OUTPUTFILE).$(ARCHITECTURE).$(CHKFRE)

all: $(FULLOUTPUTFILE)

$(FULLOUTPUTFILE): $(OBJ) $(SOBJ)
	$(LNK) link $(LINKOPT) $(FULLOUTPUTFILE) $(PRELIBS) $(SOBJ) $(OBJ) $(LIBS) -d $(DYLIBS)

ifdef MOVEEXPR
	$(LNK) move $(FULLOUTPUTFILE) $(MOVEEXPR)
else
	$(LNK) move $(FULLOUTPUTFILE) mintia
endif

ifdef MKBINARY
	$(LNK) binary -nobss $(FULLOUTPUTFILE)
	echo "$(OUTPUTFILE) $(FULLOUTPUTFILE)" >> $(REPO)/DELTA
else
	$(LNK) istrip $(FULLOUTPUTFILE)
	echo "$(OUTPUTFILE) $(FULLOUTPUTFILE) $(EXECFILEMODE)" >> $(REPO)/DELTA
endif

%.$(ARCHITECTURE).$(CHKFRE).o: %.df $(INCLUDEFILES)
	$(DFC) $< $@ incdir=$(INCDIR) libdir=$(LIBDIR)

%.$(ARCHITECTURE).$(CHKFRE).o: %.s
	$(ASM) $< $@

cleanup:
	rm -f ${OBJ} ${SOBJ} $(FULLOUTPUTFILE)