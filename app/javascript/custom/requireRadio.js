function validateSubmit() {
  var checked = document.getElementById("submit").checked;
  if (!checked) {
    alert("Please make a selection")
  }
}