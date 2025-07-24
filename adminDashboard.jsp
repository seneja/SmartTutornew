<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard - Smarttutor</title>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: 'Montserrat', sans-serif;
    }

    body {
      display: flex;
      min-height: 100vh;
      background: linear-gradient(to right, #e2e2e2, #baa5e7);
    }

    .sidebar {
      width: 220px;
      background-color: #6646e4;
      color: white;
      padding: 1.5rem;
      flex-shrink: 0;
    }

    .sidebar h2 {
      font-size: 24px;
      margin-bottom: 2rem;
    }

    .sidebar nav a {
      display: block;
      margin: 1rem 0;
      color: white;
      text-decoration: none;
      font-weight: bold;
    }

    .sidebar nav a:hover {
      text-decoration: underline;
    }

    .topbar {
      width: 100%;
      padding: 1rem 2rem;
      background-color: #fff;
      border-bottom: 1px solid #ddd;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .topbar .admin-info {
      font-size: 20px;
      font-weight: 600;
      color: #6646e4;
    }

    .topbar .logout-btn {
      background-color: #090001;
      color: #fff;
      padding: 0.5rem 1rem;
      text-decoration: none;
      border-radius: 8px;
    }

    .content {
      flex-grow: 1;
      display: flex;
      flex-direction: column;
    }

    .container {
      padding: 2rem;
    }

    .search-refresh {
      display: flex;
      justify-content: flex-end;
      align-items: center;
      gap: 1rem;
      margin-bottom: 1.5rem;
    }

    .search-refresh input {
      padding: 0.5rem;
      width: 250px;
      border: 1px solid #ddd;
      border-radius: 8px;
    }

    .search-refresh .btn {
      background-color: #090001;
      color: #fff;
      padding: 0.5rem 1rem;
      text-decoration: none;
      border-radius: 8px;
    }

    h3 {
      margin-top: 2rem;
      margin-bottom: 0.5rem;
      color: #333;
    }

    .section-actions {
      margin: 0.5rem 0 1rem 0;
    }

    .section-actions .btn {
      background-color: #090001;
      color: #fff;
      padding: 0.5rem 1rem;
      text-decoration: none;
      border-radius: 8px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 1rem;
      background-color: white;
      border-radius: 8px;
      overflow: hidden;
    }

    .table-header th {
      text-align: left;
      padding: 0.75rem;
      background-color: #f0f0f0;
    }

    .table-row td {
      padding: 0.75rem;
      border-top: 1px solid #ddd;
    }

    .action-btn {
      margin-right: 1rem;
      font-size: 14px;
      text-decoration: none;
    }

    .text-blue-500 {
      color: #007bff;
    }

    .text-red-500 {
      color: #dc3545;
    }
  </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
  <h2>Smarttutor</h2>
  <nav>
    <a href="#">Dashboard</a>
    <a href="#">Reports</a>
    <a href="#">Settings</a>
  </nav>
</div>

<!-- Content Area -->
<div class="content">
  <!-- Topbar -->
  <div class="topbar">
    <div class="admin-info">
      Admin Management
    </div>
    <a href="${pageContext.request.contextPath}/logout" class="logout-btn">
      <i class="fas fa-sign-out-alt"></i> Logout
    </a>
  </div>

  <!-- Page Content -->
  <section class="container">

    <!-- Search and Refresh -->
    <div class="search-refresh">
      <input type="text" id="userSearch" placeholder="Search by username..." onkeyup="filterUsers()" />
      <a href="<%= request.getContextPath() %>/adminDashboard" class="btn">

      <i class="fas fa-sync-alt"></i> Refresh
      </a>
    </div>

    <!-- Students -->
    <div class="student-details">
      <h3>Students</h3>
      <div class="section-actions">
        <a href="${pageContext.request.contextPath}/viewAllPayments" class="btn">
          <i class="fas fa-money-bill-wave"></i> Manage Payments
        </a>
      </div>
      <table>
        <thead>
        <tr class="table-header">
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${users}">
          <tr class="table-row student-row">
            <td>${user.username}</td>
            <td>${user.username}</td>
            <td>${user.email}</td>
            <td>
              <a href="${pageContext.request.contextPath}/admin/editUser?username=${user.username}&role=student" class="action-btn text-blue-500">
                <i class="fas fa-edit"></i> Edit
              </a>
              <a href="${pageContext.request.contextPath}/admin/deleteUser?username=${user.username}&role=student" class="action-btn text-red-500">
                <i class="fas fa-trash-alt"></i> Delete
              </a>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>

    <!-- Tutors -->
    <div class="student-details">
      <h3>Tutors</h3>
      <div class="section-actions">
        <a href="${pageContext.request.contextPath}/addTutor.jsp" class="btn">
          <i class="fas fa-user-plus"></i> Add Tutor
        </a>
      </div>
      <table>
        <thead>
        <tr class="table-header">
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="tutor" items="${tutors}">
          <tr class="table-row tutor-row">
            <td>${tutor.username}</td>
            <td>${tutor.username}</td>
            <td>${tutor.email}</td>
            <td>
              <a href="${pageContext.request.contextPath}/admin/editUser?username=${tutor.username}&role=tutor" class="action-btn text-blue-500">
                <i class="fas fa-edit"></i> Edit
              </a>
              <a href="${pageContext.request.contextPath}/admin/deleteUser?username=${tutor.username}&role=tutor" class="action-btn text-red-500">
                <i class="fas fa-trash-alt"></i> Delete
              </a>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>

    <!-- Admins -->
    <div class="student-details">
      <h3>Admins</h3>
      <div class="section-actions">
        <a href="${pageContext.request.contextPath}/addAdmin.jsp" class="btn">
          <i class="fas fa-user-shield"></i> Add Admin
        </a>
      </div>
      <table>
        <thead>
        <tr class="table-header">
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="admin" items="${admins}">
          <tr class="table-row admin-row">
            <td>${admin.username}</td>
            <td>${admin.username}</td>
            <td>${admin.email}</td>
            <td>
              <a href="${pageContext.request.contextPath}/admin/editUser?username=${admin.username}&role=admin" class="action-btn text-blue-500">
                <i class="fas fa-edit"></i> Edit
              </a>
              <a href="${pageContext.request.contextPath}/admin/deleteUser?username=${admin.username}&role=admin" class="action-btn text-red-500">
                <i class="fas fa-trash-alt"></i> Delete
              </a>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>

  </section>
</div>

<script>
  function filterUsers() {
    let input = document.getElementById("userSearch").value.toLowerCase();
    const rows = document.querySelectorAll(".table-row");

    rows.forEach(row => {
      const username = row.querySelector("td")?.textContent.toLowerCase();
      row.style.display = username.includes(input) ? "" : "none";
    });
  }
</script>

</body>
</html>
