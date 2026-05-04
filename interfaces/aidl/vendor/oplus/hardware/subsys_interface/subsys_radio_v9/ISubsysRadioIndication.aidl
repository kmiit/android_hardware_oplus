/*
 * SPDX-FileCopyrightText: 2026 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

package vendor.oplus.hardware.subsys_interface.subsys_radio;

import vendor.oplus.hardware.subsys_interface.subsys_radio.ActionResult;
import vendor.oplus.hardware.subsys_interface.subsys_radio.CellInfos;
import vendor.oplus.hardware.subsys_interface.subsys_radio.CyberSenseHALCellInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.FenceCreatedInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.FenceMergedInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.FenceRemovedInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.FenceStateInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.ImsMessage;
import vendor.oplus.hardware.subsys_interface.subsys_radio.ImsRtpControlInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.ImsRtpRedunEventInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.ImsRtpState;
import vendor.oplus.hardware.subsys_interface.subsys_radio.MccChangeIndInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.NasAccessBarringStatusInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.NeighborCellInfos;
import vendor.oplus.hardware.subsys_interface.subsys_radio.Nr5gDrxType;
import vendor.oplus.hardware.subsys_interface.subsys_radio.NrcaInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.NwRateLimitingInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.RrcStatusIndInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.RxBoostStateInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.SceneMode;
import vendor.oplus.hardware.subsys_interface.subsys_radio.SimOverdueIndType;
import vendor.oplus.hardware.subsys_interface.subsys_radio.SimlockInfoType;
import vendor.oplus.hardware.subsys_interface.subsys_radio.SimlockStateType;
import vendor.oplus.hardware.subsys_interface.subsys_radio.SmartNetworkSelectInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.VodataEventInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.VonrBackoffInfo;
import vendor.oplus.hardware.subsys_interface.subsys_radio.VonrRollbackInfo;

@VintfStability
interface ISubsysRadioIndication {
    void radioAlertEventInd(int type, int arg2, int arg3, in int[] ints);
    void radioAllCellInfoInd(int type, in CellInfos[] cellInfoss, in NeighborCellInfos[] neighborCellInfoss);
    void radioAtomDataInd(int type, in byte[] data);
    void radioCarrierLockStatusChangeInd(int type, in byte[] data);
    void radioCssnfNumInd(int type, in byte[] data);
    void radioCyberSenseCellInfoInd(int type, in CyberSenseHALCellInfo[] cyberSenseHALCellInfos);
    void radioCyberSenseEventInd(int type, int arg2);
    void radioDtmfStartInd(int type, byte value);
    void radioDtmfStopInd(int type, byte value);
    void radioFenceCreateInd(int type, in FenceCreatedInfo fenceCreatedInfo);
    void radioFenceMergedInd(int type, in FenceMergedInfo[] fenceMergedInfos);
    void radioFenceRemovedInd(int type, in FenceRemovedInfo[] fenceRemovedInfos);
    void radioFenceStateChangeInd(int type, in FenceStateInfo[] fenceStateInfos);
    void radioHstModeInd(int type, int arg2);
    void radioHyperUplinkStateInd(int type, int arg2, int arg3, int arg4);
    void radioImsMessageInd(int type, in ImsMessage imsMessage);
    void radioImsRtpControlInd(int type, in ImsRtpControlInfo imsRtpControlInfo);
    void radioImsRtpRedunEventInd(int type, in ImsRtpRedunEventInfo imsRtpRedunEventInfo);
    void radioImsRtpStateInd(int type, in ImsRtpState imsRtpState);
    void radioLinkLatencyInfoInd(int type, int arg2);
    void radioLteCaInfoInd(int type, in int[] ints);
    void radioLteCellInfoInd(int type, int arg2, int arg3, boolean enable);
    void radioLteRegDomainInd(int type, int arg2);
    void radioMccChangeInd(int type, in MccChangeIndInfo mccChangeIndInfo);
    void radioMdmTestInd(int type, int arg2);
    void radioMipiOscFreqHopStateInd(int type, int arg2);
    void radioMsimSubModeInd(int type, int arg2, int arg3);
    void radioNasAccessBarringStatusInd(int type, in NasAccessBarringStatusInfo nasAccessBarringStatusInfo);
    void radioNecInd(int type, in byte[] data);
    void radioNetworkActionResultInd(int type, in ActionResult[] actionResults);
    void radioNonddsNullPagingInd(int type, byte value, int arg3, int arg4);
    void radioNonddsPagingInd();
    void radioNr5gDrxInd(int type, in Nr5gDrxType nr5gDrxType);
    void radioNr5gFreqTypeIndication(int type, int arg2);
    void radioNrCapInd(int type, byte value);
    void radioNrcaInfoChangeInd(int type, in NrcaInfo nrcaInfo);
    void radioNwRateLimitingInd(int type, in NwRateLimitingInfo nwRateLimitingInfo);
    void radioQosEventReportInd(int type, in byte[] data);
    void radioQosPeriodReportInd(int type, in byte[] data);
    void radioRegionLockStatusChangeInd(int type, in byte[] data);
    void radioRrcStatusChangeInd(int type, in RrcStatusIndInfo rrcStatusIndInfo);
    void radioSceneModeInd(int type, in SceneMode[] sceneModes);
    void radioServingCellInfoInd(int type, in CellInfos cellInfos);
    void radioSidoIssueInd(int type, in int[] ints);
    void radioSimOverdueInd(int type, in SimOverdueIndType simOverdueIndType);
    void radioSimlockInfoChangedInd(int type, in SimlockInfoType simlockInfoType);
    void radioSimlockStateChangedInd(int type, in SimlockStateType simlockStateType);
    void radioSingleSimChangeInd(int type, byte value);
    void radioSmartNetworkSelectInd(int type, in SmartNetworkSelectInfo smartNetworkSelectInfo);
    void radioStateChanged(int type, int arg2);
    void radioVodataEventInd(int type, in VodataEventInfo vodataEventInfo);
    void radioVonrBackoffInfoChangeInd(int type, in VonrBackoffInfo vonrBackoffInfo);
    void radioVonrRollbackInfoChangeInd(int type, in VonrRollbackInfo vonrRollbackInfo);
    void rxBoostStateInd(int type, in RxBoostStateInfo rxBoostStateInfo);
}
