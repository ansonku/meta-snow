# Use AF_MCTP transport (kernel MCTP stack via CodeConstruct/mctpd)
# instead of mctp-demux-daemon (libmctp userspace stack).
PACKAGECONFIG:append = " transport-af-mctp"
PACKAGECONFIG:remove = "transport-mctp-demux"

