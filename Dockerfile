FROM python:latest

# Server configuration
# COPY . /app
# WORKDIR /app

# Dev container configuration
WORKDIR /workspaces

# RUN <<EOF
# pip install -r requirements.txt
# python manage.py setup_demo --skip_superuser
# EOF

RUN <<EOF
chmod +x /app/start.sh
pip install -r requirements.txt
EOF

ENV PYTHONUNBUFFERED=1
EXPOSE 8000

CMD [ "/app/start.sh" ]