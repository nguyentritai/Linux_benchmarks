#export PATH=/opt/intel/bin/:${PATH}
#export LD_LIBRARY_PATH=/usr/lib64:${LD_LIBRARY_PATH}
source shrc

cpupower frequency-set -g performance
sleep 3

#runspec --rate=1 -c xeon_gold_gcc_O2_nosmartheap.cfg --tune base --size=train --noreportable --rebuild  --iteration=1 astar 
#runspec --rate=1 -c xeon_gold_gcc.cfg --tune base --size=train --noreportable --rebuild  --iteration=1 perlbech 
#runspec --rate=1 -c xeon_gold_gcc.cfg --tune peak --size=train --noreportable --rebuild  --iteration=1 perlbench 

#runspec --define default-platform-flags --rate --copies 64 -c xeon_gold_gcc.cfg --define smt-on --define cores=32 --define physicalfirst --define invoke_with_interleave --define drop_caches --tune peak --size=ref --noreportable --rebuild  --iteration=1 -o all int

#sleep 10

#runspec --define default-platform-flags --rate --copies 64 -c xeon_gold_gcc.cfg --define smt-on --define cores=32 --define physicalfirst --define invoke_with_interleave --define drop_caches --tune base --size=ref --noreportable --rebuild  --iteration=1 -o all int

#sleep 10

#runspec --define default-platform-flags --rate --copies 64 -c xeon_gold_gcc_O2.cfg --define smt-on --define cores=32 --define physicalfirst --define invoke_with_interleave --define drop_caches --tune base --size=ref --noreportable --rebuild  --iteration=1 -o all int

runspec --define default-platform-flags --rate --copies 64 -c xeon_gold_gcc.cfg --define cores=32 --define physicalfirst --define invoke_with_interleave --define drop_caches --tune peak --size=ref --noreportable --rebuild --iteration=1 -o all int

sleep 10

runspec --define default-platform-flags --rate --copies 64 -c xeon_gold_gcc.cfg --define cores=32 --define physicalfirst --define invoke_with_interleave --define drop_caches --tune base --size=ref --noreportable --rebuild --iteration=1 -o all int

sleep 10

runspec --define default-platform-flags --rate --copies 64 -c xeon_gold_gcc_O2.cfg --define cores=32 --define physicalfirst --define invoke_with_interleave --define drop_caches --tune base --size=ref --noreportable --rebuild --iteration=1 -o all int

sleep 10

runspec --define default-platform-flags --rate --copies 64 -c xeon_gold_gcc_O2_nosmartheap.cfg --define cores=32 --define physicalfirst --define invoke_with_interleave --define drop_caches --tune base --size=ref --noreportable --rebuild --iteration=1 -o all int
