.data
prompt_n: .asciz "Enter the number of elements: "
prompt_elements: .asciz "Enter the elements: "
result_pos: .asciz "Sum of positive numbers: "
result_neg: .asciz "Sum of negative numbers: "
arr: .space 400               # Allocate space for up to 100 integers (assuming max input size)

.text
main:
    li a7, 4                   # Syscall for print_string number of element
    la a0, prompt_n
    ecall

   
    li a7, 5                   # read int
    ecall
    mv t0, a0                  # t0 = n

    blez t0, exit              # Exit if n <= 0

    
    li a7, 4
    la a0, prompt_elements   # Syscall for print_string Enter the elements:
    ecall

    li s0, 0                   # s0 = posSum
    li s1, 0                   # s1 = negSum
    li t1, 0                   # t1 = index counter i

input_loop:
    bge t1, t0, sum_output     # If i >= n, go to output

    li a7, 5                  # Read integer element
    ecall

    # Calculate offset and store input in array
    la t2, arr                 # Load base address of array
    slli t3, t1, 2             # t3 = i * 4 (calculate offset)
    add t2, t2, t3             # t2 = arr + offset
    sw a0, 0(t2)               # Store the value in arr[i]
    
    # Check if the element is positive or negative
    bgtz a0, add_positive      # If element > 0, add to posSum
    bltz a0, add_negative      # If element < 0, add to negSum
    j next_element             # If element == 0, skip

add_positive:
    add s0, s0, a0             # posSum += element
    j next_element

add_negative:
    add s1, s1, a0             # negSum += element

next_element:
    addi t1, t1, 1             # Move to the next index (i++)
    j input_loop               # Repeat the loop


sum_output:
    # Print "Sum of positive numbers: "
    li a7, 4
    la a0, result_pos
    ecall

    # Print posSum
    mv a0, s0                  # Load posSum into a0 for printing
    li a7, 1                   # Syscall for print_int
    ecall

    # Print newline
    li a0, 10                  # Newline character (ASCII 10)
    li a7, 11                  # Syscall for print_char
    ecall

    # Print "Sum of negative numbers: "
    li a7, 4
    la a0, result_neg
    ecall

    # Print negSum
    mv a0, s1                  # Load negSum into a0 for printing
    li a7, 1                   # Syscall for print_int
    ecall

    # Print newline
    li a0, 10
    li a7, 11
    ecall

exit:
    li a7, 10                  # Exit syscall
    ecall
