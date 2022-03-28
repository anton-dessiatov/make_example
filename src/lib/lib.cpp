#include "lib.h"

const char* get_message() {
#ifdef MESSAGE_DEBUG
    return "Debug message";
#else
    return "Release message";
#endif
}
