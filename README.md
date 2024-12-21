# Tcl Uncommon Error: List Index Out of Bounds

This repository demonstrates an uncommon error in Tcl related to accessing list elements by index.  The provided `bug.tcl` script shows a procedure that does not handle out-of-bounds index access correctly, potentially leading to unexpected behavior or crashes.  `bugSolution.tcl` provides a corrected version with improved error handling.

The issue is particularly subtle because it doesn't always manifest in obvious ways, depending on the Tcl interpreter and the surrounding code.  A simple index check avoids this.