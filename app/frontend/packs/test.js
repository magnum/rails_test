
/*
  testing onlad and turbolinks life-cycle
  https://www.honeybadger.io/blog/turbolinks/
*/

$(() => {
  //$("body").hide();
})


document.addEventListener("DOMContentLoaded", function() {
  const a = 42;
  console.log("DOMContentLoaded")
  const link1 = document.getElementById("link1")
  link1.addEventListener("click", (e) => {
    e.preventDefault();
    console.log("link1 click")
  })
});

document.addEventListener("turbolinks:load", function() {
  console.log("turbolinks:load")
})

document.addEventListener('turbolinks:before-render', () => {
  console.log("turbolinks:before-render")
});