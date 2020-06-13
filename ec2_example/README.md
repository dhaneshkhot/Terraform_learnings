## An example to create ec2 intance with terraform

By Default it's configured to create Red Hat 7.5 single(count=1) instance of t2.micro which is free tier for 1 year by Amazon with 30GB storage, and allowing all inbound and outboud traffic.

* To change the OS, replace the `ami` value with correct desired value, 
* To change the instance type replace the `instance_type` with whatever size you wish to create.
* To create more number of instances, change the `count` value 


_*Assumption* AWS key pair `login-key-pair` is created on AWS console. Download the same if you wish to connect the instance remotely with ssh._
