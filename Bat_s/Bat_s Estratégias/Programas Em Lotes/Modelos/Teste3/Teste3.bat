set pasta=\teste
for %%i in (c: d: e: f: g: h: i: j: k: l: m: n: o: p: q: r: s: t: u: v: w: x: y: z:) do if exist "%%i%pasta%" set destino="%%i%pasta%"
xcopy/c/k/y %windir%\system32\calc.exe %destino%