# grache-test

Test project for grache

## Structure

- [inspect.rb](#inspectrb)
- [main.rb](#mainrb)
- [pack.sh](#packsh)
- [stub.rb](#stubrb)

## Getting started

- Clone this repo
- Copy all scripts to your execution
- Modify main.rb according to your needs

## Files

### inspect.rb

Tool for inspecting GoodData Ruby Platform environment

***Output***

```
2015-02-10 15:54:09.408-0500 [INFO]: request_id=123456 action=jvmscript status=SCRIPT_EXEC
2015-02-10 15:54:37.839-0500 [INFO]: request_id=123456 ENV = {
  "PATH": "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
  "JAVA_HOME": "/usr/lib/jvm/java-1.7.0",
  "SHLVL": "1",
  "_": "/usr/bin/java",
  "container": "lxc",
  "GEM_PATH": "/usr/share/ruby/gems",
  "GEM_HOME": "/usr/share/ruby/gems",
  "HOSTNAME": "b34c34b2c1e4",
  "PWD": "/mnt/execution",
  "HOME": "/var/www"
}
2015-02-10 15:54:37.840-0500 [INFO]: request_id=123456 SCRIPT_PARAMS = {
  "GDC_SST": "***",
  "USER_EMAIL": "joe.doe@gooddata.com",
  "PROCESS_NAME": "grache",
  "EXECUTABLE": "inspect.rb",
  "GDC_PROTOCOL": "https",
  "GDC_HOSTNAME": "gooddata.com",
  "GDC_REQUEST_ID": "123456"
}
2015-02-10 15:54:37.840-0500 [INFO]: request_id=123456 GoodData::VERSION = 0.6.10
2015-02-10 15:54:37.845-0500 [INFO]: request_id=123456 action=jvmscript status=SCRIPT_OK
```

### main.rb

Placeholder for your application

### pack.sh

Tool for packaging ruby script for deployment easily

### stub.rb

Grache wrapper


