FROM mcr.microsoft.com/dotnet/aspnet:6.0

# Instalar librerías nativas necesarias para libwkhtmltox
RUN apt-get update && apt-get install -y \
    libxrender1 \
    libfontconfig1 \
    libfreetype6 \
    libx11-6 \
    libxcb1 \
    libxext6 \
    libssl1.1 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

EXPOSE 80

ENTRYPOINT ["dotnet", "SistemaVenta.AplicacionWeb.dll"]

