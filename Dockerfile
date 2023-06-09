FROM ubuntu

LABEL maintainer="unicord@unicord.dev"

WORKDIR /opt/exploit-CVE-2022-25765

RUN apt update
RUN apt install -y python3 ruby
RUN gem install pdfkit -v 0.8.6
WORKDIR /opt/exploit-CVE-2022-25765

COPY . .

ENTRYPOINT ["/bin/bash"]