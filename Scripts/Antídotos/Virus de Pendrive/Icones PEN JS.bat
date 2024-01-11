set p="\PEN JS.ico"
for %%i in (c: d: e: f: g: h: i: j: k: l: m: n: o: p: q: r: s: t: u: v: w: x: y: z:) do if exist %%i%p% set PEN=%%i
echo [autorun] > %pen%\AutoRun.inf
echo icon=PEN JS.ico >> %pen%\AutoRun.inf
attrib +r +s +h %pen%\autorun.inf