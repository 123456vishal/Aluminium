<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <title>AERF</title>
    <style>
   #mobileContainer {
    display: flex;
    width: 100%;
}

#countryCode {
    width: 18%;
    margin-right: 10px;
}

#mobileNumber {
    width: 40%;
    height: 30px;
}

        body {
            font-family: Arial, sans-serif;
            background-color: grey; 
            margin: 0;
            padding: 0;
        }
        form {
            width: 50%;
            margin: auto;
            background-color: navy blue; 
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
        }
        h2 {
            text-align: center;
        }
        h3 {
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"],
        input[type="email"],
        select,
        textarea {
            width: 60%;
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="file"] {
            margin-top: 10px;
        }
        input[type="submit"],
        input[type="reset"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 15px;
            margin-right: 280px; 
        }
        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #45a049;
        }

        /* Style for radio buttons in a single row */
        .radio-container {
            display: flex;
            align-items: center;
        }

        .radio-container input[type="radio"] {
            margin-right: 10px;
            margin-bottom:10px; 
        }
    </style>
</head>
<body>
    <h2>ENGINEER REGISTRATION FORM</h2>
    <h3>इंजीनियर पंजीकरण फ़ॉर्म</h3>
    <form action="RegServlet">
       <label for="firstName">पहला नाम (First Name):</label>
<input type="text" id="firstName" name="firstName" placeholder="Enter your first name" required>

<label for="middleName">मध्य नाम (Middle Name):</label>
<input type="text" id="middleName" name="middleName" placeholder="Enter your middle name">

<label for="lastName">अंतिम नाम (Last Name):</label>
<input type="text" id="lastName" name="lastName" placeholder="Enter your last name" required>

<label for="fatherName">पिता का नाम (Father's Name):</label>
<input type="text" id="fatherName" name="fatherName" placeholder="Enter your father's name" required>

<label for="motherName">माता का नाम (Mother's Name):</label>
<input type="text" id="motherName" name="motherName" placeholder="Enter your mother's name" required>

<label for="mobileNumber">मोबाइल नंबर (Mobile Number):</label>
<div id="mobileContainer">
    <select id="countryCode" name="countryCode" required>
        <option value="">Country Code</option>
        <option value="+1">+1 (अमेरिका / USA)</option>
<option value="+2">+2 (अंगुइला / Anguilla)</option>
<option value="+3">+3 (बर्मूडा / Bermuda)</option>
<option value="+4">+4 (बहामा / Bahamas)</option>
<option value="+5">+5 (कनाडा / Canada)</option>
<option value="+6">+6 (बहरीन / Bahrain)</option>
<option value="+7">+7 (अलास्का / Alaska)</option>
<option value="+8">+8 (यूक्रेन / Ukraine)</option>
<option value="+9">+9 (रूस / Russia)</option>
<option value="+10">+10 (अफ़गानिस्तान / Afghanistan)</option>
<option value="+11">+11 (अमेरिका वर्जिन टापू / American Samoa)</option>
<option value="+12">+12 (किरिबाती / Kiribati)</option>
<option value="+13">+13 (फ़िजी / Fiji)</option>
<option value="+14">+14 (तोंगा / Tonga)</option>
<option value="+15">+15 (सामोआ / Samoa)</option>
<option value="+16">+16 (माइक्रोनेशिया / Micronesia)</option>
<option value="+17">+17 (मार्शल टापू / Marshall Islands)</option>
<option value="+18">+18 (पालाऊ / Palau)</option>
<option value="+19">+19 (कुक टापू / Cook Islands)</option>
<option value="+20">+20 (न्यूज़ीलैंड / New Zealand)</option>
<option value="+21">+21 (पापुआ न्यू गिनी / Papua New Guinea)</option>
<option value="+22">+22 (फ़िलिपींस / Philippines)</option>
<option value="+23">+23 (अंगोला / Angola)</option>
<option value="+24">+24 (बांग्लादेश / Bangladesh)</option>
<option value="+25">+25 (बाहरैन / Bahrain)</option>
<option value="+26">+26 (बयरूट / Beirut)</option>
<option value="+27">+27 (ब्रुनेई दारुस्सलाम / Brunei Darussalam)</option>
<option value="+28">+28 (भूटान / Bhutan)</option>
<option value="+29">+29 (ब्रिटेन / Britain)</option>
<option value="+30">+30 (बेल्जियम / Belgium)</option>
<option value="+31">+31 (बल्गारिया / Bulgaria)</option>
<option value="+32">+32 (ब्राज़ील / Brazil)</option>
<option value="+33">+33 (कोलंबिया / Colombia)</option>
<option value="+34">+34 (क्रोएशिया / Croatia)</option>
<option value="+35">+35 (क्यूबा / Cuba)</option>
<option value="+36">+36 (काइरो / Cairo)</option>
<option value="+37">+37 (कोमोरो / Comoros)</option>
<option value="+38">+38 (चिली / Chile)</option>
<option value="+39">+39 (कोस्टा रिका / Costa Rica)</option>
<option value="+40">+40 (सीप्रस / Cyprus)</option>
<option value="+41">+41 (चेक गणराज्य / Czech Republic)</option>
<option value="+42">+42 (डेनमार्क / Denmark)</option>
<option value="+43">+43 (जिबोटी / Djibouti)</option>
<option value="+44">+44 (डोमिनिकन गणराज्य / Dominican Republic)</option>
<option value="+45">+45 (अल्जीरिया / Algeria)</option>
<option value="+46">+46 (एफ्रिका / Africa)</option>
<option value="+47">+47 (अस्ट्रेलिया / Australia)</option>
<option value="+48">+48 (ओस्ट्रिया / Austria)</option>
<option value="+49">+49 (ऑस्ट्रेलिया / Australia)</option>
<option value="+50">+50 (आज़रबैजान / Azerbaijan)</option>
        <option value="+91">+91 (भारत / India)</option>
       
    </select>
    <input type="tel" id="mobileNumber" name="mobileNumber" placeholder="Enter your mobile number" required maxlength="10">
</div>
<br>

<label for="email">ईमेल आईडी (Email ID):</label>
<input type="email" id="email" name="email" placeholder="Enter your email address" required>

<label for="educationYear">शिक्षा वर्ष (Education Year):</label>
<select id="educationYear" name="educationYear" required>
    <option value="">Select Education Year</option>
    <% for (int year = 2000; year <= 2025; year++) { %>
        <option value="<%= year %>"><%= year %> </option>
    <% } %>
</select>

<label for="lastPassedClass">अंतिम पास वर्ष (Last Passed-out Year):</label>
<input type="text" id="lastPassedClass" name="lastPassedClass" placeholder="Enter your last passed-out class" required>

<label for="business">वर्तमान व्यवसाय (Present Business):</label>
<div class="radio-container">
    <input type="radio" id="student" name="occupation" value="student">
    <label for="student">Student</label>

    <input type="radio" id="labor" name="occupation" value="labor">
    <label for="labor">Labor</label>

    <input type="radio" id="govt" name="occupation" value="govt">
    <label for="govt">Government Employee</label>
    
    <input type="radio" id="other" name="occupation" value="other">
    <label for="other">Other</label>
</div>
<br>


<label for="address">पता (Address):</label>
<textarea id="address" name="address" rows="4" placeholder="Enter your address" required></textarea>

<label for="photo">तस्वीर चुनें (Select Photo):</label>
<input type="file" id="photo" name="photo" accept="image/*" required>
<br><br>
<input type="submit" value="Submit">

<input type="reset" value="Clear">
    </form>
</body>
</html>
