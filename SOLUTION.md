<img width="400" src="static/solution.png">


#### The issue
The S3 bucket policy is broken and is exposed publicly with misconfigured privilege.

#### The expoit
Either visit http://leakybucket.s3-eu-central-1.amazonaws.com/ and check the listed files, or use the CLI `aws s3 ls <bucketname>' and get the containing file to grab the flag.


<p align="center">
<img width="400" src="static/luke.png">
</p>