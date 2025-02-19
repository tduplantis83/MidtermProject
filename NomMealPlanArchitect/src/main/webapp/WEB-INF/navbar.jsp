<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<link href="<c:url value="/CSS/nav.css" />" rel="stylesheet">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.do"><i
				class="fas fa-utensils"></i> NOM!</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">

					<c:if test="${empty loggedInUser.email }">
						<li class="nav-item"><a class="nav-link" href="login.do">Log in</a>
						</li>
					</c:if>
					<c:if test="${loggedInUser.active eq true }">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Hi ${loggedInUser.firstName } </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="userProfile.do">Profile</a> <a
									class="dropdown-item" href="getUserProfile.do">Update
									Profile</a> <a class="dropdown-item" href="logout.do">Logout</a>

							</div></li>
					</c:if>

					<c:if test="${empty loggedInUser.email}">
						<li class="nav-item"><a class="nav-link" href="register.do">Register</a></li>
					</c:if>
					
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Recipes </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="recipeSearch.do">Search</a>
							<c:if test="${loggedInUser.active eq true }">
								<a class="dropdown-item" href="createRecipe.do">Create</a>
							</c:if>
						</div></li>
					<%-- <c:if test="${loggedInUser.active eq true}">
						<li class="nav-item"><a class="nav-link" href="mealPlan.do"> ${loggedInUser.firstName }'s Meal
								Plan </a>
					</c:if> --%>
				</ul>

				<form:form class="form-inline my-2 my-lg-0" name="key"
					action="searchRecipe.do" method="GET">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search Recipes" aria-label="Search" id="key"
						name="key">
					<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
				</form:form>
			</div>
		</div>
	</nav>
</html>