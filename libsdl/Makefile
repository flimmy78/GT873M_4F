
include ../makefile.rc
MOD_NAME=sdl
MOD_TARGET=library
MOD_SRC_HOME=$(SWHOME)/src

ECOS_INSTALL_HOME=../iros/install
IROS_CONFIG_H=$(shell pwd)/../iros_config.h

MOD_CFLAGS= -Werror -Wno-uninitialized -nostdlib -fno-inline \
-mthumb-interwork -mthumb -mcpu=arm9 \
-include $(IROS_CONFIG_H)

CFILES= \
$(SWHOME)/src/onu/cmd/cs_cmd.c \
$(SWHOME)/src/onu/sdl/cmn/cmn/sdl_fec_cmn.c \
$(SWHOME)/src/onu/sdl/cmn/ctc/sdl_enc.c \
$(SWHOME)/src/onu/sdl/cmn/cmn/sdl_qos_cmn.c \
$(SWHOME)/src/onu/sdl/cmn/cmn/sdl_pon.c \
$(SWHOME)/src/onu/cmd/sdl_fdb_cmd.c \
$(SWHOME)/src/onu/cmd/sdl_qos_cmd.c \
$(SWHOME)/src/onu/cmd/sdl_classify_cmd.c \
$(SWHOME)/src/onu/sdl/cmn/ctc/sdl_qos.c \
$(SWHOME)/src/onu/sdl/cmn/ctc/sdl_mac_filterbind_util.c \
$(SWHOME)/src/onu/sdl/cmn/ctc/sdl_classify_util.c \
$(SWHOME)/src/onu/sdl/mports/ctc/sdl_util.c \
$(SWHOME)/src/onu/cmd/sdl_vlan_cmd.c \
$(SWHOME)/src/onu/sdl/cmn/cmn/sdl_vlan_util.c \
$(SWHOME)/src/onu/cmd/sdl_port_cmd.c \
$(SWHOME)/src/onu/cmd/sdl_macfilter_cmd.c \
$(SWHOME)/src/onu/sdl/cmn/cmn/sdl_event_cmn.c \
$(SWHOME)/src/onu/cmd/sdl_pon_cmd.c \
$(SWHOME)/src/onu/cmd/sdl_show_cmd.c \
$(SWHOME)/src/onu/cmd/aal/aal_cmd.c \
$(SWHOME)/src/onu/cmd/aal/aal_enc_cmd.c \
$(SWHOME)/src/onu/cmd/aal/aal_fec_cmd.c \
$(SWHOME)/src/onu/cmd/aal/aal_bm_cmd.c \
$(SWHOME)/src/onu/cmd/aal/aal_flow_cmd.c \
$(SWHOME)/src/onu/cmd/aal/aal_l2_cmd.c \
$(SWHOME)/src/onu/cmd/aal/aal_pon_cmd.c \
$(SWHOME)/src/onu/cmd/aal/aal_mpcp_cmd.c \
$(SWHOME)/src/onu/sdl/cmn/cmn/sdl_ma.c \
$(SWHOME)/src/onu/sdl/cmn/cmn/sdl_mpcp_cmn.c \
$(SWHOME)/src/onu/sdl/cmn/ctc/sdl_mpcp.c \
$(SWHOME)/src/onu/cmd/sdl_ma_cmd.c \
$(SWHOME)/src/onu/cmd/sdl_ptp_cmd.c \
$(SWHOME)/src/onu/cmd/sdl_clear_cmd.c \
$(SWHOME)/src/onu/sdl/cmn/cmn/sdl.c

ifeq ($(strip $(USING_SW_TYPE)),RTK)
CFILES += $(SWHOME)/src/onu/sdl/mports/ctc/sdl_fdb.c \
$(SWHOME)/src/onu/sdl/cmn/cmn/sdl_ptp.c \
$(SWHOME)/src/onu/sdl/mports/cmn/sdl_port.c \
$(SWHOME)/src/onu/sdl/mports/ctc/sdl_macfilter.c \
$(SWHOME)/src/onu/sdl/mports/ctc/sdl_vlan.c \
$(SWHOME)/src/onu/sdl/mports/ctc/sdl_pktctrl.c \
$(SWHOME)/src/onu/sdl/mports/ctc/sdl_mc.c \
$(SWHOME)/src/onu/sdl/mports/ctc/sdl_classify.c \
$(SWHOME)/src/onu/cmd/aal/3rd/realtek/rtk_cmd.c \
$(SWHOME)/src/onu/cmd/aal/3rd/realtek/rtk_l2_cmd.c \
$(SWHOME)/src/onu/cmd/aal/3rd/realtek/rtk_port_cmd.c \
$(SWHOME)/src/onu/cmd/aal/3rd/realtek/rtk_acl_cmd.c \
$(SWHOME)/src/onu/cmd/aal/3rd/realtek/rtk_led_cmd.c \
$(SWHOME)/src/onu/cmd/aal/3rd/realtek/rtk_int_cmd.c \
$(SWHOME)/src/onu/cmd/aal/3rd/realtek/rtk_qos_cmd.c \
$(SWHOME)/src/onu/cmd/aal/3rd/realtek/rtk_glb_cmd.c \
$(SWHOME)/src/onu/cmd/aal/3rd/realtek/rtk_acl_cmd.c 
else
ifeq ($(strip $(USING_SW_TYPE)),MRV)
CFILES += $(SWHOME)/src/onu/sdl/mports/marvell/sdl_mrv_fdb.c \
$(SWHOME)/src/onu/sdl/mports/marvell/sdl_mrv_ptp.c \
$(SWHOME)/src/onu/sdl/mports/marvell/sdl_mrv_port.c \
$(SWHOME)/src/onu/sdl/mports/marvell/sdl_mrv_macfilter.c \
$(SWHOME)/src/onu/sdl/mports/marvell/sdl_mrv_vlan.c \
$(SWHOME)/src/onu/sdl/mports/marvell/sdl_mrv_pktctrl.c \
$(SWHOME)/src/onu/sdl/mports/marvell/sdl_mrv_mc.c \
$(SWHOME)/src/onu/sdl/mports/marvell/sdl_mrv_classify.c \
$(SWHOME)/src/onu/cmd/aal/3rd/marvell/mrv_l2_cmd.c \
$(SWHOME)/src/onu/cmd/aal/3rd/marvell/mrv_cmd.c
else
$(error USING NONSUPPORT SWITCH TYPE !!! error in $(PWD)/libsdl/Makefile)
endif
endif
MOD_INCLUDES=-I$(ECOS_INSTALL_HOME)/include \
-I$(SWHOME)/src/cmn/plat/include \
-I$(SWHOME)/src/cmn/plat/osal/ecos \
-I$(SWHOME)/src/cmn/plat/sdl \
-I$(SWHOME)/src/cmn/plat/peripheral \
-I$(SWHOME)/src/include \
-I$(SWHOME)/src/onu/cmd \
-I$(SWHOME)/src/onu/plat/lynxd \
-I$(SWHOME)/src/onu/aal/lynxd/include \
-I$(SWHOME)/src/onu/aal/lynxd \
-I$(SWHOME)/src/onu/sdl/include/ctc \
-I$(SWHOME)/src/onu/cmd \
-I$(SWHOME)/src/onu/sdl/cmn/cmn \
-I$(SWHOME)/src/onu/sdl/cmn/ctc \
-I$(SWHOME)/src/onu/sdl/mports/cmn \
-I$(SWHOME)/src/onu/sdl/mports/ctc \
-I$(SWHOME)/src/onu/sdl/cmn/ctc \
-I$(SWHOME)/src/onu/sdl/include/cmn \
-I$(SWHOME)/src/onu/3rd/driver/realtek \
-I$(SWHOME)/src/onu/3rd/driver/marvell \
-I$(SWHOME)/src/onu/sdl/include \
-I$(SWHOME)/src/onu/sdl/include/cmn \
-I$(SWHOME)/src/onu/apps/lynx/gpio/cmn	\
-I$(SWHOME)/src/onu/apps/gwd

ifeq ($(strip $(USING_SW_TYPE)),MRV)
MOD_INCLUDES += -I$(SWHOME)/gtmrv/include \
-I$(SWHOME)/gtmrv/include/h/driver \
-I$(SWHOME)/gtmrv/include/h/msApi \
-I$(SWHOME)/gtmrv/include/h/platform
endif

include $(SWHOME)/tools/support/build/makefile.mod_start

