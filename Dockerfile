FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
RUN apt-get update && apt-get install -y libgdiplus
RUN apt-get update -y
RUN apt-get install -y tzdata
RUN wget https://github.com/signalfx/signalfx-dotnet-tracing/releases/download/v1.0.0/signalfx-dotnet-tracing_1.0.0_amd64.deb \
&& dpkg -i signalfx-dotnet-tracing_1.0.0_amd64.deb
ENV TZ Asia/Bangkok
RUN date
WORKDIR /app
EXPOSE 80
#EXPOSE 443
