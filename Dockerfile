# If you get an error message that looks like:
#   Error parsing reference: "keldaio/spark as builder"
#   is not a valid repository/tag: invalid reference format
# It means that you're running an older version of Docker
# that doesn't support using "as builder", and you'll
# need to upgrade.
FROM keldaio/spark as builder

RUN apt-get update
RUN apt-get install -y maven scala git wget

RUN wget -q -O http://apache.spinellicreations.com/zeppelin/zeppelin-0.7.3/zeppelin-0.7.3-bin-all.tgz | tar -xzf - \
&& mv /zeppelin* /zeppelin 

ENV PATH /zeppelin/bin:$PATH
