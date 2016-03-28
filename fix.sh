
# files=$(find . | grep .m3u)
find . | grep '.m3u$'| grep -v '.fixed.m3u$' | while read p; do
    # outfile=`basename $p`
    # dir=`dirname $p`
    # echo $dir 
    # echo $outfile
    # sed "s/^\/Volumes\/iData\/Music\/music\//\/Volumes\/Media\/Music\//" "$p" > "$p.fixed.m3u"
    python fix.py "$p" > "$p.fixed.m3u"
    # exit 1
done