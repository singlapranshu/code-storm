<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Radio Button Form</title>
      <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400&display=swap" rel="stylesheet">
    
    
      <style>
        body {
          font-family: Arial, sans-serif;
          background-color: #f4f4f4;
          padding: 20px;
        }
        form {
          background-color: white;
          border-radius: 8px;
          box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
          padding: 20px;
          max-width: 400px;
          margin: auto; /* Center horizontally but not vertically */
        }
        h2 {
          text-align: center;
          color: #333;
        }
        label {
          margin-left: 8px;
          font-size: 16px;
        }
        input[type="submit"] {
          background-color: #28a745;
          color: white;
          border: none;
          border-radius: 4px;
          padding: 10px 15px;
          cursor: pointer;
          width: 100%;
          margin-top: 10px;
          font-size: 16px;
        }
        input[type="submit"]:hover {
          background-color: #218838;
        }
        .radio-group {
          margin-bottom: 15px;
        }
        #heading {
      font-family: 'Poppins', sans-serif;
      /* font-size: 16px; Adjust size as needed */
      color: #333; /* Text color */
    }
    input{
        font-family: 'Montserrat', sans-serif;
      font-size: 16px; /* Adjust size as needed */
      color: #333; /* Text color */
    }
    form {
      margin-top: 30px; /* Adjust the value as needed */
    }
    label[for="hdfc"]{
      color: #e74c3c; /* HDFC red */
        font-weight: bold;
    }
    
    label[for="dmi"]{
      color: blue; 
        font-weight: bold;
    }
    
      </style>
    </head>
    <body>
    
      <form action="/submit" method="POST">
        <h2 id="heading">Select your Bank</h2>
    
        <div class="radio-group">
            <!-- <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br> -->
          <!-- Radio Button 1: HDFC -->
          <!-- <label for="name"></label> -->
          <input type="radio" id="hdfc" name="name" value="HDFC" required>
          <label for="hdfc">HDFC</label><br>
    
          <!-- Radio Button 2: DMI -->
          <!-- <label for="name">Name:</label> -->
          <input type="radio" id="dmi" name="name" value="DMI">
          <label for="dmi">DMI</label><br>
        </div>
    
        <!-- Submit Button -->
        <input type="submit" value="Submit">
      </form>
      <form action="/addnewbank" method="POST">
        <input type="submit" value="Add New Bank">
        </form>
    
    </body>
    </html>