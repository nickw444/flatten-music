mkdir "./out"

find . | grep ".fixed.m3u$" | while read p; do
    outdir=`dirname "$p"`
    outdir="./out/$outdir"
    mkdir -p "$outdir"
    fixed_file=$(echo "$p" | sed s/\.fixed\.m3u//)
    echo $fixed_file
    cp "$p" "./out/$fixed_file"
done
