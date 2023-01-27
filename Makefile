.POSIX:

LDLIBS = -m -lSDL2 -lSDL2_ttf

# Windows \
!if 1 # \
EXEEXT=.exe # \
LDLIBS=SDL2.lib SDL2_ttf.lib # \
!endif

all: st$(EXEEXT)

st$(EXEEXT): src/st.c
	$(CC) -o $@ $(CPPFLAGS) $(CFLAGS) main.c $(LDLIBS) $(LDFLAGS)
