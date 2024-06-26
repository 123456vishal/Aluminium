<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Research and Development</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Include your custom CSS if needed -->
    <style>
        /* Add your custom CSS styles here */
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Aluminium Engineering</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Material.jsp">Material Selection and Consultation</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Fabrication.jsp">Fabrication and Manufacturing</a>
                    </li>
                    <!-- Add more navbar items as needed -->
                </ul>
            </div>
        </div>
    </nav>
    
    <!-- Main content -->
    <div class="container mt-5">
        <h1 class="text-center mb-4">Research and Development</h1>
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <!-- Information about research and development -->
                <p>
                    Research and development play a crucial role in our company's innovation process. We continuously explore new applications, processes, and technologies related to aluminium engineering.
                </p>
                <p>
                    To gain insights into the development of aluminium, watch the video below:
                </p>
                <!-- Embed YouTube video -->
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/pt2HEQ2QPIo" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Footer -->
    <footer class="bg-dark text-white py-4">
        <div class="container text-center">
            &copy; 2024 Aluminium engineering. All Rights Reserved.
        </div>
    </footer>

    <!-- Include Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
