function check() {

  const asideButton = document.getElementById("aside-button")
  const aside = document.getElementById("aside")

  asideButton.addEventListener('click', function() {

    if (aside.getAttribute("style") == "left: -450px;") {
      aside.setAttribute("style", "left: 0;")
    } else {
      aside.setAttribute("style", "left: -450px;")
    }
  })
}
setInterval(check, 700);