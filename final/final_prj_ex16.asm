.eqv IN_ADDRESS_HEXA_KEYBOARD  0xFFFF0012  #Input addresss for the keyboard (Memory-mapped I/O)
.eqv OUT_ADDRESS_HEXA_KEYBOARD 0xFFFF0014  #Output address for the keyboard (Memory-mapped I/O)

.data
key_map: # Key to map for select song (1-4) or pause (0)
    .word 0x21, song1       # Key 1 -> Song 1
    .word 0x41, song2       # Key 2 -> Song 2
    .word 0x81, song3       # Key 3 -> Song 3
    .word 0x12, song4       # Key 4 -> Song 4
    .word 0x11, pause_song  # Key 0 -> Pause
    .word 0x00               # End of the key map
pause_song:

song1: # Song data : [Pitch, Duration , Instrument Type, Volume]
    # Happy birthday
    .word 60, 500, 0, 100    # C4 (Middle C) - "Happy"
	.word 60, 500, 0, 100    # C4 - "Birthday"
	.word 62, 1000, 0, 100   # D4 - "To"
	.word 60, 1000, 0, 100   # C4 - "You"
	.word 65, 1000, 0, 100   # F4 - "Happy"
	.word 64, 2000, 0, 100   # E4 - "Birthday"
	
	.word 60, 500, 0, 100    # C4 - "Happy"
	.word 60, 500, 0, 100    # C4 - "Birthday"
	.word 62, 1000, 0, 100   # D4 - "To"
	.word 60, 1000, 0, 100   # C4 - "You"
	.word 67, 1000, 0, 100   # G4 - "Happy"
	.word 65, 2000, 0, 100   # F4 - "Birthday"
	
	.word 60, 500, 0, 100    # C4 - "Happy"
	.word 60, 500, 0, 100    # C4 - "Birthday"
	.word 72, 1000, 0, 100   # C5 - "Dear"
	.word 69, 1000, 0, 100   # D4
	.word 65, 1000, 0, 100   # F4 - "Happy"
	.word 64, 1000, 0, 100   # E4 - "Birthday"
	.word 62, 2000, 0, 100   # D4 - "To You"
	.word 0,0,0 ,0  # End of the song

song2: # Jingle Belles
    .word 76, 500, 0, 100    # E5
    .word 76, 500, 0, 100    # E5
    .word 76, 1000, 0, 100   # E5
    .word 76, 500, 0, 100    # E5
    .word 76, 500, 0, 100    # E5
    .word 76, 1000, 0, 100   # E5
    .word 76, 500, 0, 100    # E5
    .word 79, 500, 0, 100    # G5
    .word 72, 500, 0, 100    # C5
    .word 74, 500, 0, 100    # D5
    .word 76, 1000, 0, 100   # E5

    # Oh what fun it is to ride in a one-horse open sleigh
    .word 77, 500, 0, 100    # F5
    .word 77, 500, 0, 100    # F5
    .word 77, 500, 0, 100    # F5
    .word 77, 500, 0, 100    # F5
    .word 76, 500, 0, 100    # E5
    .word 76, 500, 0, 100    # E5
    .word 76, 1000, 0, 100   # E5

    # Refrain
    .word 76, 500, 0, 100    # E5
    .word 74, 500, 0, 100    # D5
    .word 74, 500, 0, 100    # D5
    .word 76, 500, 0, 100    # E5
    .word 74, 500, 0, 100    # D5
    .word 77, 1000, 0, 100   # F5
    .word 76, 500, 0, 100    # E5
    .word 72, 500, 0, 100    # C5
    .word 72, 500, 0, 100    # C5
    .word 74, 500, 0, 100    # D5
    .word 72, 500, 0, 100    # C5
    .word 76, 1000, 0, 100   # E5
    .word 0, 0, 0, 0           # End of song

song3: #Little Star
    # Twinkle, Twinkle, Little Star
    .word 72, 500, 0, 100    # C5
    .word 72, 500, 0, 100    # C5
    .word 79, 500, 0, 100    # G5
    .word 79, 500, 0, 100    # G5
    .word 81, 500, 0, 100    # A5
    .word 81, 500, 0, 100    # A5
    .word 79, 1000, 0, 100   # G5

    # How I wonder what you are
    .word 77, 500, 0, 100    # F5
    .word 77, 500, 0, 100    # F5
    .word 76, 500, 0, 100    # E5
    .word 76, 500, 0, 100    # E5
    .word 74, 500, 0, 100    # D5
    .word 74, 500, 0, 100    # D5
    .word 72, 1000, 0, 100   # C5

    # Up above the world so high
    .word 79, 500, 0, 100    # G5
    .word 79, 500, 0, 100    # G5
    .word 77, 500, 0, 100    # F5
    .word 77, 500, 0, 100    # F5
    .word 76, 500, 0, 100    # E5
    .word 76, 500, 0, 100    # E5
    .word 74, 1000, 0, 100   # D5

    # Like a diamond in the sky
    .word 79, 500, 0, 100    # G5
    .word 79, 500, 0, 100    # G5
    .word 77, 500, 0, 100    # F5
    .word 77, 500, 0, 100    # F5
    .word 76, 500, 0, 100    # E5
    .word 76, 500, 0, 100    # E5
    .word 74, 1000, 0, 100   # D5
    .word 0, 0, 0, 0           # End of song data

song4: # Happy New Year (English folk song)
    # Opening melody - "Happy New Year, Happy New Year"
    .word 72, 500, 0, 100    # C5
    .word 74, 500, 0, 100    # D5
    .word 76, 1000, 0, 100   # E5
    .word 74, 500, 0, 100    # D5
    .word 72, 1000, 0, 100   # C5

    # Second line - "May we all have a vision now and then"
    .word 74, 500, 0, 100    # D5
    .word 76, 500, 0, 100    # E5
    .word 77, 1000, 0, 100   # F5
    .word 76, 500, 0, 100    # E5
    .word 74, 1000, 0, 100   # D5

    # Chorus - "Of a world where every neighbor is a friend"
    .word 76, 500, 0, 100    # E5
    .word 79, 500, 0, 100    # G5
    .word 77, 1000, 0, 100   # F5
    .word 76, 500, 0, 100    # E5
    .word 74, 1000, 0, 100   # D5

    # Repeat melody
    .word 72, 500, 0, 100    # C5
    .word 74, 500, 0, 100    # D5
    .word 76, 1000, 0, 100   # E5
    .word 74, 500, 0, 100    # D5
    .word 72, 1000, 0, 100   # C5
    .word 0, 0, 0, 0           # End of song data

error_msg: .asciz "Invalid key pressed. Please press 0-4 to select a song or pause.\n" # Error message for invalid key
pause_msg: .asciz "Song da paused\n" # Message for pausing the song

.text
.global main

main:
    li s1, IN_ADDRESS_HEXA_KEYBOARD # Load the input address for the keyboard
    li s2, OUT_ADDRESS_HEXA_KEYBOARD # Load the output address for the keyboard
    li t3, 0x01 #Set initial bit for key press checking (Start from row 1)

polling: 
    sb t3, 0(s1) # Write the polling bit to the input address
    lbu a0, 0(s2) # Read the key press from the output address
    beq a0, zero, next_row # If no key is pressed, move to the next row
    li t1, 0x11
    beq a0, t1, pause_music # If key 0 is pressed, pause the song
    jal ra, find_song  # jump to find_song subroutine to find corresponding song
    beq a0, zero, invalid_key # If the key is not found, print an error message
    jal ra, play_song # Play the song

    li a0, 400 # Delay for 400ms
    li a7, 32
    ecall

next_row:
    slli t3, t3, 1 # Move to the next row (shift bit to check the next key)
    li t4, 0x10 # Check if all rows have been checked
    bne t3, t4, polling # If not, continue polling
    li t3, 0x01 # Reset bit polling to check from the start
    j polling # Continue polling

pause_music:
   li a7, 4     # Print the pause message
   la a0, pause_msg
   ecall
   
    li a0, 1000 # Delay for 500ms
    li a7, 32
    ecall 
   j polling

invalid_key:
    li a7, 4 # Print the error message
    la a0, error_msg
    ecall
    
    li a0, 1000 # Delay for 500ms
    li a7, 32
    ecall 
    j polling # REturn to polling for new input

find_song:
    la t0, key_map # Load the address of key map
find_song_loop:
    lw t1, 0(t0) # Load the key from the key map
    beq t1, zero, not_found # If the key is not found, return 0 
    bne a0, t1, next_entry # If the key is not found, jump to next_entry
    lw a0, 4(t0) # Load the address of the song if match
    jr ra

next_entry:
    addi t0, t0, 8 # Move to the next entry in the key map
    j find_song_loop
not_found:
    li a0, 0 # Return 0 if the key is not found
    jr ra

play_song:
    mv t0, a0 # Load song data address
play_song_loop:
    lbu t1, 0(s2) # Check if the key is still pressed (if not, stop)
    beq t1, zero, return # if no key is pressed, exit

    lw t1, 0(t0) # Get the pitch of the current note
    beq t1, zero, return # If the pitch is 0, the song has ended

    lw a0,0(t0) # Load the pitch
    lw a1,4(t0) # Load the duration
    lw a2,8(t0) # Load the instrument type
    lw a3,12(t0) # Load the volume

    li a7, 31 # System call for playing the note
    ecall

    addi t0, t0, 16 # Move to the next note
    j play_song_loop

return:
    jr ra
