<?php



if (@$_GET['test'] == "cookies") {
  header("Very-Long-Header: " . str_repeat("foo baz", 1000));
  header("Set-Cookie: special=specialvalue=specialresult");
  setcookie("cookie1", "omg \n \r \t \v \b \c lolz <p>kiss me");
  setcookie("cookie3", "foo=bar");
  setcookie("co%3akie", "omg=lolz<\<'\"");
  setcookie("lastupdate", date("c"));
  setcookie("testParams", "omglolz", time() + 60*60, "/~robod/", ".localhost", false, true);
  setcookie("veryLong", str_repeat("ab ba", 1000));
  echo "<p>cookies!";
} else if (@$_GET['test'] == "header301") {
  header('HTTP/1.1 301 Moved Permanently');
  header("Location: /~robod/test-301.php?test=fail");
  echo "<p>header301";
} else if (@$_GET['test'] == "fail") {
  header('HTTP/1.1 404 Not Found');
  echo "<p>lol, epic fail";
} else {
  echo "<p><a href='?test=header301'>test headers</a> <a href='?test=cookies'>test cookies</a>";
}

