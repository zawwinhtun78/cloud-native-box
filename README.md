# cloud-native-box

#### Create /etc/vbox/networks.conf
```
sudo su
cd /etc
mkdir vbox
cd vbox
vi networks.conf
* 0.0.0.0/0 ::/0
:wq!
```

#### zawwinhtun GitHub Account
```
ssh-keygen -t rsa -b 4096 -C "zawwinhtun@gmail.com"
github.com.zawwinhtun
pbcopy < ~/.ssh/github.com.zawwinhtun.pub

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github.com.zawwinhtun
ssh -T git@github.com

git config user.name "zawwinhtun"
git config user.email "zawwinhtun@gmail.com"
```

#### Up and Running vagrant box
```
git clone git@github.com:cloud-native/cloud-native-box.git
cd cloud-native-box
mkdir .ssh
cd .ssh
ssh-keygen
/Users/zawwinhtun/cloud-boxes/cloud-native-box/.ssh/id_rsa
cd ../
vagrant up
```

#### Spin up k8s cluster
```
vagrant ssh
cd k8s-cop/1-single-cluster/setup/
./setup-kindcluster123.sh
```

#### aws config
```
cat ~/.aws/config
```

```
# heartworks-nonprod
[profile heartworks-nonprod]
region = ap-southeast-1

# heartworks-nonprod-terraform-role
[profile heartworks-dev-terraform-role]
region = ap-southeast-1
source_profile = heartworks-nonprod
role_arn = arn:aws:iam::xxxxxxxxxxxx:role/heartworks-nonprod-terraform-role

# heartworks-dev-terraform-role
[profile heartworks-dev-terraform-role]
region = ap-southeast-1
source_profile = heartworks-nonprod
role_arn = arn:aws:iam::xxxxxxxxxxxx:role/heartworks-dev-terraform-role

# heartworks-security-terraform-role
[profile heartworks-security-terraform-role]
region = ap-southeast-1
source_profile = heartworks-nonprod
role_arn = arn:aws:iam::xxxxxxxxxxxx:role/heartworks-security-terraform-role

```

#### aws credentials
```
cat ~/.aws/credentials
```
```
# heartworks-nonprod
[heartworks-nonprod]
aws_access_key_id =
aws_secret_access_key =
```
