declare -r REMOTE=/run/media/max/2e7c3160-5810-47d0-90d8-065cb2757297/private/docs
#declare -r REMOTE=~/Kalyzée/server/docs
declare -r DRYRUN_OPT='' # "--dry-run"
for i in AEMedia "Alliance Française" Boursorama Bouygues Chatmosc Ceprogim CAF CM CPAM EDF Fluendo Free Immo Impots Kalyzee OFII PayPal Pole Raiffeisen SG Urssaf WhatsApp Арсений Брат Мама Отец Ульяна Юля Ярославка Мага ; do
    echo $i: "$HOME" to "$REMOTE"
    rsync -a -v $DRYRUN_OPT "$HOME/docs/$i/" "$REMOTE/$i"
    echo $i: "$REMOTE" to "$HOME"
    rsync -a -v $DRYRUN_OPT "$REMOTE/$i/" "$HOME/docs/$i"
done
