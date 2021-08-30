FROM python:slim

WORKDIR /usr/src/app

COPY ["requirements.txt", "app.py", "./"]
ADD templates ./templates
RUN pip install --no-cache-dir -r requirements.txt
RUN cp /usr/share/zoneinfo/Europe/Kiev /etc/localtime && echo "Europe/Kiev" > /etc/timezone
ENV ver=2.0

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=5000" ]