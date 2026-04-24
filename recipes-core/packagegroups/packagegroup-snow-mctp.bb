SUMMARY = "Snow MCTP package group"
DESCRIPTION = "Packages for MCTP/PLDM and related tools"
LICENSE = "MIT"
PR = "r1"

inherit packagegroup

RDEPENDS:${PN} = " \
    socat \
    mctp \
    mctp-setup \
    python3-modules \
    pldm \
    util-linux-ldattach \
"
