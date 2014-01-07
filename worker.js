console.log("hello from a worker");
postMessage("worker init");

var i = 0;
onmessage = function(ev)
{
  console.log("worker received event", "data", ev.data);
  postMessage({i: i++, time: new Date(), });
};
