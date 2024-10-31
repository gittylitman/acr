FROM python:latest
WORKDIR /app
# RUN --mount=type=secret,id=AZURE_TENANT_ID \
#     --mount=type=secret,id=AZURE_CLIENT_ID \
#     --mount=type=secret,id=AZURE_CLIENT_SECRET \
#     az login --service-principal -u $(cat /run/secrets/AZURE_CLIENT_ID) -p $(cat /run/secrets/AZURE_CLIENT_SECRET) --tenant $(cat /run/secrets/AZURE_TENANT_ID)
EXPOSE 8080 
COPY . .
CMD [ "python" , "app.py" ]
 