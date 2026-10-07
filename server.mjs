import { createServer } from 'node:http';
createServer((req,res)=>{res.writeHead(200,{'Content-Type':'text/plain'});res.end('polyer-d03-railpack-v1\n');}).listen(Number(process.env.PORT||3000),'0.0.0.0');
