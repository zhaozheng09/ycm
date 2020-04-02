#!/bin/bash

source /opt/meituan/hadoop/bin/hadoop_user_login.sh hadoop-hdp

#/opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_single_thread.tar.gz
#/opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv_single_thread.tar.gz zhaozheng09/



name=$1
echo $1
if [ "$1" == "normal" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_normal.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_normal.tar.gz
elif [ "$1" == "v2" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_release_v2.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_release_v2.tar.gz
elif [ "$1" == "rel" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_release.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_release.tar.gz
elif [ "$1" == "com" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_complete.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_complete.tar.gz
elif [ "$1" == "log" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_mt_1.0.4_log.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_mt_1.0.4_log.tar.gz
elif [ "$1" == "correct" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_correct.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_correct.tar.gz
elif [ "$1" == "core150000" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_core_150000.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_core_150000.tar.gz
elif [ "$1" == "hj" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_hj.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_hj.tar.gz
elif [ "$1" == "core" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_core.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_core.tar.gz
elif [ "$1" == "new" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_new.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_new.tar.gz
elif [ "$1" == "user" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_hdfs_log_version.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_hdfs_log_version.tar.gz
elif [ "$1" == "afomd5" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_afo_md5.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_afo_md5.tar.gz
elif [ "$1" == "tfrmd5" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_tfr_md5.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_tfr_md5.tar.gz
elif [ "$1" == "weijia" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_weijia.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_weijia.tar.gz


elif [ "$1" == "batch" ]
then
    /opt/meituan/hadoop/bin/hdfs dfs -rm zhaozheng09/tf_venv_batch.tar.gz
    /opt/meituan/hadoop/bin/hdfs dfs -put docker/tf_venv.tar.gz zhaozheng09/tf_venv_batch.tar.gz
fi
