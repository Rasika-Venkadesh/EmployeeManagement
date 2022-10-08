<%@page import="com.ideas2it.employee.model.Employee, com.ideas2it.employee.model.Trainer "%>
<%@page import="java.util.ArrayList,java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOC TYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
        <style>table, th, td {border: 1px solid black;border-collapse: collapse;}</style>
        <body>
            <h2>Trainer List</h2> 
            <table style='width:100%'>
                <tr><th>Id</th>
                    <th>Name</th>                    
                    <th>Date of Birth</th>
                    <th>Date of Join</th>
                    <th>Gender</th>
                    <th>Phone Number</th>
                    <th>Email Id</th>
                    <th>Salary</th>
                    <th>Aadhar Id</th>
                    <th>Blood Group</th>
                    <th>Qualification</th>
                    <th>Experience</th>                    
                    <td colspan="2">Action</td>
                </tr>
		
		<%ArrayList<Trainer> trainers = (ArrayList<Trainer>)request.getAttribute("Trainers");
		for (Trainer trainer: trainers) {
                    Employee employee = trainer.getEmployee(); %>
		    <tr>
		    <td><%= employee.getEmployeeId() %></td>
		    <td><%= trainer.getEmployee().getName() %></td>
                    <td><%= employee.getDateOfBirth() %></td>
                    <td><%= employee.getDateOfJoin() %></td>
		    <td><%= employee.getGender() %></td>
                    <td><%= employee.getPhoneNumber() %></td>
                    <td><%= employee.getEmailId() %></td>
                    <td><%= employee.getSalary() %></td>
                    <td><%= employee.getAadharId() %></td>
                    <td><%= employee.getBloodGroup() %></td>
		    <td><%= employee.getQualification().getQualification() %></td>
		    <td><%= trainer.getExperience() %></td>
                    <td>
                        <a href=updateTrainer?trainerId=<%=employee.getEmployeeId()%> ><input type="button" value="update"></a>
                    </td>
                    <td>
                        <a href=deleteTrainer?trainerId=<%=employee.getEmployeeId()%>  ><input type="button" value="delete"></a>
                    </td>
		</tr>
		<%}%>
		</table>

        </table>
                <input type="button" value="Back to Main Menu" onclick="history.go(-1)">
	</body>
</html>