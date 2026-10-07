import {createServer} from 'node:http';
import {readFileSync} from 'node:fs';
const marker=readFileSync(new URL('./build-marker.txt',import.meta.url),'utf8');
createServer((req,res)=>{res.writeHead(200,{'Content-Type':'text/plain'});res.end(marker+'\n');}).listen(Number(process.env.PORT||3000),'0.0.0.0');
