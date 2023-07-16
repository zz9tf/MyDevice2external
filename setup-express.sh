
mkdir express &&
cd express &&
npm install express &&
express &&
npm install
npm install --save-dev @babel/core @babel/cli @babel/preset-env @babel/node
npm install --save-dev nodemon &&
echo '{ "presets": ["@babel/preset-env"] }' > .babelrc &&
sed -i 's/"start": "node .\/bin\/www"/"start": "nodemon --exec babel-node .\/bin\/www"/' package.json &&
echo "version: '3'

services:
  express:
    image: node:latest
    working_dir: /express
    volumes:
      - .:/express:rw
    command: sh -c 'npm install nodemon && npm install && npm install @babel/core @babel/cli @babel/preset-env @babel/node && npm start'
    container_name: express_container
networks:
  backend:
    external: true" > docker-compose.yml
