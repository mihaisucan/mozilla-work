
(function () {
  var btn = document.getElementsByTagName('button')[0];
  btn.addEventListener('click', function (ev) {
    ev.preventBubble();
    foo.bar.extern();
  }, false);
})();

