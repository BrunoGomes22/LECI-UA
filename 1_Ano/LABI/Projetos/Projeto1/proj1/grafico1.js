function desenhaGrafico() {
	$("#grafico-linhas").highcharts({
		title: {
			text: "Licenças vendidas pela apple e a Windows (2009-2011) em milhões de doláres",
		},
		xAxis: {
			categories: ["Nov '09","Dec '09","Mar '10","Jun '10", "Sep '10", "Dec '10",
			"Mar '11"]
		},
		series: [{
			name: "Licenças Windows 7",
			data: [55, 70, 120, 180, 200, 260, 300]
		},{
			name: "Unidades iOS (iPhone, iPad... ",
			data: [20, 52, 55, 59, 70, 100, 150]		
		}]
	});
}
window.onload = desenhaGrafico;
