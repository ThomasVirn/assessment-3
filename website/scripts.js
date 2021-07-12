let productCount = localStorage.length


function addItem() {
  for (let i = 0; i < localStorage.length; i++) {

    let itemInitial = document.createElement("DIV");
    let addedItem = document.createTextNode(localStorage.getItem(localStorage.key(i)));
    itemInitial.appendChild(addedItem);
    let taskList = document.getElementById("items");
    taskList.appendChild(itemInitial)

  }
}

function addToCart(item) {

  localStorage.setItem(productCount,JSON.stringify(item));
  productCount++;
  alert(`${item} has been added to current shopping cart`);
  
}