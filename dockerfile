FROM hashicorp/terraform:1.3.7 AS base

ENV TERRAGRUNT_VERSION  v0.42.5

USER root

RUN apk add --no-cache curl

# Install terragrunt
RUN curl -o /usr/local/bin/terragrunt -fsSL "https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/terragrunt_linux_amd64" \
    && chmod +x /usr/local/bin/terragrunt

RUN mkdir /modules
COPY ./aws /modules/aws
