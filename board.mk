include $(BOARD_DIR)/firmware/firmware.mk


BOARDINC += $(BOARD_DIR)/generated/controllers/generated

# defines SHORT_BOARD_NAME
include $(BOARD_DIR)/meta-info.env

#undef EFI_BLUETOOTH_SETUP
#define EFI_BLUETOOTH_SETUP FALSE

# assign critical LED to a non-existent pin
DDEFS += -DLED_CRITICAL_ERROR_BRAIN_PIN=Gpio::G11

# assign critical LED to a non-existent pin if you do not have it on your board
# good old PD14 is still the default value
# DDEFS += -DLED_CRITICAL_ERROR_BRAIN_PIN=Gpio::I15
