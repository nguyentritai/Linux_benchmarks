export PATH=/opt/intel/bin/:${PATH}
export SPEC2017=/home/amcclab/benchmark/speccpu2017
export LD_LIBRARY_PATH=/usr/local/lib:/usr/local/lib64:/opt/intel/lib/ia32:/opt/intel/lib/intel64:${SPEC2017}/je5.0.1-32:${SPEC2017}/je5.0.1-64:${LD_LIBRARY_PATH}
source ./shrc

cpupower frequency-set -g performance
ulimit -s unlimited
echo always > /sys/kernel/mm/transparent_hugepage/enabled
sync; echo 3 > /proc/sys/vm/drop_caches
sleep 2

#runcpu --define default-platform-flags --copies 32 --configfile xeon_silver_icc.cfg --define smt-on --define cores=16 --define physicalfirst --define invoke_with_interleave --define drop_caches --tune base --output_format all --nopower --runmode rate --tune base --size refrate intrate

### Test train size
#runcpu --define default-platform-flags --copies 32 --configfile xeon_silver_icc.cfg --define smt-on --define cores=16 --NoRatios --define invoke_with_interleave --define drop_caches --tune base --output_format all --nopower --runmode rate --size train --iterations=1 intrate

#runcpu --define default-platform-flags --copies 32 --configfile xeon_silver_icc.cfg --define smt-on --define cores=16 --NoRatios --define invoke_with_interleave --define drop_caches --tune peak --output_format all --nopower --runmode rate --size train --iterations=1 523 525 531 541 548 557


### Ref size run
#runcpu --define default-platform-flags --copies 32 --configfile xeon_silver_icc.cfg --define smt-on --define cores=16 --NoRatios --define invoke_with_interleave --define drop_caches --tune base --output_format all --nopower --runmode rate --size ref --iterations=1 intrate

#sleep 5
runcpu --define default-platform-flags --copies 32 --configfile xeon_silver_icc.cfg --define smt-on --define cores=16 --NoRatios --define invoke_with_interleave --define drop_caches --tune peak --output_format all --nopower --runmode rate --size ref --iterations=1 intrate

