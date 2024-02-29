#
# Copyright (C) 2016 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Allow Lineage config to override others
-include device/google/bonito/sargo/BoardConfigLineage.mk

TARGET_BOOTLOADER_BOARD_NAME := sargo
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 20

include device/google/bonito/BoardConfig-common.mk
-include vendor/google/sargo/BoardConfigVendor.mk
-include vendor/google/bonito/BoardConfigVendor.mk
