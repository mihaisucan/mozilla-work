// -sp-context: browser

let HUDService = Cu.import("resource:///modules/HUDService.jsm", {}).HUDService;
let dump = Cu.import("resource://gre/modules/devtools/Console.jsm").console.log;

function runTest(opt)
{
    let console = opt.window.console;
    let hud = HUDService.getHudByWindow(opt.window);
    hud.ui._flushCallback = function() {
        let flush = new Date().getTime();
        let timeToFlush = flush - start.getTime();
        dump("output flush", timeToFlush + "ms");
    };

    console.time("perf test");
    let start = new Date();
    for (let i = 0; i <= opt.loops; i++) {
        console.log("foo " + i);
    }
    let end = new Date();
    console.timeEnd("perf test");
    let elapsedTime = end.getTime() - start.getTime();
    dump("start", start, "end", end, "elapsed time", elapsedTime + "ms", "loops", opt.loops);
}

runTest({ window: content, loops: 50000 })
