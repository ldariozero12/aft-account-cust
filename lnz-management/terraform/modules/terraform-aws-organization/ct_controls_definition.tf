locals {
  ct_control_def = {

    "AWS-GR_CT_AUDIT_BUCKET_POLICY_CHANGES_PROHIBITED" : "dmvclaluiuvtsmivvw5t7an1x",
    "AWS-GR_SNS_CHANGE_PROHIBITED" : "8axz4m7a5i0p6djlcszljt4v1",
    "AWS-GR_AUDIT_BUCKET_POLICY_CHANGES_PROHIBITED" : "4wtwsih93j7vct3k0pyvrs3e2",
    "AWS-GR_LAMBDA_CHANGE_PROHIBITED" : "6g1vku0mw1b12o9jhuouxj8ia",
    "AWS-GR_DISALLOW_CROSS_REGION_NETWORKING" : "dvuaav61i5cnfazfelmvn9m6k",
    "AWS-GR_CLOUDTRAIL_VALIDATION_ENABLED" : "wa2yjrj2zlenc1y71rim6z49",
    "AWS-GR_RESTRICT_S3_CROSS_REGION_REPLICATION" : "3zbcht7oxkzts9r1z20nz5lcw",
    "AWS-GR_CLOUDTRAIL_CLOUDWATCH_LOGS_ENABLED" : "9kckk934zwozk5koykyc8w2t2",
    "AWS-GR_CONFIG_AGGREGATION_CHANGE_PROHIBITED" : "3ksucrmpxrisrr73zuw5jxry8",
    "AWS-GR_CLOUDWATCH_EVENTS_CHANGE_PROHIBITED" : "aoa66btqlvrz0ztealide8ll7",
    "AWS-GR_LOG_GROUP_POLICY" : "8cclsjiy1o81kfsmzpt85nbjk",
    "AWS-GR_CONFIG_AGGREGATION_AUTHORIZATION_POLICY" : "742lj0swg82u6ql8zgt51s7ji",
    "AWS-GR_CONFIG_CHANGE_PROHIBITED" : "e2saoisw5u8xe40acfetio41w",
    "AWS-GR_DETECT_CLOUDTRAIL_ENABLED_ON_SHARED_ACCOUNTS" : "1ln29qglgkigm9ajfka6u2p2u",
    "AWS-GR_AUDIT_BUCKET_RETENTION_POLICY" : "ew9b99j144ugzye49kokym66c",
    "CT.EC2.PR.15" : "5jxmjyeig2xg73zcndsz5ynu2",
    "AWS-GR_CONFIG_ENABLED" : "4t6npb1xfud01v5ihhj9ldfax",
    "AWS-GR_DISALLOW_VPC_INTERNET_ACCESS" : "41ngl8m5c4eb1myoz0t707n7h",
    "AWS-GR_CLOUDTRAIL_CHANGE_PROHIBITED" : "1iskvg0qcxofs1t78ittjbnr5",
    "AWS-GR_CT_AUDIT_BUCKET_LIFECYCLE_CONFIGURATION_CHANGES_PROHIBITED" : "68y2k0smdsw3luca7s2fzoqhn",
    "AWS-GR_RESTRICT_S3_DELETE_WITHOUT_MFA" : "69wj8mo0sfw7gbz9lklsu9u51",
    "AWS-GR_RESTRICT_ROOT_USER" : "5kvme4m5d2b4d7if2fs5yg2ui",
    "AWS-GR_CT_AUDIT_BUCKET_ENCRYPTION_CHANGES_PROHIBITED" : "1hgbgne5nxz2xtw51snbmli9b",
    "AWS-GR_SNS_SUBSCRIPTION_CHANGE_PROHIBITED" : "4nsca5yf5oz41tr6r6bs5mmte",
    "AWS-GR_AUDIT_BUCKET_DELETION_PROHIBITED" : "3cerasw3dhjqcwatjqo2gk3wj",
    "AWS-GR_CLOUDTRAIL_ENABLED" : "3y0z7ziftmm28vdnlzjwe9410",
    "AWS-GR_IAM_ROLE_CHANGE_PROHIBITED" : "e8m8q8hlntzfkjhhf99yk84jl",
    "AWS-GR_REGION_DENY" : "cwlixshc8c8mw9qiwdw2z0zav",
    "AWS-GR_AUDIT_BUCKET_ENCRYPTION_ENABLED" : "k4izcjxhukijhajp6ks5mjxk",
    "AWS-GR_AUDIT_BUCKET_LOGGING_ENABLED" : "kr15xvw9oltta064g3o80ppk",
    "AWS-GR_CONFIG_RULE_CHANGE_PROHIBITED" : "5lwgwp498974xwygy5ge7pxfz",
    "AWS-GR_AUDIT_BUCKET_PUBLIC_WRITE_PROHIBITED" : "ci9ov6vzjoi6vzkajgademvvo",
    "AWS-GR_DISALLOW_VPN_CONNECTIONS" : "5rlqt6yj6u0v0gb62pqdy4ae",
    "AWS-GR_CT_AUDIT_BUCKET_LOGGING_CONFIGURATION_CHANGES_PROHIBITED" : "5sms9yvx9k7iawusagao3bx8u",
    "AWS-GR_AUDIT_BUCKET_PUBLIC_READ_PROHIBITED" : "9jzlkwys54gzgsx3pmkqnx8l1",
    "CT.MULTISERVICE.PV.1" : "ka8e3pkqefnjsxuyc26ji580",
    "AWS-GR_RESTRICT_ROOT_USER_ACCESS_KEYS" : "8ui9y3oace2513xarz8aqojl7",
    "AWS-GR_AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED" : "aemn4s3hxv9erree434pvjboi",
    "AWS-GR_DETECT_CLOUDTRAIL_ENABLED_ON_MEMBER_ACCOUNTS" : "8sdhbqfe2fsmh3b1i2b24xaic",
    "AWS-GR_DMS_REPLICATION_NOT_PUBLIC" : "dekrrxbiux86m6jdowdsbamze",
    "AWS-GR_EBS_OPTIMIZED_INSTANCE" : "2j9gjxqfo040xtx8kd1jf4ni6",
    "AWS-GR_EBS_SNAPSHOT_PUBLIC_RESTORABLE_CHECK" : "87qo8rsoettjrxjevmjqcw1tu",
    "AWS-GR_EC2_INSTANCE_NO_PUBLIC_IP" : "4v7xtm83uvvyulk1wwpm4qm3s",
    "AWS-GR_EC2_VOLUME_INUSE_CHECK" : "8c3i4catfgmyy1e19476v06rr",
    "AWS-GR_EKS_ENDPOINT_NO_PUBLIC_ACCESS" : "aeellyghb27pbehyzua1nyena",
    "AWS-GR_ELASTICSEARCH_IN_VPC_ONLY" : "2civrte1w8tqff4vbtzdl4abq",
    "AWS-GR_EMR_MASTER_NO_PUBLIC_IP" : "5cnql6so7p7bs0khdjodjr9e2",
    "AWS-GR_ENCRYPTED_VOLUMES" : "503uicglhjkokaajywfpt6ros",
    "AWS-GR_IAM_USER_MFA_ENABLED" : "7z1uzm6s8qk7ym7m0sm56cq0u",
    "AWS-GR_LAMBDA_FUNCTION_PUBLIC_ACCESS_PROHIBITED" : "b2gzofz99eb7nsuj5g8wcimse",
    "AWS-GR_MFA_ENABLED_FOR_IAM_CONSOLE_ACCESS" : "1fvktjhpo9wdpt3pjb2wsz7nt",
    "AWS-GR_NO_UNRESTRICTED_ROUTE_TO_IGW" : "b8pjfqosgkgknznstduvel4rh",
    "AWS-GR_RDS_INSTANCE_PUBLIC_ACCESS_CHECK" : "4jc77cq1lcr7g64xywwypykv8",
    "AWS-GR_RDS_SNAPSHOTS_PUBLIC_PROHIBITED" : "1h4eyqyyonp19dlrreqf1i3w0",
    "AWS-GR_RDS_STORAGE_ENCRYPTED" : "e34kieahgkm0lggs5g0s412jt",
    "AWS-GR_REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK" : "1oxkwnc4hwhi2ndv6ekwy7np7",
    "AWS-GR_RESTRICTED_COMMON_PORTS" : "df2ta5ytg2zatj1q7y5e09u32",
    "AWS-GR_RESTRICTED_SSH" : "6rilu41n0gb9w6mxrkyewoer4",
    "AWS-GR_ROOT_ACCOUNT_MFA_ENABLED" : "24izmu4k16gv9tvd7sexnyrfy",
    "AWS-GR_S3_ACCOUNT_LEVEL_PUBLIC_ACCESS_BLOCKS_PERIODIC" : "6wmutsohbkwhfw6sf7cbt5e81",
    "AWS-GR_S3_BUCKET_PUBLIC_READ_PROHIBITED" : "8sw3pbid15t9cbww8d2w2qwgf",
    "AWS-GR_S3_BUCKET_PUBLIC_WRITE_PROHIBITED" : "9j9nwxj789d82sypnukhyyowy",
    "AWS-GR_S3_VERSIONING_ENABLED" : "e7pjiyz7qwijz4hvngvnsa61g",
    "AWS-GR_SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS" : "66gfl06uj1v999z53szvu0exa",
    "AWS-GR_SSM_DOCUMENT_NOT_PUBLIC" : "dfanrd8y5p7oj8fjyugqnakfr",
    "AWS-GR_SUBNET_AUTO_ASSIGN_PUBLIC_IP_DISABLED" : "50z1ot237wl8u1lv5ufau6qqo",
    "CT.ACM.PR.1" : "6zv4hpwg6daqp91fh8ke8xk19",
    "CT.APIGATEWAY.PR.1" : "5mhjhod4ky44haldvja2v4x3a",
    "CT.APIGATEWAY.PR.2" : "b7a0rdepu2tfjgo0ddxo9waw0",
    "CT.APIGATEWAY.PR.3" : "1nbiz41n920vxbjbyfh05h0v6",
    "CT.APIGATEWAY.PR.4" : "ro9dk09errhg8vo6flro4o7n",
    "CT.APIGATEWAY.PR.5" : "9313y2tsheoyn9h7vsobvyusl",
    "CT.APIGATEWAY.PR.6" : "3gm493yugy4xek0266q1iglvq",
    "CT.APPSYNC.PR.1" : "4myj2a2bif40a8svxn02bdd4w",
    "CT.APPSYNC.PR.2" : "3j6se0ine9qjlbu4lkf694gpi",
    "CT.APPSYNC.PR.3" : "b27fgmmkovbup1b43ixni2vtv",
    "CT.APPSYNC.PR.4" : "92klgf7ogbbiyeki4n8jyh2xo",
    "CT.APPSYNC.PR.5" : "bgdxgnzufkzzn92vqk6bygo8o",
    "CT.APPSYNC.PV.1" : "br8o4lzgtvz3he7f8sxg76k7q",
    "CT.ATHENA.PR.2" : "7xlkxnzzww15lzzwr2fmxq4k4",
    "CT.AUTOSCALING.PR.1" : "38bk123m8l4uvi1sp7ouvhjc2",
    "CT.AUTOSCALING.PR.10" : "f1e4hcj0j2ucjzq7xge51ulss",
    "CT.AUTOSCALING.PR.11" : "8x5izhfr0ui3v0bua26bo9qoc",
    "CT.AUTOSCALING.PR.2" : "87hjk88avr9e57kka2c02o8t8",
    "CT.AUTOSCALING.PR.4" : "ezg5zv39dnzf88c5i75zoppik",
    "CT.AUTOSCALING.PR.5" : "95a2qka1a36qt8tnqjq9gtqes",
    "CT.AUTOSCALING.PR.6" : "82tn8yxvutrnp3aqsedji2e2k",
    "CT.AUTOSCALING.PR.8" : "82ml5zx6ilcwbg6oyojqzb9jm",
    "CT.AUTOSCALING.PR.9" : "6q5wosluijdv5m9c6wgjou2ud",
    "CT.CLOUDFRONT.PR.1" : "1tb6nwgfis6ooz83xawjgjvo2",
    "CT.CLOUDFRONT.PR.10" : "2cs87xtvtz0zzzzu6u3an319l",
    "CT.CLOUDFRONT.PR.11" : "dry4lj30s7u6k42r73hitwpjq",
    "CT.CLOUDFRONT.PR.2" : "cuk7bk9evoy8ekvwlca65q6a0",
    "CT.CLOUDFRONT.PR.3" : "bwn0jfukdfn6gckd8dgf1se78",
    "CT.CLOUDFRONT.PR.4" : "14qbryfolinr3nnzewoif3ied",
    "CT.CLOUDFRONT.PR.5" : "1fiyee9ob7p4jm0ea1587p5ua",
    "CT.CLOUDFRONT.PR.6" : "1lkj22wd0hzrj2oxmqgs3ry81",
    "CT.CLOUDFRONT.PR.7" : "a6j0c4drzvebbfmg6uam8rdkh",
    "CT.CLOUDFRONT.PR.8" : "7emygl4xpnv70se1rumkjjx06",
    "CT.CLOUDFRONT.PR.9" : "4rq35n1612uyl7rhlyz3sieqb",
    "CT.CLOUDTRAIL.PR.1" : "1paru4wpdnqadarlqxnt1q0xy",
    "CT.CLOUDTRAIL.PR.2" : "cok7rgoujcdjcy6bjzgpvnq8w",
    "CT.CLOUDTRAIL.PR.3" : "67gjp46h60ptsvgh5wpn45ln4",
    "CT.CLOUDTRAIL.PR.4" : "2xjlpcsek8sge0iom3co4l5o",
    "CT.CLOUDWATCH.PR.1" : "2npf8p29hz6uyqjshzxnemw84",
    "CT.CLOUDWATCH.PR.2" : "de5sygz3v7a2rhq921s59xna6",
    "CT.CLOUDWATCH.PR.3" : "c92ed44a1bs6fko01twdx8x3a",
    "CT.CLOUDWATCH.PR.4" : "5bvombm8zgv9qmenya8tmavdd",
    "CT.CODEBUILD.PR.1" : "ckrg5g06x08c6pem7ee4is3k5",
    "CT.CODEBUILD.PR.2" : "d04qbloib2yczb2tx05rdva68",
    "CT.CODEBUILD.PR.3" : "4b0nsxnd47747up54ytdqesxi",
    "CT.CODEBUILD.PR.5" : "6dpgkjzyyt65olhsx6finiabk",
    "CT.CODEBUILD.PR.6" : "1mjw22804cmcyvfoc9val1rp5",
    "CT.DAX.PR.1" : "9e142j5h5c0jeqjcv3ol1vqkg",
    "CT.DAX.PR.2" : "gxlxyl12ek25b0efajt5lowr",
    "CT.DAX.PR.3" : "d14ys13onx7ubamg3zvwc8arn",
    "CT.DMS.PR.1" : "2etbspmu59bn579d7iumqjw26",
    "CT.DMS.PR.2" : "7302wc3xwgneagxgp743m36h3",
    "CT.DOCUMENTDB.PR.1" : "1csaqxiy3h463r51ehmcygrs2",
    "CT.DOCUMENTDB.PR.2" : "a9mpmzqyklwdbinywnq7eyq7j",
    "CT.DYNAMODB.PR.1" : "4docid6lj7n5tstdmm7btegt1",
    "CT.DYNAMODB.PR.2" : "alyxc1dmqnr9nzz4luslcsl44",
    "CT.EC2.PR.1" : "2wsx5sll20kxurworrzvjn7by",
    "CT.EC2.PR.10" : "1gm8qm2tnpje8r57leqydoka1",
    "CT.EC2.PR.11" : "dqr0y5wiori5frkzvn07uqe84",
    "CT.EC2.PR.12" : "6j74p6mejd9oi0gj5yf94koew",
    "CT.EC2.PR.13" : "ywt2dac1mdoeffk216hldg2q",
    "CT.EC2.PR.14" : "dcug5jyd7aj1yu3x1o4uzxr8t",
    "CT.EC2.PR.16" : "bb805usnmdk1ld7hsq2vi2kma",
    "CT.EC2.PR.17" : "79a7auxur6wcvp0l22t7cvwmz",
    "CT.EC2.PR.18" : "bce6ofmtdbektdgc4okoo766g",
    "CT.EC2.PR.19" : "8wje0p71of2xdeg4cp548327a",
    "CT.EC2.PR.2" : "aha0vx4wj2i7ckaa8ffykfz3f",
    "CT.EC2.PR.20" : "1qkqqe0ls91axar4t4w60dljn",
    "CT.EC2.PR.3" : "6b0cmdhjrkgioo253ccycy4oz",
    "CT.EC2.PR.4" : "39o509cq5imkyls30q7qc6ynd",
    "CT.EC2.PR.5" : "cdn8m939ffm43gw43z7fzlmoj",
    "CT.EC2.PR.6" : "9rzcmeejk0s6h5dnneg4co4fo",
    "CT.EC2.PR.7" : "7yz8c0qv47vjgkdrynsa8y9bf",
    "CT.EC2.PR.8" : "d2holtrxu08aelk62vjm0ddk0",
    "CT.EC2.PR.9" : "ev4nb47hdhfom2ic1k0ljc7am",
    "CT.EC2.PV.1" : "97hes2glndlye96adkdcdeef4",
    "CT.EC2.PV.2" : "dkjyeuczqj3rnyhn9116p16pw",
    "CT.EC2.PV.3" : "chlzfpsllhs3knp1ixr773wa6",
    "CT.EC2.PV.4" : "5gujd7bqfq2uuprvwxrr7xgae",
    "CT.EC2.PV.5" : "53u8m2z255npa7rldrk77vm5z",
    "CT.EC2.PV.6" : "9sqqct2tcfsnr10yl4f2av1mq",
    "CT.ECR.PR.1" : "3xcivm3c25pfvr8qtq8yxyof8",
    "CT.ECR.PR.2" : "t9o3qsxqw22ioiativ7dcuzo",
    "CT.ECR.PR.3" : "97g86tjzkpoa0m6v6xo32cl2a",
    "CT.ECS.PR.1" : "21nm9kqpiqnryvy75132lvxlm",
    "CT.ECS.PR.10" : "df8n98wrttk59yxgng6g16k7g",
    "CT.ECS.PR.11" : "7h3w6x1qz33e0swgny0r74ddl",
    "CT.ECS.PR.12" : "4zmoqwzgn7w8igdd9fh4h5k3r",
    "CT.ECS.PR.2" : "duombdryr3yrwwhik7bl2gs0m",
    "CT.ECS.PR.3" : "edrndmzjx677dsswpz8pm7cg7",
    "CT.ECS.PR.4" : "kaakm3582c817xkt0y81wjag",
    "CT.ECS.PR.5" : "2nnlov4vuktsxvs8fpugcmc32",
    "CT.ECS.PR.6" : "d29uqtr7w7hi43evwg8q9vqlj",
    "CT.ECS.PR.7" : "cjeudbdk93wvmof9k8nzjhamp",
    "CT.ECS.PR.8" : "c72rcacpmpwyproprwrgkt9bh",
    "CT.ECS.PR.9" : "dpj7wsjmmm2xnxkh1d273lyqh",
    "CT.EKS.PR.1" : "7ilkw6llasd04qnzzygndht00",
    "CT.EKS.PR.2" : "1xg698zqw921vpmp4o9gn191n",
    "CT.ELASTICACHE.PR.1" : "40io0fs9jcohqsf81xxhdsiup",
    "CT.ELASTICACHE.PR.2" : "5015te7azm2g0kzfkazsm1u23",
    "CT.ELASTICACHE.PR.3" : "9nzsnbhzlhlb99v65evfcqyww",
    "CT.ELASTICACHE.PR.4" : "azjkoa34w6evavp2e88hk9tds",
    "CT.ELASTICACHE.PR.5" : "ejf2q39mn31fnslutfeta56bu",
    "CT.ELASTICACHE.PR.6" : "efet1wmobuchr7zuepnqk928r",
    "CT.ELASTICACHE.PR.7" : "jb9jmjvf4l8qdtnhecks5fxj",
    "CT.ELASTICACHE.PR.8" : "ccuwi6ctp8txpc60ewuu3dqcg",
    "CT.ELASTICBEANSTALK.PR.1" : "5w9ie29h0nydz0kiqjaw8f5wg",
    "CT.ELASTICBEANSTALK.PR.2" : "b32lxrut44jde3j4xgwpsjeip",
    "CT.ELASTICBEANSTALK.PR.3" : "1fb4lycitexn2xokphqa027q1",
    "CT.ELASTICFILESYSYSTEM.PR.1" : "58jratszlp2w2z723ywcn6rmo",
    "CT.ELASTICFILESYSYSTEM.PR.2" : "dotzbwbqu9bwjk667tdz1s5gf",
    "CT.ELASTICFILESYSYSTEM.PR.3" : "7h12g8sqhcb75kvbrvvbrei4g",
    "CT.ELASTICFILESYSYSTEM.PR.4" : "8he1cmercpc3bpmeox7umw7uy",
    "CT.ELASTICLOADBALANCING.PR.1" : "a8u7xqkneji82jnb18nnx3skz",
    "CT.ELASTICLOADBALANCING.PR.10" : "ajlgwooddm54wepz191t6gd0a",
    "CT.ELASTICLOADBALANCING.PR.11" : "84va5oe7cf1vf6cearzy1ihx1",
    "CT.ELASTICLOADBALANCING.PR.12" : "jedj1vrh80frsz4lzit7bnng",
    "CT.ELASTICLOADBALANCING.PR.13" : "9jn7wp8p2kkltuvukc1ls3irb",
    "CT.ELASTICLOADBALANCING.PR.14" : "b76q2v8jwqu2c7c69n5igwtdp",
    "CT.ELASTICLOADBALANCING.PR.15" : "3a699klk5mdr7usnzmwouvlvp",
    "CT.ELASTICLOADBALANCING.PR.2" : "9ie52b5sd3nrjl5lu7j0bxrwm",
    "CT.ELASTICLOADBALANCING.PR.3" : "brth4czak1rwfpx7xuh6qyffy",
    "CT.ELASTICLOADBALANCING.PR.4" : "hnknpwu1wtqwc6sb692qzmji",
    "CT.ELASTICLOADBALANCING.PR.5" : "66nrimjebtsu7m96scyz4dueu",
    "CT.ELASTICLOADBALANCING.PR.6" : "3wcvbmcosqtvdq7rtpntodcme",
    "CT.ELASTICLOADBALANCING.PR.7" : "22yu4cabtvco34emorco1lgiu",
    "CT.ELASTICLOADBALANCING.PR.8" : "li7tfgzs8raf72m7p5i1lizs",
    "CT.ELASTICLOADBALANCING.PR.9" : "9qewfxm4wco89fq9q4ahpslmm",
    "CT.EMR.PR.1" : "bqx20bjwe4tdy1w4zi8192tu7",
    "CT.EMR.PR.2" : "k4qy7jlrbyefbuesv7dfjsi7",
    "CT.EMR.PR.3" : "583f93frurad97zbjmoeoijwp",
    "CT.EMR.PR.4" : "8uqhm5d86umcugve6ssqhoogh",
    "CT.GLUE.PR.1" : "7nrgl2xk5xcda335edesx460o",
    "CT.GUARDDUTY.PR.1" : "7r038sl1gpvi5b8v6v860yi6",
    "CT.IAM.PR.1" : "c8gsegqwv11rna94vbgowk3ju",
    "CT.IAM.PR.2" : "aha5r73xm13gvf65wsbeeaqb4",
    "CT.IAM.PR.3" : "9u12ke7qxp1osdrt1lawuxqd4",
    "CT.IAM.PR.4" : "9cd5b18dsblxz58cwq0ssygf2",
    "CT.IAM.PR.5" : "awakvzgyu7cqq5t7zyiqiws3j",
    "CT.KINESIS.PR.1" : "87jalnn3gng30z1rma3o3dm9b",
    "CT.KMS.PR.1" : "2revak523sghuta5v2e4tg2np",
    "CT.KMS.PR.2" : "2j02qinjaeklsfmzqe88p6ex1",
    "CT.KMS.PR.3" : "7fbj9uqa9wznmogib9efijqy9",
    "CT.KMS.PV.1" : "8tq2qsio9o9nliasf359rvnso",
    "CT.KMS.PV.2" : "7u843eisp117t8mfucyul9whq",
    "CT.KMS.PV.4" : "71n7llai8iqaexpegculrycus",
    "CT.KMS.PV.5" : "6thin9envwltcgee4f3f2yukv",
    "CT.KMS.PV.6" : "d0dnxm99zg7gfsow9ei70qhea",
    "CT.LAMBDA.PR.2" : "9yksb96puyx3sy9rpmpvxa9np",
    "CT.LAMBDA.PR.3" : "8jyhx8tw05jw29leqyxxzvf04",
    "CT.LAMBDA.PR.4" : "3isxiu8l69yubgk9rtgv1vlxg",
    "CT.LAMBDA.PR.5" : "am05zps6qc75j09wv4b7tqja0",
    "CT.LAMBDA.PR.6" : "bztphybe4jkl13j36xz2nw3wa",
    "CT.LAMBDA.PV.1" : "3qpnxfs5vtzd2v2ql2f2mu7tq",
    "CT.LAMBDA.PV.2" : "aksh80tizisat4i4ou8qg1hdy",
    "CT.MQ.PR.1" : "f0jtanw9cc2kovi7f98s7b2gv",
    "CT.MQ.PR.2" : "amlm31c5mw60pfb9dfgt7u8mu",
    "CT.MSK.PR.1" : "cnf3685ffa97dj0w9bvpsi8ty",
    "CT.MSK.PR.2" : "e7mqi0w2ywbmn42t0qjoduqic",
    "CT.NEPTUNE.PR.1" : "aenn7kiiscoqg9iu4rvvot8pr",
    "CT.NEPTUNE.PR.2" : "8y2p3h665b0uaglmua8blwgzk",
    "CT.NEPTUNE.PR.3" : "ddk50syaq0j9rr024krpnmk6o",
    "CT.NEPTUNE.PR.4" : "9arkyv4lyswwq035045inikmu",
    "CT.NEPTUNE.PR.5" : "cw80t1n8yo3v806qzy0lkpc1c",
    "CT.NETWORK-FIREWALL.PR.1" : "f4b6bay8cvkof8j6t8mcay6up",
    "CT.NETWORK-FIREWALL.PR.2" : "aulugka29s8e92o82scyn2c6u",
    "CT.NETWORK-FIREWALL.PR.3" : "e6uvbbp1zrfkyhb7gxjbxlul8",
    "CT.NETWORK-FIREWALL.PR.4" : "bvn37f8af1d34u08nmzddp8nt",
    "CT.NETWORK-FIREWALL.PR.5" : "8rhshovhd2kxuabdkiooigrzi",
    "CT.OPENSEARCH.PR.1" : "1s22umk2oofcd18imoxbb0j9r",
    "CT.OPENSEARCH.PR.10" : "851rbwk8urbwq6xipbk88rgor",
    "CT.OPENSEARCH.PR.11" : "6uxezbdziqage2271kegbhn5u",
    "CT.OPENSEARCH.PR.12" : "6s095tcdtgab75dd0229m5x6n",
    "CT.OPENSEARCH.PR.13" : "e1w8ixmbr6x4m8z7p5rsffeun",
    "CT.OPENSEARCH.PR.14" : "5itwco43d8kn5l0c84orcwusw",
    "CT.OPENSEARCH.PR.15" : "dp4qhn0f8mgc3k927y9aat72m",
    "CT.OPENSEARCH.PR.16" : "9cn9exuxe72umdmzywv0zy4vx",
    "CT.OPENSEARCH.PR.2" : "li8nmtny5h8am4sqtak7pzir",
    "CT.OPENSEARCH.PR.3" : "3kuqjg3nd0bcu0ollr7gpo2gs",
    "CT.OPENSEARCH.PR.4" : "9ujqglo7btzmusoty4sfrjktd",
    "CT.OPENSEARCH.PR.5" : "9jknufacdt0rqsllqt3gq070h",
    "CT.OPENSEARCH.PR.6" : "5zrm4npxgrw96q4a2nzcs40qi",
    "CT.OPENSEARCH.PR.7" : "axw1tavysfksk02swfwqzkyc6",
    "CT.OPENSEARCH.PR.8" : "92kgj057l2retz5b3t099c9rm",
    "CT.OPENSEARCH.PR.9" : "1ftrgwdr2fg9yf34a55alo5oo",
    "CT.RDS.PR.1" : "avr20py8ssve39u69tyuxcanz",
    "CT.RDS.PR.10" : "8lop1l8hws9j1yw8vetk9979i",
    "CT.RDS.PR.11" : "e8vaezeylthbutvrg1dp39etj",
    "CT.RDS.PR.12" : "1ux2daaazy34yz0jsf5ca6oct",
    "CT.RDS.PR.13" : "1cxi1br09glocqagbfwu2kgxu",
    "CT.RDS.PR.14" : "1f258q4na01hy97ie6jf3mzl5",
    "CT.RDS.PR.15" : "5raqq5kxdcuto536m7gr05ov3",
    "CT.RDS.PR.16" : "59y47gfli6wgzxe5osd0odkqu",
    "CT.RDS.PR.17" : "duu49sdsq55fqtt1wwilhp1em",
    "CT.RDS.PR.18" : "bovbgyqi0yh21g87dlrhjn7sl",
    "CT.RDS.PR.19" : "boao5tu00i34909uc9s6kkjjj",
    "CT.RDS.PR.2" : "b82600oh1s53mtsm4cvnuc8dm",
    "CT.RDS.PR.20" : "ddonk5t03dr15srtwca914qhq",
    "CT.RDS.PR.21" : "7lz80go0m92b703u16una1ij0",
    "CT.RDS.PR.22" : "35miel80yql4qqgqy3e8tfkk6",
    "CT.RDS.PR.23" : "9aj5vlxkdk2omkauvx0gg52w8",
    "CT.RDS.PR.24" : "47j0mbl42qhyollch0c07aawc",
    "CT.RDS.PR.25" : "zttf5g9b9ie71w9my1y7svor",
    "CT.RDS.PR.26" : "3vpiusxpwvka3hbgh6v3nvm80",
    "CT.RDS.PR.27" : "de8snvvza6dhgtdtw6lz84mxi",
    "CT.RDS.PR.28" : "6qvep4e99ha6pgc0osehy0w4t",
    "CT.RDS.PR.29" : "b9kr6r4vdp20n1ce7j49x79xo",
    "CT.RDS.PR.3" : "5xf0am75fkx2kb3285ralqjj9",
    "CT.RDS.PR.30" : "2egytv5yvxf1g7zf9wi8vfo0r",
    "CT.RDS.PR.4" : "4jsy379fd0q0gtab42c8elvci",
    "CT.RDS.PR.5" : "6unff4za5vtu72g08jic7cetr",
    "CT.RDS.PR.6" : "cirlqrtgjbh19aewgsfr1uqas",
    "CT.RDS.PR.7" : "aj66acgw3hcp9db3h34p7bif6",
    "CT.RDS.PR.8" : "78f92s2ll0ytk5bf2s6uektmk",
    "CT.RDS.PR.9" : "8x0i8fb1xo3xsddbvmt9fb2cd",
    "CT.REDSHIFT.PR.1" : "7tr6sea4ltehzuwlez45kdaqy",
    "CT.REDSHIFT.PR.2" : "84umarzxwkkkdirmeyh0i214l",
    "CT.REDSHIFT.PR.3" : "40nrh3p2f57harlddvrqxxk8d",
    "CT.REDSHIFT.PR.4" : "6r0yj70tusr6nxodszegp4doe",
    "CT.REDSHIFT.PR.5" : "40mzu6gyjvf1s30wwiwvu2vll",
    "CT.REDSHIFT.PR.6" : "2ddno09h3a0mlonpu5pn47jaz",
    "CT.REDSHIFT.PR.7" : "13s8u3tbnm1vtnpiocjc99272",
    "CT.REDSHIFT.PR.8" : "1w1btibtrddu9hmsgmdtxsocz",
    "CT.REDSHIFT.PR.9" : "af64faj0u894zyrn7ulkuh480",
    "CT.S3.PR.1" : "8uk3vrotlr08jfb0cbxp5klbs",
    "CT.S3.PR.10" : "b7p5zuz380l9pblepsai1u6an",
    "CT.S3.PR.11" : "8z6s5s1vsaxgc2db0ny6pue61",
    "CT.S3.PR.12" : "k3d8si0zsxhlodnq4gehffpb",
    "CT.S3.PR.2" : "bldrbdi7z89soc6a4jmwahe13",
    "CT.S3.PR.3" : "ennuq33rpjxv01mb4zkmnssvh",
    "CT.S3.PR.4" : "63nig7rrub7lwkf5kf1jkmwzr",
    "CT.S3.PR.5" : "41tk5dewlofcsudoey8zn5suw",
    "CT.S3.PR.6" : "cm0b0o08urbq2ss415p2xv4qb",
    "CT.S3.PR.8" : "bjycx3imkp5f2dxkbf842mhy4",
    "CT.S3.PR.9" : "dhbetm8k9wvgnq4vpw57aqc5o",
    "CT.SAGEMAKER.PR.1" : "by3ykpgv0a73qqv1k8jksf8q0",
    "CT.SAGEMAKER.PR.2" : "e832sfwz1eeru2ivf1b9r31qz",
    "CT.SAGEMAKER.PR.3" : "cu3a2h6bg8a0bjtmzyqmmfa4l",
    "CT.SQS.PR.1" : "bv0kk64dmkuv1vfbiwbj3vcrw",
    "CT.SQS.PR.2" : "eqy4pbwtj21ji8uqbkyg33qp8",
    "CT.STEPFUNCTIONS.PR.1" : "df61o7uwv7t62vpg8378iqa1k",
    "CT.STEPFUNCTIONS.PR.2" : "6zh3jkqbv4hd1hulike7cfwxe",
    "CT.WAF-REGIONAL.PR.1" : "6csncgh1xwaq9j42mfn2fij5i",
    "CT.WAF-REGIONAL.PR.2" : "b50ipjd7z7k9p5gxd9h5e04uh",
    "CT.WAF.PR.1" : "9kjdrap00esnd7qj4z4dbdbve",
    "CT.WAF.PR.2" : "8qwmt73k1pmev15yxadi4hcrg",
    "CT.WAFV2.PR.1" : "f24n74c0vgobtgjnwijsuee81",
    "CT.WAFV2.PR.2" : "3w3roor8ts9qugm8mz7vhxovk",
    "SH.ACM.1" : "6196g072xsp96yeq3aa5ow15z",
    "SH.ACM.2" : "1kr9whr0fy8tz4bfietctxh3d",
    "SH.APIGateway.1" : "8b795uo7ta44xds2mr7h4tgk2",
    "SH.APIGateway.2" : "3v9hn8vpajqciaj0homrlydmn",
    "SH.APIGateway.3" : "7pdmqlysm3i8lnon07c3p2lmg",
    "SH.APIGateway.4" : "1yt2mylwh4mvvmph8zh14u0w4",
    "SH.APIGateway.5" : "15huo48ff4l7nwxg1eszn9qw3",
    "SH.APIGateway.8" : "bl3b3iwosie4uad2jdydlmfmo",
    "SH.APIGateway.9" : "dns22nesigd5eczdcxsa1ygdk",
    "SH.Account.1" : "936nas0vwjqfmaumywxecv4y0",
    "SH.AppSync.5" : "6za5udesvyxsal3k8qht2wjgy",
    "SH.AutoScaling.1" : "b61u1pcyvygazgt2njhhjtxbq",
    "SH.AutoScaling.2" : "75lgibnablrt2n4dblyjydsfk",
    "SH.AutoScaling.3" : "8u5eb9o3ltpt3j53pqz2dlpyz",
    "SH.AutoScaling.6" : "bj7znrtsv1n3jqyru4ms375iw",
    "SH.AutoScaling.9" : "eqefzt92pp38u3zt0hkfhfppy",
    "SH.Autoscaling.5" : "925ti9whpn7tngmvy6jz0h2zz",
    "SH.CloudTrail.1" : "435u8u4w5bsf02tkxga5jisbc",
    "SH.CloudTrail.2" : "1v5utj327dwamxfg70eqkip3x",
    "SH.CloudTrail.4" : "624yg0j9d8swiglwfc1m4kvnm",
    "SH.CloudTrail.5" : "22ra7otpbud6h1na9af9jomzz",
    "SH.CloudTrail.6" : "by6pw078riiooqt3mnpta72m1",
    "SH.CodeBuild.1" : "3cd5fkbvt163o067yjk6loijb",
    "SH.CodeBuild.2" : "asxseuqeuohimxb9smsjwk8x3",
    "SH.CodeBuild.3" : "8lxtvgb071qjzu52xaibphrrb",
    "SH.CodeBuild.4" : "e3v8fi29x44gio9tofwwihwns",
    "SH.DMS.1" : "6autpl45jhop9x18flfwoj3gy",
    "SH.DMS.9" : "e8uyhdni6d6o8oh3uga3f8ph5",
    "SH.DocumentDB.3" : "5n2znlld9ifthyjdzzbx0pg34",
    "SH.DynamoDB.1" : "keijcuz1a7n70grfn62tb2jj",
    "SH.DynamoDB.2" : "4d1yqf199sh45iamcze67hzwd",
    "SH.DynamoDB.3" : "ddf0j0agoih8nnk4uqsea70vi",
    "SH.EC2.1" : "c9p83s9lc7djp5olntwupfuse",
    "SH.EC2.10" : "2b4vgfjbtx4pb9s988aemab7d",
    "SH.EC2.15" : "can3v316sasn3wqvp04w52s41",
    "SH.EC2.16" : "1z2biltzuotpq1tha9ruwwh2g",
    "SH.EC2.17" : "3tse859hs70lyqf1nx72qamrv",
    "SH.EC2.18" : "7s0skkzcmt76sa7jcq1o18qzy",
    "SH.EC2.19" : "5z82gribzptw1rdfcau8z9z7w",
    "SH.EC2.2" : "dowsaumj3n874siszx3j94m9n",
    "SH.EC2.20" : "18wi2nbzm0ylljdvg2gj2xii9",
    "SH.EC2.21" : "e94oghk9gn3wb5xhpw9l53xr9",
    "SH.EC2.22" : "24ywtvprufel9w8ib057lm810",
    "SH.EC2.23" : "df0phuni4byvyhj790539nnbb",
    "SH.EC2.25" : "dsmdhgbjz2aqawvvhv3ujqm2f",
    "SH.EC2.3" : "31r5w4ftcd5o9tnlawbrbq3jj",
    "SH.EC2.4" : "3ryt59hz2zkf3884avx32g51z",
    "SH.EC2.6" : "blnba8rkwuvh4lm6aczhfk3t6",
    "SH.EC2.7" : "bkgka7c3b9hdcd9p20oz9r3gl",
    "SH.EC2.8" : "10au7g2tdfmykh2cunfbpbam1",
    "SH.EC2.9" : "960bqg9vkfg0lxyzi4lpdaehp",
    "SH.ECR.1" : "b8xfedwee6zjr0bjrxdqvv08s",
    "SH.ECR.2" : "6sxt4tyln6gry68wrcfsnksuz",
    "SH.ECR.3" : "atc5hbhnft0xrwwa902e967oz",
    "SH.ECS.1" : "d31piucqa3dio93faggfk8vy1",
    "SH.ECS.10" : "7ou4s13l28dwiquq0bzp12f5f",
    "SH.ECS.12" : "89i94u942tzhe1r68qo4oaagq",
    "SH.ECS.2" : "9q95fgqyj5tqodrep7z08fn3",
    "SH.ECS.3" : "dycyzecoqi2gp98wq67dtrafv",
    "SH.ECS.4" : "7rrde1yjxvdp8hyfina89c07z",
    "SH.ECS.5" : "5xfc1qb6l2q8jr0vdyvyu0fqd",
    "SH.ECS.8" : "bktnc7uaz6coupf6s5glndwo1",
    "SH.EFS.1" : "5cksj6jdycadjupdbviikn1w7",
    "SH.EFS.2" : "2voadb0frlwic4td1suk3jesd",
    "SH.EFS.3" : "b70555g8agij1lxuhgb7x9gld",
    "SH.EFS.4" : "3qazzpguqq0n6geyu5kzwh1dl",
    "SH.EKS.1" : "61hje4oueps6qdxay3759xied",
    "SH.EKS.2" : "9hqjwwzisk8btaa6q33qpo36n",
    "SH.ELB.10" : "7e2vbhsghm8rh3nveq0kft19u",
    "SH.ELB.12" : "7tqjg1wjebbny88lgblu7umbm",
    "SH.ELB.13" : "9l5bd52379g6v735hulaitj6w",
    "SH.ELB.14" : "cqust9z7tbpbv2tohdz3i7ftw",
    "SH.ELB.2" : "h62b1cmddin9wmd3e4w2864g",
    "SH.ELB.3" : "74mhre7s6y2cr789780t9hzvw",
    "SH.ELB.4" : "1ug5jnm69tznpl6rhma6wvo4k",
    "SH.ELB.5" : "ejrilme8vugugno940czjhckr",
    "SH.ELB.6" : "8pu5dvvv27zdohdqpw2xswtnx",
    "SH.ELB.7" : "5e5rwfx1vhw99y33kpaknzsyh",
    "SH.ELB.8" : "rkb6v3lnq0f158tzcquujnku",
    "SH.ELB.9" : "6royj224b35goy1bu54t5ehzw",
    "SH.ELBv2.1" : "bb1z7mcem11mxvf29xqiayi4",
    "SH.EMR.1" : "440h83vm4atxzcuvbtsakqxsg",
    "SH.ES.1" : "52iz7x1epwic30sa4ix4e5kz2",
    "SH.ES.2" : "ejm4g6mng6fxo5mhvfrhvdude",
    "SH.ES.3" : "5ygzhuf50xfqh63mt0m8obdr3",
    "SH.ES.4" : "aiscu2gomv5gmo22qg85mmcg6",
    "SH.ES.5" : "7gcsk04pwjt1irzdk1j15dx64",
    "SH.ES.6" : "czcy1ac9ob3vh65egx0dg5hyg",
    "SH.ES.7" : "3fniit0abolhdps3wb304jujb",
    "SH.ES.8" : "9k4fpwd1j1qzloioztzaq0p7g",
    "SH.ElastiCache.3" : "bbsr0p06l2n513aj89qft7lci",
    "SH.ElastiCache.4" : "9h9u2q1fy9ie3h6o6x0gmyes9",
    "SH.ElastiCache.5" : "9pgeabaz87154y0ougviebucd",
    "SH.ElastiCache.6" : "ddvtn3n8ip0x1fbzkffdnl8kh",
    "SH.ElasticBeanstalk.1" : "d5banuw10hyj2nkvb7o95l1br",
    "SH.ElasticBeanstalk.2" : "1an9k4k69b0i6rduq6sswntd1",
    "SH.EventBridge.3" : "y1w3f690x8lfn3vk0xthehnu",
    "SH.GuardDuty.1" : "62smpoz33dsy0oa7u1iwa58lz",
    "SH.IAM.1" : "a7ertnvgba7449o25l6s75nrj",
    "SH.IAM.2" : "dbxr2jcz3qi5x5o59fnjjnn",
    "SH.IAM.21" : "5twgfhky20yeb4je8grnbhilf",
    "SH.IAM.3" : "bxh5ltpzbcr59zexx3llhg3l9",
    "SH.IAM.4" : "ezfflnh8xgshxb78grtt5sjc5",
    "SH.IAM.5" : "6g3gbim493yofkc9eg6vvnahm",
    "SH.IAM.6" : "6m7lp1leyojfbzer6q0qlf8n",
    "SH.IAM.7" : "5iuddap2hogdop2zua6rhiwb1",
    "SH.IAM.8" : "8fejjs77ecmvo0clp5u47i8w6",
    "SH.KMS.1" : "b198btr6ha8i7mmeqa905brwk",
    "SH.KMS.2" : "32nnzih136gfvn9wp0rwq31u2",
    "SH.KMS.3" : "37d0dcugjcf4g8srpy5m1ua28",
    "SH.KMS.4" : "esv514s4zvnxdunuijbgerpn3",
    "SH.Kinesis.1" : "egf85gd5r49psdwpojyqpo7xv",
    "SH.Lambda.1" : "63j7m384h4zhhq64ecs02qfil",
    "SH.Lambda.2" : "1hce3tm2wnlq2lqofua7o5w8q",
    "SH.Lambda.3" : "6lab3lc7elw17g1d3t2gd4tv",
    "SH.Lambda.5" : "6v0mz1xu8exsdhyrh9y7ax8q3",
    "SH.MQ.5" : "avo0pwqx247dwpymeg722atjs",
    "SH.MQ.6" : "16337onhk4t8bimdk8rke6d7x",
    "SH.MSK.1" : "95dq7ah5kez9bn9ztk01cuei1",
    "SH.Neptune.1" : "7aswgwribsitkx0m6pd1v2tdw",
    "SH.Neptune.2" : "csh1it7bkmf42ogtzyid4kaxo",
    "SH.Neptune.3" : "6j12jokz80z5h3zv2bje070j9",
    "SH.Neptune.4" : "5peokgbch88xuq80eefye6rq4",
    "SH.Neptune.5" : "2a71o1kqmriy6nsiwwdrbwn4v",
    "SH.Neptune.6" : "7u57eu205vilgfjq2y3vuvocx",
    "SH.Neptune.7" : "altwcmtvp7nvvcqpvfh3gpg9v",
    "SH.Neptune.8" : "10z7mgavx30a8t4ptbp82pka8",
    "SH.NetworkFirewall.3" : "1movyhy1wowgtt02wiv4io8yk",
    "SH.NetworkFirewall.4" : "9fi82zt38s2eqknhk6ve34n5s",
    "SH.NetworkFirewall.5" : "8s9b3ltxiyv9w3fzr7qw025f0",
    "SH.NetworkFirewall.6" : "83k816oum3tlj237w9dhuqxzh",
    "SH.Opensearch.1" : "691c2ikpatjpmy65murj1k4my",
    "SH.Opensearch.2" : "nqjdkuonfho8mrwfbe54jy69",
    "SH.Opensearch.3" : "47ii1k01y2x7291d5bvj09ty8",
    "SH.Opensearch.4" : "9a45x0gak918b9vxbu3424vv3",
    "SH.Opensearch.5" : "1uxrer67ioq53vbcegq91jzfv",
    "SH.Opensearch.6" : "5tlvkbmlv8sh1fj5vmk0fujcc",
    "SH.Opensearch.7" : "33m536kv8dk2unseovko4wcwv",
    "SH.Opensearch.8" : "62d2oyd8a1yq5ioo2h1qmszrg",
    "SH.RDS.1" : "183fofr1mzp1r3bdyj6li0gfr",
    "SH.RDS.10" : "118d61dwy7ubs1gsk21bouwlq",
    "SH.RDS.11" : "5d19349hvvxs9cor9qktzlomd",
    "SH.RDS.12" : "1vqbysu58m40zcobk2mjmkypu",
    "SH.RDS.13" : "et4s7vhndbi99xncfu67jc035",
    "SH.RDS.15" : "1rexydukaagfnnfq57hdf0thz",
    "SH.RDS.17" : "c9i8q2vq9koeh0khffjccp6sj",
    "SH.RDS.18" : "5vq9dc77hmsbqus2m6f0qmu62",
    "SH.RDS.19" : "c0otcg4p8rbsxbbu08azz8rl4",
    "SH.RDS.2" : "bbns1svmi60sz11i658ot4amf",
    "SH.RDS.20" : "3gni74hi7iutmxn43ilnssnp6",
    "SH.RDS.21" : "al0mw7f1dfzsgsu77pze2z9d9",
    "SH.RDS.22" : "e41edcjkkjuefkfgbnklvuts3",
    "SH.RDS.23" : "3il74fb3vkwfhbfeseiwp6ria",
    "SH.RDS.25" : "4x0mc5it3ih69z9c30ct4n9vp",
    "SH.RDS.27" : "4dv7ovawpzbxhvbzxkkw2raxb",
    "SH.RDS.3" : "dsrtfqf4g9gvlguj5hqahozla",
    "SH.RDS.4" : "e79v0zr4za0glvkkaalwgmy78",
    "SH.RDS.5" : "1b4fdyb4pwzlryd3wds4nu754",
    "SH.RDS.6" : "83hjfo2r3dk0lrvlhq9tjy28o",
    "SH.RDS.8" : "885t5re6xfytjzc3p918pwxbi",
    "SH.RDS.9" : "d7nfwdnk5azb17gp2velty027",
    "SH.Redshift.1" : "ake7olbo7w529vgocfyogfzov",
    "SH.Redshift.10" : "agv8wouu7jsn9b6pk55gz9b1d",
    "SH.Redshift.2" : "8rtqexy894f19yyn41xte3qb4",
    "SH.Redshift.4" : "bfcly1pqkwxpqotagd52aemy6",
    "SH.Redshift.6" : "cl4jobbbpzwwkzb2445vicsqq",
    "SH.Redshift.7" : "bf3ye0momi6mzdt1kcqw0wov7",
    "SH.Redshift.8" : "c4pmkxna8snc34v3kjgrfpd0q",
    "SH.Redshift.9" : "6a1bz5hdg1lxx8hai66if96h8",
    "SH.S3.1" : "alm61aw5oxpgfgh3bhmish87u",
    "SH.S3.10" : "bc2tgfpnhs2piwnibf4dd2ihp",
    "SH.S3.11" : "7tar07l5idkl1bnjxw4n7zj0l",
    "SH.S3.12" : "7n8wxxw16kavh7yj3isu40jix",
    "SH.S3.13" : "c6p34qsetj0gaek8fd470cepz",
    "SH.S3.17" : "36dugz3xq9x8onu2ypib5vudo",
    "SH.S3.2" : "bf7tazquaqsbjnbc6048qsk5c",
    "SH.S3.3" : "4eew3kh2s4a5nz872k7m7iybz",
    "SH.S3.5" : "35hoe56okxxh2ujnsub92wkym",
    "SH.S3.6" : "acjwjxihojir1u24v4g1a9yre",
    "SH.S3.8" : "2xknmxmas18xrbvvexzq9k06g",
    "SH.S3.9" : "7ssm1k3r6iltm4pb3n2qan4a9",
    "SH.SQS.1" : "40iswz80r8swd3ttlmib5w6q8",
    "SH.SSM.1" : "dlysjbtqyfbp3z8j9eckw3ukk",
    "SH.SSM.2" : "asay4olrtvjlnbcy78xsqywme",
    "SH.SSM.3" : "bjfcuphd9b3rk7ab87irreozw",
    "SH.SSM.4" : "2lm11lwo7o2f9r319g2a03ks3",
    "SH.SageMaker.1" : "4bb3tcgou1ylnhd6go25k977p",
    "SH.SageMaker.2" : "dr2xzx1mnwnsbf8cjujdjawzl",
    "SH.SageMaker.3" : "2zp2qwp4ac7hq9s0h6odw5gwn",
    "SH.SecretsManager.1" : "54a6rhgyml01y7vexkrn7bgd2",
    "SH.SecretsManager.2" : "a0p95c9n9q648xn58pd3d5gg5",
    "SH.SecretsManager.3" : "d38hp8ykspvpdq1r6lo3hnbj0",
    "SH.SecretsManager.4" : "75co45x51mcpv6imev5ya08kd",
    "SH.WAF.10" : "2e0kn0xzh3xht7rx3vaclp3ml",
    "SH.WAF.2" : "afymobet6f9mxy5y3856chat2",
    "SH.WAF.3" : "bl21dopmmejux8nnotqh9apfj",
    "SH.WAF.4" : "y0gx1htr821dsab8fq7wp68z",
    "CT.CLOUDFORMATION.PR.1" : "zafyxpgsg1ck4b99fc0197sk",
    "CT.KMS.PV.3" : "beyhbq47poryf052dlel7oig5"
  }
}