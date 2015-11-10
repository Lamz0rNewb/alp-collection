##########################################################################################
#!/bin/bash
#
# version 0.45 - added nupond_bter_cny_fix_payout_test
#
# version 0.50 - prepared southxchange ("southx") bots
#
# version 0.55 - moved fixed cost pool nupond_bter_cny_fix_payout_test to
#		nupond_bter_btc_fix_payout_test
#
# version 0.60 - removed nupond_bter_btc_fix_payout_test because nupond_bter_btc is now
#		fixed cost
#
##########################################################################################

##########################################################################################
#
# The script will leave out never used ALP.
# If the "log" directory already exists the bot will go mad.
# Remove the ALPs from the "alp_bot_array" to make the bot sane again :)
#
##########################################################################################

cwd=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) # <-- Do not edit this!
cwd=$cwd"/"
logs="/logs/"
alp_bot_array=(
liquidbits_ccedk_btc
liquidbits_ccedk_eur
liquidbits_ccedk_usd
liquidbits_southx_btc
liquidbits_southx_usd
nupond_bter_btc
nupond_bter_cny
nupool_bittrex_btc
nupool_poloniex_btc
nuriver_cryptsy_btc
nuriver_cryptsy_usd
)

for bot in "${alp_bot_array[@]}"
do
	logpath=$cwd$bot$logs
	if [ -d $logpath ]; then
	logpath="$logpath*"
	echo "ALP report for $bot"

	bot_efficiency=$(grep "efficiency" $logpath | wc -l)

	bot_efficiency_not_100=$(grep "efficiency" $logpath | grep -v "efficiency: 100.00" | wc -l)

	overall_failure_rate=$(bc <<< "scale=4; $bot_efficiency_not_100/$bot_efficiency")
	overall_success_rate=$(bc <<< "scale=4; 1-$overall_failure_rate")

	overall_efficiency_percent=$(bc <<< "scale=2; $overall_failure_rate*100")
	overall_success_rate_percent=$(bc <<< "scale=2; $overall_success_rate*100")

	echo "Overall bot failure rate: "$overall_efficiency_percent "%"
	echo "Bot at 100.00% efficiency:" $overall_success_rate_percent "%" && echo
	fi
done
