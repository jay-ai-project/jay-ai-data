#!/bin/bash

awslocal s3api create-bucket --bucket $BUCKET_NAME

echo '{"CORSRules":[{"AllowedHeaders":["*"],"AllowedMethods":["GET","POST","PUT"],"AllowedOrigins":["*"],"ExposeHeaders":["ETag"]}]}' > cors.json
awslocal s3api put-bucket-cors --bucket $BUCKET_NAME --cors-configuration file://cors.json
