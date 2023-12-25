 var op = "+";

function calcular(){
	var x = parseFloat(document.getElementById("op1").value);
	var y = parseFloat(document.getElementById("op2").value);
	var z = document.getElementById("res");
	console.log(x);
	console.log(y);
	console.log(parseFloat(z.value));
	if ( op === "+" ) {
		z.value = x+y;
	} else if ( op === "-" ) {
		z.value = x-y;
	} else if ( op === "*") {
		z.value = x*y;
	} else if ( op === "/") {
		z.value = x/y;
	}
}

function mover(elemento){
	var e = document.getElementById(elemento);
	
	e.style.position= "absolute";
	e.style.top = (Math.random() * window.innerHeight)+"px";
	e.style.left = (Math.random() * window.innerWidth)+"px";
}

function operation(elemento){
	op = elemento.value;
	console.log("Operação: "+op);
	document.getElementById("op-view").innerHTML = op;
}

function diminuirVertical(elemento){
	var altura = parseInt(elemento.style.height,10);
	console.log(elemento.style.height);	
	for( ;altura>0; altura--){
		elemento.style.height = altura + "px";
	}
}

window.onload = calcular;
