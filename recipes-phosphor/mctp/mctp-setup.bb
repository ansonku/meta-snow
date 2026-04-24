SUMMARY = "MCTP I2C interface setup service"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

RDEPENDS:${PN} = "mctp"

S = "${UNPACKDIR}"

SRC_URI = "file://mctp-setup.service"

inherit systemd

do_install() {
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${UNPACKDIR}/mctp-setup.service ${D}${systemd_system_unitdir}
}

SYSTEMD_SERVICE:${PN} = "mctp-setup.service"
