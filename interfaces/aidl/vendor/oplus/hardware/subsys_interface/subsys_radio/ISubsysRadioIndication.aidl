/*
 * SPDX-FileCopyrightText: 2026 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

package vendor.oplus.hardware.subsys_interface.subsys_radio;

import vendor.oplus.hardware.subsys_interface.subsys_radio.CellInfos;
import vendor.oplus.hardware.subsys_interface.subsys_radio.CyberSenseHALCellInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.ImsMessage;
import vendor.oplus.hardware.subsys_interface.subsys_radio.ImsRtpState;
import vendor.oplus.hardware.subsys_interface.subsys_radio.MccChangeIndInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.Nr5gDrxType;
import vendor.oplus.hardware.subsys_interface.subsys_radio.NwRateLimitingInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.SimOverdueIndType;
import vendor.oplus.hardware.subsys_interface.subsys_radio.SimlockInfoType;
import vendor.oplus.hardware.subsys_interface.subsys_radio.SimlockStateType;

@VintfStability
oneway interface ISubsysRadioIndication {
    void radioCyberSenseCellInfoInd(int type, in CyberSenseHALCellInfo[] info);
    void radioCyberSenseEventInd(int type, int value);
    void radioDtmfStartInd(int type, byte tone_type);
    void radioDtmfStopInd(int type, byte tone_type);
    void radioImsMessageInd(int type, in ImsMessage imsMessage);
    void radioImsRtpStateInd(int type, in ImsRtpState rtpState);
    void radioLteCaInfoInd(int type, in int[] ca_info);
    void radioLteRegDomainInd(int type, int value);
    void radioNecInd(int type, in byte[] data);
    void radioNonddsPagingInd();
    void radioNr5gDrxInd(int type, in Nr5gDrxType info);
    void radioNr5gFreqTypeIndication(int type, int nr5gFreqType);
    void radioSimlockInfoChangedInd(int type, in SimlockInfoType info);
    void radioSimlockStateChangedInd(int type, in SimlockStateType state);
    void radioStateChanged(int type, int state);
    void radioSidoIssueInd(int type, in int[] params);
    void radioNrCapInd(int type, byte nr_cap);
    void radioNonddsNullPagingInd(int type, byte np_type, int rat, int errcode);
    void radioCssnfNumInd(int type, in byte[] data);
    void radioMipiOscFreqHopStateInd(int type, int value);
    void radioSimOverdueInd(int type, in SimOverdueIndType state);
    void radioNwRateLimitingInd(int type, in NwRateLimitingInfo limitInfo);
    void radioMdmTestInd(int type, int data);
    void radioMsimSubModeInd(int type, int msimSubMode, int dsdaTxMode);
    void radioQosPeriodReportInd(int type, in byte[] data);
    void radioQosEventReportInd(int type, in byte[] data);
    void radioLteCellInfoInd(int type, int pci, int arfcn, boolean sib24_available);
    void radioMccChangeInd(int type, in MccChangeIndInfo roamInfo);
    void radioHstModeInd(int type, int hstMode);
    void radioServingCellInfoInd(int type, in CellInfos info);
}
