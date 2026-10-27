const fs = require("fs");

const paths = (process.env.INPUT_PATHS || "")
  .split(",")
  .map(path => path.trim())
  .filter(Boolean);

let errors = 0;

for (const path of paths) {
  try {
    const stats = fs.statSync(path);

    if (stats.isFile() || stats.isDirectory()) {
      console.log(`OK: Existe ${path}`);
    } else {
      console.error(`ERROR: La ruta no es un archivo ni un directorio: ${path}`);
      errors++;
    }
  } catch {
    console.error(`ERROR: No existe ${path}`);
    errors++;
  }
}

if (errors > 0) {
  process.exitCode = 1;
}
