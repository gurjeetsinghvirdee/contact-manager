import std.stdio;
import std.file;
import std.algorithm;
import std.string;

struct Contact {
    string name;
    string phone;

    string toString() const {
        return name ~ ", " ~ phone;
    }
}

class ContactManager {
    Contact[] contacts;

    void addContact(string name, string phone) {
        contacts ~= Contact(name, phone);
        writeln("Contact added: ", name, ", ", phone);
    }

    void displayContacts() {
        if (contacts.length == 0) {
            writeln("No contacts to display.");
            return;
        }

        writeln("Contact List:");
        foreach (contact; contacts) {
            writeln(contact.toString());
        }
    }

    void saveToFile(string fileName) {
        if (contacts.length == 0) {
            writeln("No contacts to save.");
            return;
        }

        string content = contacts.map!(c => c.toString).join("\n");
        std.file.write(fileName, content); // Explicitly use std.file.write
        writeln("Contacts saved to file: ", fileName);
    }
}

void main() {
    ContactManager manager = new ContactManager();
    string fileName = "contacts.txt";

    while (true) {
        writeln("\n--- Contact Manager ---");
        writeln("1. Add Contact");
        writeln("2. Display Contacts");
        writeln("3. Save to File");
        writeln("4. Exit");
        write("Enter your choice: ");
        string choice = readln().strip(); // Use std.string.strip to clean input

        switch (choice) {
            case "1":
                writeln("Enter Name:");
                string name = readln().strip();
                writeln("Enter Phone Number:");
                string phone = readln().strip();
                manager.addContact(name, phone);
                break;

            case "2":
                manager.displayContacts();
                break;

            case "3":
                manager.saveToFile(fileName);
                break;

            case "4":
                writeln("Exiting... Goodbye!");
                return;

            default:
                writeln("Invalid choice. Please try again.");
                break;
        }
    }
}