static const char *background_color = "#1A1826";
static const char *border_color = "#F5C2E7";
static const char *font_color = "#D9E0EE";
static const char *font_pattern = "DejaVuSansMono:size=9";
static const unsigned line_spacing = 10;
static const unsigned int padding = 15;

static const unsigned int width = 250;
static const unsigned int border_size = 2;
static const unsigned int pos_x = 20;
static const unsigned int pos_y = 50;

enum corners { TOP_LEFT, TOP_RIGHT, BOTTOM_LEFT, BOTTOM_RIGHT };
enum corners corner = TOP_RIGHT;

static const unsigned int duration = 3; /* in seconds */

#define DISMISS_BUTTON Button1
#define ACTION_BUTTON Button3
