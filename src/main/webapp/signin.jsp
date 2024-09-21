<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank Information</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    margin: 20px;
    background-color: #f4f4f4; /* Light gray background */
}

.container {
    max-width: 600px;
    margin: auto;
    padding: 20px;
    border: 1px solid #e74c3c; /* HDFC red for the border */
    border-radius: 8px;
    background-color: #fff; /* White background for the container */
}

.bankName {
    margin-bottom: 15px;
    font-size: 18px; /* Adjust as needed */
    font-weight: bold;
    color: #e74c3c; /* HDFC red for the text */
}


.bankLogo {
    margin-bottom: 15px;
    text-align: center; /* Center the logo */
}

.themeFile {
    font-size: 16px; /* Adjust as needed */
    color: #555; /* Slightly lighter color */


}

    </style>
</head>
<body>
<h1>Welcome to ${bankName}</h1>
<div class="container">
    <div id="bankName" class="bankName">${bankName}</div>
    <img src="${pageContext.request.contextPath}/data/${bankName}-logo.png" alt="failed to load image" id="bankLogo" class="bankLogo"></src>
    
</div>
<div id="showStatus" >Connecting...</div>


<script>
    // Fetch bank informati from the backend
    function setDynamicLink() {
            var linkElement = document.createElement('link');
            linkElement.rel = 'stylesheet'; // Specify that this is a stylesheet
            linkElement.href = 'src/main/webapp/hdfc.css'; // Set the href from the variable
            document.head.appendChild(linkElement); // Append to the document head
        }

        // Call the function to set the link
        window.onload = setDynamicLink;
    
        
         fetch('')  // Adjust the URL to your backend API endpoint
        .then(response => {
            if (!response.ok) {
                document.getElementById('showStatus').textContent = `Network Error`;
            }
            document.getElementById('showStatus').textContent = `Connecting`;
        })
        .then(yamlText => {
			fetch('yamlFile.yml')
            // Parse the YAML text
            const data = jsyaml.load(yamlText);
            // Populate the divs with data from the parsed YAML
            document.getElementById('bankName').textContent = `Bank Name: ${data.bankName}`;
            document.getElementById('bankLogo').innerHTML = `<img src="${data.bankLogo}" alt="Bank Logo" style="max-width: 100%; height: auto;">`;
            document.getElementById('themeFile').textContent = `Theme File: ${data.themeFile}`;
        })
        .catch(error => {
            console.error('There was a problem with the fetch operation:', error);
        });
        