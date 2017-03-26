<%@page import="web.CreditModel"%>
<%
	CreditModel model=(CreditModel) request.getAttribute("model");

%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>::Simulateur Credit::</title>
</head>
<body>

<form class="form-horizontal" action="contro.php" method="post">
  <div class="form-group">
    <label for="montant" class="col-sm-2 control-label">Montant</label>
    <div class="col-sm-10">
      <input type="text" value="<%=model.getMontant() %>" class="form-control" name="montant" id="montant" placeholder="Montant">
    </div>
  </div>
  <div class="form-group">
    <label for="duree" class="col-sm-2 control-label">Durée</label>
    <div class="col-sm-10">
      <input type="text" value="<%=model.getDuree() %>" class="form-control" id="duree" name="duree" placeholder="Duree">
    </div>
  </div>
  <div class="form-group">
    <label for="taux" class="col-sm-2 control-label">Taux</label>
    <div class="col-sm-10">
      <input type="text" value="<%=model.getTaux() %>" class="form-control" id="taux" name="taux" placeholder="Taux">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" class="btn btn-default" value="Calculer">
    </div>
  </div>
</form>
<div class="panel panel-default">
  <div class="panel-body">
    Mentualité : <%=model.getMentualite()%>
  </div>
</div>
</body>
</html>