	  //if (((unsigned)(struct)->magic) != ((unsigned)(code))) return (code)
#define EXT2_CHECK_MAGIC(struct, code) \
	  if (((struct)->magic) != (code)) return (code)
