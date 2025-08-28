<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Address</title>
<%@include file="all_components/allCss.jsp"%>
<style>
    body {
        background-color: #f8f9fa;
        font-family: Arial, sans-serif;
    }
    .address-container {
        max-width: 550px;
        margin: 60px auto;
        padding: 25px;
        background: #fff;
        border-radius: 12px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    }
    .address-container h3 {
        text-align: center;
        margin-bottom: 25px;
        color: #28a745;
        font-weight: bold;
    }
    .form-control {
        border-radius: 8px;
    }
    .btn-submit {
        background: #ffc107;
        border: none;
        padding: 10px;
        width: 100%;
        border-radius: 8px;
        font-weight: bold;
        transition: 0.3s;
    }
    .btn-submit:hover {
        background: #e0a800;
        transform: scale(1.03);
    }
</style>
</head>
<body>
<%@include file="all_components/navbar.jsp"%>

<div class="container">
    <div class="address-container">
        <h3>Add Address</h3>
        <form>
            <div class="row mb-3">
                <div class="col-md-6">
                    <label class="form-label">Address*</label>
                    <input type="text" class="form-control" placeholder="Enter address" required>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Landmark</label>
                    <input type="text" class="form-control" placeholder="Enter landmark" required>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-4">
                    <label class="form-label">City*</label>
                    <input type="text" class="form-control" placeholder="Enter city" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">State*</label>
                    <input type="text" class="form-control" placeholder="Enter state" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label">Zip*</label>
                    <input type="text" class="form-control" placeholder="Enter zip code" required>
                </div>
            </div>

            <button type="submit" class="btn-submit">Add Address</button>
        </form>
    </div>
</div>

</body>
</html>
