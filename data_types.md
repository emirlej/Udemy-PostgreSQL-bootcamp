# Learning how to create and manage tables 

## PostgreSQL supports these data types:
- boolean
- character
- number
- temportal, i.e. date and time related
- special types
- array

### Boolean:
- True/False
- Unknown value --> NULL is used
- Use 'boolean' or 'bool' to declare it
- 1, yes, y, t --> converted to True

### Character:
- A single character
- A fixed length: char(n). Get error if you have more chars. Will pad spaces if less.
- Variable length chars: varchar(n). You store up to n chars. No space padding.

### Number: 
- integers
    - **small integer** (smallint), 2-byte int in range(+/- 32768)
    - **integer** (int), 4-byte in range (+/- 214783648)
    - **serial** is the same as integer, except that PostgreSQL populates the value into column 
    automatically (similar to *AUTO_INCREMENT* attribute in other db systems)
- floating point numbers
    - **float(n)** is a floating-point number whose precision, at least n, up to max of 8 bytes.
    - **real** or **float8** is a double precision floating number, 8-bytes.
    - **numeric** or **numeric(p, s)** is a real number with p digits after the decimal point.
    numeric(p,) is the exact number.

### Temporal
- **date** stores date data
- **time** stores time data
- **timestamp** store both time and date
- **interval** stores the diff in timestamps
- **timestamptz** stores both timestamp and timezone data
