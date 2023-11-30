with open('first.txt', 'r') as input_file:
    lines = input_file.readlines()
    with open('i1.txt', 'wb') as output_file:  # Open the second file in binary write mode
        for i in lines:
            bin_txt = i.strip()  # Remove any leading/trailing whitespaces
            integer_value = int(bin_txt, 2)
            byte_data = integer_value.to_bytes(4, byteorder='big')
            output_file.write(byte_data)
