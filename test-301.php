<?php

if (@$_GET['test'] == "header301") {
  header('HTTP/1.1 301 Moved Permanently');
  header("Location: /~robod/test-301.php?test=fail");
  echo "<p>header301";
} else if (@$_GET['test'] == "fail") {
  header('HTTP/1.1 404 Not Found');
  echo "<p>lol, epic fail";
} else {
  echo "<p><a href='?test=header301'>test headers</a>";
}

