/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int centered = 0;                    /* -c option; centers dmenu on screen */
static int min_width = 600;                    /* minimum width when centered */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"Mononoki Nerd Font:size=10"
};
static const char *prompt      = NULL;      /* -p option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#8ABEB7", "#282a36" },
	[SchemeSel] = { "#282a36", "#82aaff" },
	[SchemeSelHighlight] = { "#82aaff", "#282a36" },
	[SchemeNormHighlight] = { "#48B685", "#282a36" },
	[SchemeOut] = { "#1D1F21", "#81A2BE" },
	[SchemeMid] = { "#C5C8C6", "#CC6666" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;
static unsigned int lineheight = 22;         /* -h option; minimum height of a menu line     */

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

/* Size of the window border */
static unsigned int border_width = 0;  /* -bw option; to add border width */
