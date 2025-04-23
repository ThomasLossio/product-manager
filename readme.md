# 🛒 Product and Category Manager

A simple product and category registration app built with **Delphi 12.1 Community Edition** as part of a personal study roadmap.

## ✨ Features
- Add new category
- Add new product linked to a category
- Edit and delete records with confirmation
- Cancel changes
- Field validation (`Product Name` and `Category` are required)
- Lookup combo to select category in the product form
- Clean and intuitive UI using `TDBEdit`, `TDBLookupComboBox`, and `TDBGrid`
- Auto-generated ID using `GENERATOR` and `TRIGGER`

## 🖼️ Screenshot


## 🚀 How to Run
1. Open the project in **Delphi 12.1 Community Edition**
2. Open `uMain.pas`
3. Press `F9` to build and run
4. Register at least one category before adding products

## 📁 Project Structure
| File | Description |
|------|-------------|
| `uMain.pas` | Main form with navigation buttons |
| `uCategories.pas` | Category registration form |
| `uProducts.pas` | Product registration form with category lookup |
| `uDMMain.pas` | DataModule containing connection and datasets |
| `Database Structure.sql` | SQL script to create tables, generators, and triggers |

## 🗄️ Database
The full table, generator, and trigger structure is available in the file:
```
📄 Database Structure.sql
```

It contains SQL scripts for:
- `CATEGORIES` table and generator/trigger
- `PRODUCTS` table with foreign key to `CATEGORIES`
- Auto-increment logic via `GEN_ID`

## 📄 .gitignore Notes
This project ignores all temporary, compiled, and IDE-specific files:
- Executables (`*.exe`, `*.dcu`, etc.)
- Build folders (`Win32/Debug/`, etc.)
- Delphi IDE cache files (`*.identcache`, `*.dsk`, `__history/`, etc.)
- Embedded database files (`*.ib`, `*.gdb`, `*.fdb`)

Check `.gitignore` for more details.

## 🛠️ Requirements
- Delphi 12.1 Community Edition
- InterBase 2020 (default embedded version)

## 📃 License
MIT

---

Made with ☕, and a little bit of 🙃
