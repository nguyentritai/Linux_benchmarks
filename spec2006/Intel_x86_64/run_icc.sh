export PATH=/opt/intel/bin/:${PATH}
export LD_LIBRARY_PATH=/opt/intel/lib/ia32:${LD_LIBRARY_PATH}
source shrc

#runspec --define default-platform-flags --rate --copies 64 -c cpu2006-20170905-49158.cfg --define smt-on --define cores=32 --define physicalfirst --define invoke_with_interleave --define drop_caches --tune peak --size=ref --noreportable --rebuild -o all bzip2

#runspec --rate=1 -c cpu2006-20170905-49158.cfg --tune peak --size=train --noreportable --rebuild  --iteration=1 astar xalancbmk 
#runspec --rate=1 -c cpu2006-20170905-49158.cfg --tune base --size=train --noreportable --rebuild  --iteration=1 omnetpp 

#runspec --rate 64 -c cpu2006-20170808-48198.cfg --define smt --define cores=32 --define physicalfirst --define invoke_with_interleave --define drop_caches --define THP_enabled --tune peak --size=ref --iteration=1 --noreportable -o all int
runspec --rate 64 -c cpu2006-20170808-48198.cfg --define smt --define cores=32 --define physicalfirst --define invoke_with_interleave --define drop_caches --define THP_enabled --tune base --size=ref --iteration=1 --noreportable -o all int

#runspec --define default-platform-flags --rate --copies 64 -c cpu2006-20170905-49158.cfg --define smt-on --define cores=32 --define physicalfirst --define invoke_with_interleave --define drop_caches --tune peak --size=ref --noreportable --rebuild  --iteration=1 -o all int

#sleep 5

#runspec --define default-platform-flags --rate --copies 64 -c cpu2006-20170905-49158.cfg --define smt-on --define cores=32 --define physicalfirst --define invoke_with_interleave --define drop_caches --tune base --size=ref --noreportable --rebuild  --iteration=1 -o all int

