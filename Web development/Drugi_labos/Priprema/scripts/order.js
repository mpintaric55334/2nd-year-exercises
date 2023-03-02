

function addToCart(id) {
	// INSERT CODE HERE --> PRIPREMA
	var brojac;
	if(localStorage.getItem("brojac")!=null){
		brojac=Number(localStorage.getItem("brojac"));
		brojac+=1;
	}else{
		brojac=1;
	}
	localStorage.setItem("brojac",brojac);
	if(localStorage.getItem(id)!=null){
		let num=localStorage.getItem(id);
		num=Number(num);
		num+=1;
		localStorage.setItem(id,num);
	}else{
		let num=1;
		localStorage.setItem(id,num);
	}
	// END INSERT --> PRIPREMA
	refreshCartItems();
}

let getData = async function () {
	let response = await fetch("data/lab2.json");
	let data = await response.json();
	addCategories(data);
}

let addCategories = async function (data) {
	let categories = data.categories;
	let main = document.querySelector('main');
	let categoryTemplate = document.querySelector('#category-template');

	for (let index = 0; index < categories.length; index++) {
		let category = categoryTemplate.content.cloneNode(true);
		let categoryTitleElement = category.querySelector('.decorated-title > span');
		categoryTitleElement.textContent = categories[index].name;
		
		let products = data.products.filter(p => p.categoryId ==  categories[index].id);
		// INSERT CODE HERE --> PRIPREMA
		let productTemplate=document.querySelector("#product-template");
		let gallery=category.querySelector(".gallery");
		for(let i=0;i<products.length;i++){
			//stvaranje varijabli
			let clone=productTemplate.content.cloneNode(true);
			let PhotoBox=clone.querySelector(".photo-box");
			let PhotoBoxImage=PhotoBox.querySelector(".photo-box-image");
			let photoBoxTitle=PhotoBox.querySelector(".photo-box-title");
			let Cart=PhotoBox.querySelector(".cart-btn");

			//obrada
			photoBoxTitle.textContent=products[i].name;
			PhotoBoxImage.src=products[i].imageUrl;
			Cart.onclick= (event) => addToCart(products[i].id);

			//dodavanje u galeriju
			gallery.appendChild(clone);
			
		}

		// END INSERT --> PRIPREMA

		main.appendChild(category);
	}
};
getData();