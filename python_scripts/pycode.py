# Read hexadecimal data from file
with open('ANS.TXT', 'r') as file:
    hex_data = file.read().replace('\n', '')  # Read the entire file and remove any newline characters

# Convert hexadecimal string to list of integers
int_data = [int(byte, 16) for byte in hex_data.split()]

# Write the integers to a new file
with open('integers.txt', 'w') as file:
    for num in int_data:
        file.write(str(num) + '\n')  # Write each integer to a new line in the file

