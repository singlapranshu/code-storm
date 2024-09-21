<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Form</title>
    <link rel="stylesheet" href="addProperties.css">
    <script defer src="addProperties.js"></script>
</head>
<body>
    <div class="container">
        <h1>Welcome to ${bankName} portal</h1>
        <h2>Customize Form</h2>
        <form id="customForm">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" class="form-input">
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-input">
            </div>

            <div class="form-group">
                <label for="image">Logo:</label>
                <div class="image-picker">
                    <input type="file" id="image" name="image" accept="image/*">
                    <img id="previewImage" alt="No image selected" class="hidden">
                </div>
               </div>

            <h3>Properties :</h3>
            <div id="propertiesContainer">
                <div class="property">
                    <input type="text" class="fieldName" name="fieldName">
                    <select class="dataType" name="dataType">
                        <option value="string">String</option>
                        <option value="number">Number</option>
                        <option value="boolean">Boolean</option>
                        <option value="object">Object</option>
                        <option value="array">Array</option>
                    </select>
                </div>
            </div>

            <button type="button" id="addPropertyButton" class="btn-add">+</button>

            <div class="form-actions">
                <button type="submit" id="submitButton" class="btn-submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>