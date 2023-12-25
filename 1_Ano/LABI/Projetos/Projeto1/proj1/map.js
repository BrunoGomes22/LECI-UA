var map = new L.Map("oMeuMapa", {center: [40.633258,-8.659097],zoom: 15});

var osmUrl="http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png";
var osmAttrib="Map data OpenStreetMap contributors";
var osm = new L.TileLayer(osmUrl, {attribution: osmAttrib});
var iconeUA = L.icon({ iconUrl: "http://xcoa.av.it.pt/ua.png" });

map.addLayer(osm);
