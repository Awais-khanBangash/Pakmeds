# PakMeds 💊  
**Online Pharmacy Management System**

## 📌 Overview
PakMeds is a **Web-based Online E-Pharmacy Application** that allows customers to order medicines and healthcare products online.  
The system was developed as a Final Year Project (FYP) to address the lack of unified, user-friendly e-pharmacy platforms in Pakistan.  

PakMeds enables users to:  
- Save time and money  
- Maintain privacy while purchasing medicines  
- Order specific medicines not available in local shops  
- Compare products and prices online  
- Get home delivery with refund policy options  

---

## 🚀 Features
- **User Side**
  - Registration & Login  
  - Search medicines (By Name, Formula, Illness)  
  - Shopping cart and order placement  
  - Apply coupon codes for discounts  
  - Auto chat for unavailable products  

- **Admin Side**
  - Dashboard to manage orders, products, and users  
  - Category and Sub-category management  
  - Coupon management  
  - Product reviews and status updates  

---

## 🛠️ Technologies Used
- **Frontend:** HTML5, CSS3, JavaScript, Bootstrap4  
- **Backend:** PHP (server-side scripting)  
- **Database:** MySQL (Relational Database Management System)  
- **Server:** XAMPP (Apache + MySQL)  
- **Tools:** Notepad++, phpMyAdmin  

---

## 📂 Code Provenance (Credits & Acknowledgements)
This project was built using a combination of **original code** written by the authors and **third-party libraries/tools**:  

- **Bootstrap 4** (CSS framework) – [https://getbootstrap.com/](https://getbootstrap.com/)  
- **jQuery** (JavaScript library) – [https://jquery.com/](https://jquery.com/)  
- **XAMPP** (Apache + MySQL server stack) – [https://www.apachefriends.org/](https://www.apachefriends.org/)  
- **phpMyAdmin** (Database management tool) – [https://www.phpmyadmin.net/](https://www.phpmyadmin.net/)  
- Any external code snippets reused from online sources (e.g. StackOverflow, tutorials) are cited in project comments.  

No proprietary code has been used. All third-party libraries are **open source** and included under their respective licenses.  

---

## 📁 Project Structure
pakmeds/<br>
│── database/<br>
│ └── pakmeds.sql # Database file (included with project)<br>
│── src/<br>
│ ├── index.php # Home page<br>
│ ├── login.php # User login<br>
│ ├── register.php # User registration<br>
│ ├── cart.php # Shopping cart<br>
│ ├── order.php # Order placement<br>
│ ├── admin/ # Admin dashboard & management<br>
│ └── config.php # Database connection file<br>
│── assets/<br>
│ ├── css/ # Stylesheets<br>
│ ├── js/ # JavaScript files<br>
│ └── images/ # UI images & banners<br>
│── docs/<br>
│ └── Project_Report.pdf # Final Year Project report<br>
└── README.md # Documentation<br>


---

## ⚙️ Installation & Setup Instructions
Follow these steps to build and run the project locally:

1. **Clone Repository**
   ```bash
   git clone https://github.com/your-username/pakmeds.git
2. **Move Project Folder**
Copy the project folder into your XAMPP htdocs directory.

3. **Start Server**

Open XAMPP Control Panel

Start Apache and MySQL

4. **Setup Database**

Open http://localhost/phpmyadmin

Create a database named pakmeds

Import the pakmeds.sql file (provided inside the database/ folder of this repository)

✅ Note: The SQL file is included with the project code in this repository.

5. **Configure Database**

Open config.php file in the project

Update database credentials (if required)

6. **Run Application**
Open the browser and go to:
http://localhost/pakmeds

**🔑 Default Credentials**

Admin Panel:

Username: admin

Password: admin123

User Accounts: Create via the Register page

**✅ Testing**

The system has been tested with multiple approaches:

    Black Box Testing (functionality)

    White Box Testing (code logic)

    Validation Testing (meeting requirements)

    System Testing (integration & full workflow)

Test cases include: user signup, login, logout, product ordering, cart management, admin login, and coupon application.

**📖 Future Work**

    Mobile application (Android & iOS)

    More advanced search & filtering

    Better UI/UX with animations and responsive design

    Expanded area coverage & delivery tracking

**👨‍💻 Authors**

    Awais Khan Bangash

    Muhammad Shafi Ali Butt

Supervisor: **Asim Ullah Jan (Abasyn University Peshawar)**
