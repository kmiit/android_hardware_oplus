/*
 * SPDX-FileCopyrightText: 2026 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

package vendor.oplus.hardware.subsys_interface.subsys_radio;

@VintfStability
parcelable EccEntryInfo {
    char mcc = 0;
    char mnc = 0;
    byte mask = 0;
    String ecc;
    byte catLen = 0;
    byte special = 0;
    int catVal;
    byte mode;
}
