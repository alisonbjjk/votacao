<!DOCTYPE html>
<?php
session_start();
require_once('../../Model/tabelaVot.php');
require('../../Model/sair.php');
calcularVot();
if ($_SESSION['logado'] == '1') {
} else {
sair();
}
?>
<html>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load("current", {
            packages: ["corechart"]
        });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Task', 'Hours per Day'],
                ['Filme', <?php echo $_SESSION['v1']; ?>],
                ['Série', <?php echo $_SESSION['v2']; ?>],
                ['Ambos', <?php echo $_SESSION['v3']; ?>]
            ]);

            var options = {
                pieHole: 0.4,
                width: 900,
                height: 500,
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
            chart.draw(data, options);
        }
    </script>
</head>

<body>
    <div class="container" style="margin-left: auto; margin-right: auto;">
        <div class="p-3 mb-2 bg-dark text-dark">
            <div>
                <h1 style="margin-left: 10px; margin-top: 30px; color: white;">VOTAÇÂO</h1>
                <a style="margin-top: 15px;" href="./index.php">Voltar</a>
            </div>
            <div class="container" style="margin-left: 5%; margin-right: auto;">
                <div class="container" id="piechart_3d"></div>
            </div>
        </div>
    </div>
</body>

</html>