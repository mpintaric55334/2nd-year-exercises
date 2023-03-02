function refreshCartItems(){
	// INSERT CODE HERE --> PRIPREMA
	let cartMenu=document.querySelector("#cart-items");
	if(localStorage.getItem("brojac")!=null){
		cartMenu.textContent=localStorage.getItem("brojac");
	}else{
		cartMenu.textContent="0";
	}
}
	
	// END INSERT --> PRIPREMA

refreshCartItems();


