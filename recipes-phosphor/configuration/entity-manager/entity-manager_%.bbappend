FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
    file://ast2700-evb.json \
     file://baseboard.fru.bin \
"

do_install:append() {
    install -d ${D}${datadir}/entity-manager/configurations
    install -m 0644 ${WORKDIR}/sources/ast2700-evb.json ${D}${datadir}/entity-manager/configurations

    install -d ${D}${sysconfdir}/fru
    install -m 0444 ${UNPACKDIR}/baseboard.fru.bin ${D}${sysconfdir}/fru/baseboard.fru.bin
}
