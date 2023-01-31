resource "aws_route53_zone" "prod" {
  name = "prod.some_company.com"
}

resource "aws_route53_record" "prod_ns" {
  name    = "prod.some_company.com"
  ttl     = 172800
  type    = "NS"
  zone_id = aws_route53_zone.prod.zone_id

  records = [
    aws_route53_zone.prod.name_servers[0],
    aws_route53_zone.prod.name_servers[1],
    aws_route53_zone.prod.name_servers[2],
    aws_route53_zone.prod.name_servers[3],
  ]
}

resource "aws_route53_record" "primary_soa" {
  name    = "prod.some_company.com"
  ttl     = 900
  type    = "SOA"
  zone_id = aws_route53_zone.prod.zone_id

  records = [
    "ns-1111.awsdns-11.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
  ]
}
