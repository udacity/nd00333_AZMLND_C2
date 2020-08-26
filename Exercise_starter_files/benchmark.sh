# Run Apache Benchmark for 10 times, producing output similar to:
#
# This is ApacheBench, Version 2.3 <$Revision: 1843412 $>
# Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
# Licensed to The Apache Software Foundation, http://www.apache.org/
#
# Benchmarking 8530a665-66f3-49c8-a953-b82a2d312917.eastus.azurecontainer.io (be patient)...INFO: POST header ==
# ---
# POST /score HTTP/1.0
# Content-length: 812
# Content-type: application/json
# Authorization: Bearer Agb3D23IygXXXXXXXXXXXXXXXXXXXXXXXXX
# Host: 8530a665-66f3-49c8-a953-b82a2d312917.eastus.azurecontainer.io
# User-Agent: ApacheBench/2.3
# Accept: */*
#
#
# ---
# LOG: header received:
# HTTP/1.0 200 OK
# Content-Length: 33
# Content-Type: application/json
# Date: Thu, 30 Jul 2020 12:33:34 GMT
# Server: nginx/1.10.3 (Ubuntu)
# X-Ms-Request-Id: babfc511-a0f0-4ecb-a243-b3010a76b8b9
# X-Ms-Run-Function-Failed: False
#
# "{\"result\": [\"yes\", \"no\"]}"
# LOG: Response code = 200
# LOG: header received:
# HTTP/1.0 200 OK
# Content-Length: 33
# Content-Type: application/json
# Date: Thu, 30 Jul 2020 12:33:34 GMT
# Server: nginx/1.10.3 (Ubuntu)
# X-Ms-Request-Id: b48dd8da-0b4e-44fd-a1e5-04043bfa77f1
# X-Ms-Run-Function-Failed: False
#
# "{\"result\": [\"yes\", \"no\"]}"
# LOG: Response code = 200
# ..done
#
#
# Server Software:        nginx/1.10.3
# Server Hostname:        8530a665-66f3-49c8-a953-b82a2d312917.eastus.azurecontainer.io
# Server Port:            80
#
# Document Path:          /score
# Document Length:        33 bytes
#
# Concurrency Level:      1
# Time taken for tests:   1.599 seconds
# Complete requests:      10
# Failed requests:        0
# Total transferred:      2600 bytes
# Total body sent:        10560
# HTML transferred:       330 bytes
# Requests per second:    6.25 [#/sec] (mean)
# Time per request:       159.918 [ms] (mean)
# Time per request:       159.918 [ms] (mean, across all concurrent requests)
# Transfer rate:          1.59 [Kbytes/sec] received
#                         6.45 kb/s sent
#                         8.04 kb/s total
#
# Connection Times (ms)
#               min  mean[+/-sd] median   max
# Connect:       21   23   0.8     23      24
# Processing:    92  137  28.3    151     176
# Waiting:       92  137  28.3    151     176
# Total:        114  160  28.0    172     199#


 ab -n 10 -v 4 -p data.json -T 'application/json' -H 'Authorization: Bearer REPLACE_WITH_KEY' http://REPLACE_WITH_API_URL/score
