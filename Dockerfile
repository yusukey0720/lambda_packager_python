FROM lambci/lambda:build-python3.7
ENV AWS_DEFAULT_REGION ap-northeast-1

ADD ./src .

CMD pip3 install -r requirements.txt -t /var/task && \
    zip -9 /var/dist/deploy_package.zip lambda_function.py && \
    zip -r9 /var/dist/deploy_package.zip *