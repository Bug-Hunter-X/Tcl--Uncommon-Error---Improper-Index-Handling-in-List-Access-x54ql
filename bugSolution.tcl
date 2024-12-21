proc get_element {list index} { 
  if {$index < 0 || $index >= [llength $list]} { 
    return -code error "Index out of range" 
  } 
  return [lindex $list $index] 
} 

# Example usage with error handling 
set mylist {a b c} 

if {[catch {get_element $mylist 3} result]} { 
  puts "Error: $result" 
} else { 
  puts "Element: [get_element $mylist 1]" 
}

#More robust solution using try-catch
proc get_element_robust {list index} { 
    try { 
        if {$index < 0 || $index >= [llength $list]} { 
            error "Index out of range" 
        } 
        return [lindex $list $index] 
    } on error {msg} { 
        return -code error $msg 
    } 
} 