FROM python:latest
RUN pip install boto

ENTRYPOINT ["route53", "change_record", "$53_zone_id", "$53_name", "$53_type", "`curl ifconfig.me`", "$53_ttl"]
