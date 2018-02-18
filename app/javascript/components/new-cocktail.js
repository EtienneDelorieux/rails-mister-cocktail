import swal from 'sweetalert';

function bindSweetAlertNewCocktail() {
  document.getElementById('new-cocktail-test').addEventListener('click', () => {
    swal({
      title: "A nice alert",
      text: "This is a great alert, isn't it?",
      icon: "success"
    })
  });
}

export { bindSweetAlertNewCocktail };
