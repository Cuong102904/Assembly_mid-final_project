.data 
    str: .space 100
.text
 main:
    la a0, str               # Load address of str into a0
    li a7, 8                 # syscall for read_string
    li a1, 100               # Max input length
    ecall                    # Call syscall to read string
    
    la t0, str               # Load address of the string
    lb t1, 0(t0)             # Load the first character of the string
    li t2, 32                # Value for ASCII case conversion
    
    li t6, 'a'		     # Idea: first we check the first element that is uper or not
    bge t1, t6, check_upper
    
    j main_loop
   
 check_upper:
  li t6, 'z'
  ble t1, t6, convert_upper
 
 main_loop:
    addi t0,t0,1	    # Move to the next character
    lb t1,0(t0)		    # Load the next character
    li t5 ' '
    li t4 '\n'
    li t6, 'A'
    beq t1, t4, done        # End of string check
    beq t1, t5, space_found # If found the space then go to space found and addi to 1 then check
    
    bge t1,t6, check_lowercase # Check this element (không phải chữ cái đầu tiên sau dấu cách) is lowercase or not.
    j main_loop
  
 
space_found:
    addi t0,t0,1
    lb t1, 0(t0)
    li t6, 'a'
    bge t1, t6, check_upper
   j main_loop
 
 convert_upper:
    sub t1, t1, t2           # Convert to uppercase
    sb t1, 0(t0)             # Store back in str
    j main_loop

check_lowercase:
   li t6, 'Z'
   ble t1, t6, convert_to_lower
   j main_loop

convert_to_lower:
    add t1, t1, t2           # Convert to lowercase
    sb t1, 0(t0)             # Store back in str
    j main_loop 
    
 done:
    # Print the result
    la a0, str               # Load address of str into a0 for print_string
    li a7, 4                 # syscall for print_string in RARS
    ecall                    # Call syscall to print the string

    # Exit the program
    li a7, 10                # syscall for exit in RARS
    ecall
