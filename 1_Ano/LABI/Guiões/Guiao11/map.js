var map = new L.Map("oMeuMapa", {center: [40.633258,-8.659097],zoom: 15});

var osmUrl="http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png";
var osmAttrib="Map data OpenStreetMap contributors";
var osm = new L.TileLayer(osmUrl, {attribution: osmAttrib});
var iconeUA = L.icon({ iconUrl: "http://xcoa.av.it.pt/ua.png" });

map.addLayer(osm);

function mostraCoordenadas(e){
	var s = document.getElementById("coordenadas");
	s.innerHTML = "Latitude, Longitude = "+e.latlng.lat+", "+e.latlng.lng;
}

map.on("click", mostraCoordenadas);

var pontos = [
	L.marker([39.89123857427317, -8.634578113522236]).bindPopup("Casa"),
	L.marker([40.633258, -8.659097], {icon: iconeUA}).bindPopup("LABI@DETI"),
	L.marker([40.642729, -8.747899])
];

for (i in pontos) {
	pontos[i].addTo(map);
}

var grupo = new L.featureGroup(pontos);
map.fitBounds(grupo.getBounds());

var reitoria = L.polygon(
	[ [40.63102, -8.65793], [40.63149, -8.65731],
	[40.63126, -8.65699], [40.63078, -8.65759] ],
	{ color: "red" } );
	
reitoria.addTo(map);
reitoria.bindPopup("Reitoria");

var trajeto = L.polyline(
	[ [40.63102, -8.65793], [39.89123857427317, -8.634578113522236] ],
	{ color: "green"} );
	
trajeto.addTo(map);
trajeto.bindPopup("trajeto");
	
