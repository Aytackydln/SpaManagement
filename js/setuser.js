$.get('verify.php', function(data) {
	if(data==""){
	}else {
		document.getElementById("dropdownButton").innerHTML = "User Panel";
		document.getElementById("login").innerHTML = data + "<br><form action='logout.php'><input type='submit' value='Logout'></form>";
	}
});
