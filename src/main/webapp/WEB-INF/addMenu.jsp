<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Shto ne Menu </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXn2x2gIR5Eg3P9b8Uqy6PVC2" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
        .card-body {
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
            padding: 0; /* Remove padding */
        }

        label {
            font-weight: bold;
            margin-bottom: 0.5rem; /* Adjust the margin as needed */
        }

        input[type="text"],
        select {
            width: 100%;
            max-width: 300px; /* Adjust the maximum width as needed */
            margin-bottom: 0px; /* Adjust the margin as needed */
        }

        .form-group label[for="type"] {
            font-weight: normal;
            font-size: 14px;
        }

        .container,
        .card {
            margin-bottom: 0; /* Remove the bottom margin */
        }

        .btn-primary {
            margin-top: 1px; /* Adjust the margin as needed */
        }
    </style>
</head>
<body>
<section class="vh-100" style="background-color: #6594ee;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col col-xl-10">
                <div class="card" style="border-radius: 1rem;">
                    <div class="row g-0">
                        <div class="col-md-6 col-lg-5 d-none d-md-block">
                            <img src="${pageContext.request.contextPath}img/gallery/1000_F_267683702_tKthQiQ9sqoDwT6BJGZrNB7Mfrf2AnHt.jpg"
                                 alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                        </div>
                        <div class="col-md-6 col-lg-7 d-flex align-items-center">
                            <div class="card-body  text-black">
                                <form:form action="/add-menu" modelAttribute="addMenu" method="post">
                                    <div class="d-flex align-items-center mb-3 pb-1">
                                        <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                                        <span class="h1 fw-bold mb-0">Shtoni nje pjate ne menu</span>
                                    </div>
                                    <div class="form-outline mb-4">
                                        <label for="dish" class="form-label">Emri i pjates:</label>
                                        <input type="text" class="form-control form-control-lg" id="dish" name="dish" required>
                                    </div>
                                    <div class="form-outline mb-4">
                                        <label for="ingredients" class="form-label">Perberesit:</label>
                                        <input type="text" class="form-control form-control-lg" id="ingredients" name="ingredients" required>
                                    </div>
                                    <div class="container additional-options">
                                        <div class="row">
                                            <div class="form-outline mb-4">
                                                <label for="selectOption" class="form-label">Lloji i pjates:</label>
                                                <select class="form-control" id="selectOption" name="type">
                                                    <option value="sushi">Sushi</option>
                                                    <option value="peshk">Peshk</option>
                                                    <option value="pica">Pica</option>
                                                    <option value="frutaDeti">Fruta Deti</option>
                                                </select>
                                            </div>
                                        </div>
                                    <div class="form-outline mb-4">
                                        <label for="price" class="form-label">Cmimi:</label>
                                        <input type="text" class="form-control form-control-lg" id="price" name="price" required>
                                    </div>
                                        <div>
                                            <label for="imageData">Image File:</label>
                                            <input type="file" id="imageData" name="imageData"/>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Ruaj</button>
                                </form:form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
</body>
</html>
