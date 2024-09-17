BEGIN{
    FS=","
    f=0
}
{
    gsub( "\"", "", $0 );
    gsub(/以下に掲載がない場合|.*くる場合|.*村一円/,"",$9);
    if (f==$3) {
        next;
    } else
    {
        f=0
    }
    if (($9 ~ /（.+、/ || $9 ~ /（.*・/) && f==0) f = $3;
    $9 = gensub(/([^（]*)（.*/, "\\1", "G", $9)
    c[0] = gensub(/第?([０-９0-9]+)地割(.*)/, "\\3", "G" ,$9)
}
{
    if (!a[$3,$7,$8,c[0]]++) {
        if(c[0] ~ /、/) {
            if (c[0] ~ /町/) {
                split(c[0], chou, "町")
                split(chou[2], array, "、")
                chou[1] = chou[1] "町"
            } else {
                split(c[0], array, "、")
                chou[1] = ""
            }
            for (x in array) {
                print substr($3, 1, 3) "-" substr($3,4,4) "\t" $7 $8 chou[1] array[x] "\t" "地名" "\t"
            }
        } else {
            print substr($3, 1, 3) "-" substr($3,4,4) "\t" $7 $8 c[0] "\t" "地名" "\t"
        }
    }
}
