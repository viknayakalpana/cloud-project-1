from dotenv import load_dotenv
import os
import boto3
load_dotenv("sample.env")
access_key = os.getenv('AWS_ACCESS_KEY')
secret_key = os.getenv('AWS_SECRET_ACCESS_KEY')
print("Access Key:", access_key)
print("Secret Key:", secret_key)
s3 = boto3.client('s3',aws_access_key_id=access_key,aws_secret_access_key=secret_key)
s3.upload_file('sample.txt','cloud-storage-team7','sample.txt')
print("Upload Successful")