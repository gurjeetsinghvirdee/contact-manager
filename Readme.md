A simple console-based **Contact Manager** program written in the **D programming language**. This program allows users to manage a list of contacts, including adding, viewing, and saving contacts to a file.

### Features

1. Add Contacts
   - Add a new contact by providing a name and phone number.
  
2. Display Contacts
   - View all the saved contacts in the contact list.
3. Save Contacts to File
   - Save the contact list to a text file `contacts.txt` for future reference.

## Getting Started 

### Prerequisites
- D Programming Language Compiler (eg. **DMD**)
  
  Install DMD from [dlang.org](https://dlang.org/)

### Compilation 

To compile the program, use the following command in the terminal:

```bash
dmd ContactManager.d
```

### Running the Program

Run the compiled executable:

```bash
./ContactManager
```

## Usage

1. Run the program.
2. Choose an option from the menu:
   - **1**: Add a new contact.
   - **2**: Display all contacts.
   - **3**: Save contacts to a file.
   - **4**: Exit the program.
3. Follow the prompts for each option.

## Example Interaction

```mathematica
--- Contact Manager ---
1. Add Contact
2. Display Contacts
3. Save to File
4. Exit
Enter your choice: 1

Enter Name: 
John Doe
Enter Phone Number:
1234567890
Contact added: John Doe, 1234567890

--- Contact Manager ---
1. Add Contact
2. Display Contacts
3. Save to File
4. Exit
Enter your choice: 2

Contact List:
John Doe, 1234567890
```

## File Output

Contacts are saved to a text file name `contacts.txt`. Each contact is stored on a new line in the format:

```bash
Name, Phone
```

## Modules Used
- `std.stdio:`For input.output operations.
- `std.file`: For file handling.
- `std.string`: For string manipulation (e.g., stripping input).
- `std.algorithm`: For functional programming utilities.