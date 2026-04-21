FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
    file://ast2700-evb.json \
"

do_install:append() {
    install -d ${D}${datadir}/entity-manager/configurations
    install -m 0644 ${WORKDIR}/sources/ast2700-evb.json ${D}${datadir}/entity-manager/configurations
}
