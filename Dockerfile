FROM python:3.8-slim
RUN useradd --create-home --shell /bin/bash app_user
WORKDIR /home/agsouza/Documents/Stone
COPY requirements.txt .
COPY amigo-flow.py .
COPY .env .
RUN pip install --no-cache-dir -r requirements.txt
ENV freshservice_tickets="https://amigo.stone.com.br/helpdesk/tickets"
ENV freshservice_token="qZaotAfRygwdAaYUmxG"
ENV freshservice_view_id="262057"
CMD ["python", "./amigo-flow.py" ]
