### DISCLAIMER ###

# PLEASE BE AWARE THAT AUTOMATED TRADING WITH THIS SOFTWARE MAY BE RISKY, ADDICTIVE, UNETHICAL OR ILLEGAL. ITS MISUSE MAY ALSO CAUSE FINANCIAL LOSS.

# NONE OF THE AUTHORS, CONTRIBUTORS, #ADMINISTRATORS, OR ANYONE ELSE CONNECTED WITH NUBITS, IN ANY WAY WHATSOEVER, CAN BE RESPONSIBLE FOR THE USE YOU MAKE OF THIS SOFTWARE

# By using any software in this package you declare to have accepted the afore-mentioned risks.

# Neither the developer of this software, nor the liquidity operation on NuPool.net is in any way related to the official Nu core-team.






### REQUIRED PARAMETERS ###

# NuBits payout address

address = xxxxxxx

# API key from the exchange

apikey = xxxxxxx

# API secret from the exchange

apisecret = xxxxxxx





### OPTIONAL PARAMETERS ###

# interest: minimal interest rate at which you want to get payouts in percent (0.25% = 0.25).

# Set to 0 for pool maximum. You can specify two interest rates for the bid and ask side 

# by separating them with a comma, e.g. 0.25,0.1

interest = 0

# ordermatch: place orders even if they would match with an existing order

# set this value only to True if you know what you are doing.

ordermatch = False

# Determines window of allowed price deviation

deviation = 0.0019

# Determines market spread

offset = 0.004





### GENERAL OPERATION PARAMETERS - DO NOT CHANGE ###

#server=eu.nupool.net
server=nupond.net:3333
unit=cny
exchange=bter
