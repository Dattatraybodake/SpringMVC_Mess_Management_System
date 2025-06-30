<h1>🍽️ Mess Management System</h1>

<p><strong>Online Live Project:</strong> <a href="[http://mealndserv.i](https://mealndserv.in/)n" target="_blank">http://mealndserv.in</a></p>

<hr>

<h2>📖 About the Project</h2>
<p>
The Mess Management System is a web-based mini-project designed to efficiently handle day-to-day operations in a hostel or institutional mess. Built using Java, JDBC, and Servlets, this system provides both administrative and user-level functionalities to automate processes such as meal booking, monthly billing, inventory tracking, and staff management.
</p>
<p>
It offers a user-friendly interface for mess administrators to manage students, track attendance, generate bills, and maintain food inventory records. Students or users can register, log in, view menus, and check their meal history and dues.
</p>

<h2>🎯 Purpose of the Project</h2>
<p>
To digitize and streamline the operations of a hostel or institutional mess by managing student data, meal bookings, attendance, billing, and inventory efficiently. This project aims to reduce manual work, improve transparency, and ensure accurate meal tracking and cost management through an easy-to-use web-based system.
</p>

<h2>📦 Project Modules</h2>

<ul>
  <li><strong>Employee Module</strong>
    <ul>
      <li>Employee Details Added</li>
      <li>Employee View</li>
      <li>Employee Deleted</li>
      <li>Update Employee</li>
      <li>Search Employee</li>
    </ul>
  </li>
  <li><strong>Customer Module</strong>
    <ul>
      <li>Customer Added</li>
      <li>Customer Viewed</li>
      <li>Customer Searched</li>
      <li>Customer Deleted</li>
      <li>Update Customer</li>
    </ul>
  </li>
  <li><strong>Category Module</strong>
    <ul>
      <li>Category Added</li>
      <li>Category Viewed</li>
    </ul>
  </li>
  <li><strong>Product Module</strong>
    <ul>
      <li>Product Added</li>
      <li>Product View Page</li>
      <li>Product Deleted</li>
      <li>View Product</li>
      <li>Category List</li>
    </ul>
  </li>
  <li><strong>Billing Module</strong>
    <ul>
      <li>Create Bill JSP Page</li>
      <li>Save Orders on View Bill Page</li>
      <li>View Bill Action</li>
    </ul>
  </li>
</ul>

<h2>🔐 User Roles and Access</h2>

<ul>
  <li><strong>Admin Functionalities</strong>
    <ul>
      <li>Register as Admin</li>
      <li>Login as Admin</li>
      <li>Create New Employee Registrations</li>
      <li>Assign Employee Details Manually</li>
      <li>View All Customers</li>
      <li>View All Categories</li>
      <li>View All Products</li>
      <li>View All Orders/Bills</li>
    </ul>
  </li>
  <li><strong>Employee Functionalities</strong>
    <ul>
      <li>Login using Admin-provided credentials</li>
      <li>Add New Customers</li>
      <li>Add New Categories</li>
      <li>Add New Products</li>
      <li>Add New Orders</li>
    </ul>
  </li>
</ul>

<h2>🛠️ Technologies Used</h2>
<ul>
  <li>Java (Servlets)</li>
  <li>JDBC</li>
  <li>MySQL Database</li>
  <li>JSP/HTML/CSS</li>
  <li>JavaScript (for validation – under development)</li>
</ul>

<h2>💻 Software and Tools Required</h2>
<ul>
  <li>Git and GitHub Account</li>
  <li>Java JDK 8+</li>
  <li>Eclipse EE IDE</li>
  <li>Apache Maven</li>
  <li>Tomcat v8.0+</li>
  <li>MySQL Server</li>
  <li>MySQL Workbench (optional)</li>
</ul>

<h2>📂 Dummy Database Initialization</h2>
<ol>
  <li>Open MySQL Command Prompt or MySQL Workbench</li>
  <li>Login to the MySQL Workbench (enter username/password)</li>
  <li>Select all queries in the SQL file and run them</li>
</ol>

<h2>🚀 Importing & Running the Project with Eclipse EE</h2>
<ol>
  <li>Open Eclipse EE IDE</li>
  <li>
    File <strong>Next step:</strong> Import <strong>Next step:</strong> Git <strong>Next step:</strong> Projects from Git <strong>Next step:</strong> Clone URI <strong>Next step:</strong> Use:
    <br>
    <code>https://github.com/Dattatraybodake/SpringMVC_Mess_Management_System.git</code>
    <br>
    <strong>Next step:</strong> Select <strong>master</strong> branch <strong>Next step:</strong> Finish
  </li>
  <li>Update database config in <code>src/main/java/org.mvcproject.config</code></li>
  <li>Right-click project <strong>Next step:</strong> Run As <strong>Next step:</strong> Maven Build <strong>Next step:</strong> In the Goals field enter: <code>clean install</code> <strong>Next step:</strong> Run</li>
  <li>Update <code>pom.xml</code> dependencies if required</li>
  <li>Fix any library errors <strong>Next step:</strong> Build Path <strong>Next step:</strong> Configure Build Path</li>
  <li>Configure Tomcat v10.0.1 if not already done</li>
  <li>Run project on server and open <code>http://localhost:8080/onlinebookstore/</code></li>
  <li>Register as user (admin/worker) to start using the application</li>
</ol>


<h2>❓ FAQ</h2>

<p><strong>Q1: Unable to Connect to Database?</strong></p>
<p>Check MySQL installation and DB credentials in <code>application.properties</code>. Try Maven clean install, update project, and restart.</p>

<p><strong>Q2: Getting 404 (Page Not Found)?</strong></p>
<p>Update Project Facets: Dynamic Web Module: 5.0, Java: 17. Also, apply the runtime as Apache Tomcat 10.0.1.</p>

<hr>

<p><em>"Suggestions and project improvement ideas are welcomed!"</em></p>
<p><strong>Thanks a lot,</strong><br>
Project Leader<br>
Dattatray Bodake</p>
