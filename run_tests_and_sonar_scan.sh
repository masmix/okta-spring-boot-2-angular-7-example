#!/bin/bash

echo "Run Java tests.."
cd server
mvn test


echo "Run Angular tests..."
cd ..

cd client
npm i

CI=true npm test -- --code-coverage --watch=false

CI=true npm run build

echo "Run sonar-scanner"
cd ..
npx sonar-scanner  
