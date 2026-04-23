FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://stub-temp-sensor.cfg \
    file://mctp.cfg \
    file://ast2700a1-evb.dts \
"

do_configure:append () {
    cp ${WORKDIR}/sources/ast2700a1-evb.dts ${S}/arch/arm64/boot/dts/aspeed/
}
