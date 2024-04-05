window.onload = function () {
  const mainMenu = document.querySelectorAll(".nav > ul > li > a");
  const head = document.querySelector("#head");
  const subMenuGroup = document.querySelectorAll(".subMenu");
  const subMenu = document.querySelectorAll(".subMenu > li > a");
  mainMenu.forEach((value, index) => {
    // console.log(value, index)
    value.addEventListener("mouseover", (e) => {
      head.style.height = "360px";
      subMenuGroup.forEach((value) => {
        value.style.display = "block";
      });
    });
    subMenuGroup.forEach((value) => {
      value.addEventListener("mouseover", (e) => {
        head.style.height = "360px";
        subMenuGroup.forEach((value) => {
          value.style.display = "block";
        });
      });
    });
    value.addEventListener("mouseout", (e) => {
      head.style.height = "140px";
      subMenuGroup.forEach((value) => {
        value.style.display = "none";
      });
    });
      subMenu.forEach(value => {
          value.addEventListener("mouseout", e => {
              head.style.height = "140px";
              subMenuGroup.forEach((value) => {
                value.style.display = "none";
              });
        })
    }) 
  });
};
