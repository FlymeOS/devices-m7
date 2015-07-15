.class public abstract Lcom/android/internal/telephony/IHtcTelephony$Stub;
.super Landroid/os/Binder;
.source "IHtcTelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/IHtcTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IHtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IHtcTelephony"

.field static final TRANSACTION_akaAuthentication:I = 0x28

.field static final TRANSACTION_calculateAkaResponse:I = 0x24

.field static final TRANSACTION_calculateGbaBootstrappingResponse:I = 0x25

.field static final TRANSACTION_calculateNafExternalKey:I = 0x26

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x9b

.field static final TRANSACTION_checkTestIcc:I = 0x59

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x15

.field static final TRANSACTION_confirmFirstDataRoaming:I = 0x3b

.field static final TRANSACTION_dialWithoutDelay:I = 0x3f

.field static final TRANSACTION_disableLocationUpdatesExt:I = 0x88

.field static final TRANSACTION_enableLocationUpdatesExt:I = 0x87

.field static final TRANSACTION_enableMpdp:I = 0x6e

.field static final TRANSACTION_enableRegistrationState_wifi_call:I = 0x94

.field static final TRANSACTION_enableRegistrationState_wifi_call_ext:I = 0xa2

.field static final TRANSACTION_generalGetter:I = 0x1

.field static final TRANSACTION_generalSetter:I = 0x2

.field static final TRANSACTION_getActiveCallConnectTime:I = 0x49

.field static final TRANSACTION_getActiveCallNumber:I = 0x47

.field static final TRANSACTION_getActivePDPList:I = 0x6f

.field static final TRANSACTION_getBackgroundCallNumber:I = 0x48

.field static final TRANSACTION_getCFUNumber:I = 0x4d

.field static final TRANSACTION_getCFUNumberFromOperator:I = 0x50

.field static final TRANSACTION_getCallStateExt:I = 0x8d

.field static final TRANSACTION_getCardCheckedState:I = 0x92

.field static final TRANSACTION_getCdmaMin:I = 0x36

.field static final TRANSACTION_getCellLocationExt:I = 0x86

.field static final TRANSACTION_getCurrentActiveCallDuration:I = 0xa0

.field static final TRANSACTION_getCurrentCallState:I = 0x5b

.field static final TRANSACTION_getDataActivityExt:I = 0x8e

.field static final TRANSACTION_getDataStateExt:I = 0x8f

.field static final TRANSACTION_getDetailIccStatus:I = 0x3a

.field static final TRANSACTION_getDetailIccStatusExt:I = 0x9f

.field static final TRANSACTION_getEsn:I = 0x35

.field static final TRANSACTION_getGlobalDataRoamingOption:I = 0x2a

.field static final TRANSACTION_getGprsState:I = 0x3c

.field static final TRANSACTION_getGprsStateExt:I = 0xa1

.field static final TRANSACTION_getGsmNetworkType:I = 0x58

.field static final TRANSACTION_getHtcDeviceId:I = 0x2d

.field static final TRANSACTION_getHtcDeviceSvn:I = 0x2e

.field static final TRANSACTION_getHtcIccSerialNumber:I = 0x30

.field static final TRANSACTION_getHtcLine1AlphaTag:I = 0x32

.field static final TRANSACTION_getHtcLine1Number:I = 0x31

.field static final TRANSACTION_getHtcNetworkType:I = 0x64

.field static final TRANSACTION_getHtcServiceStateExt:I = 0x91

.field static final TRANSACTION_getHtcSubscriberId:I = 0x2f

.field static final TRANSACTION_getHtcVoiceMailAlphaTag:I = 0x34

.field static final TRANSACTION_getHtcVoiceMailNumber:I = 0x33

.field static final TRANSACTION_getIncallRecordingFileName:I = 0x51

.field static final TRANSACTION_getKddiUserAgent:I = 0x96

.field static final TRANSACTION_getLastError:I = 0x16

.field static final TRANSACTION_getNeighboringCellInfoExt:I = 0x89

.field static final TRANSACTION_getNetworkTypeExt:I = 0x8a

.field static final TRANSACTION_getPdnSettings:I = 0x5c

.field static final TRANSACTION_getPdnSettings2:I = 0x5f

.field static final TRANSACTION_getPhoneState:I = 0x83

.field static final TRANSACTION_getPowerKeyFlag:I = 0x4c

.field static final TRANSACTION_getPreferredNetworkType:I = 0x62

.field static final TRANSACTION_getRejectAllCalls:I = 0x7b

.field static final TRANSACTION_getSectorId:I = 0x1e

.field static final TRANSACTION_getServiceState:I = 0x3d

.field static final TRANSACTION_getSubsidyLockTypes:I = 0x38

.field static final TRANSACTION_getUSSDVerificationStatus:I = 0x69

.field static final TRANSACTION_getUSSDVerificationStrings:I = 0x6b

.field static final TRANSACTION_getVTLoopBackMode:I = 0x57

.field static final TRANSACTION_getVTSimulatedMode:I = 0x55

.field static final TRANSACTION_getVoiceMessageCountExt:I = 0x8c

.field static final TRANSACTION_hasIccCardExt:I = 0x8b

.field static final TRANSACTION_hasVTCall:I = 0x5a

.field static final TRANSACTION_hello_getDeviceId:I = 0x3

.field static final TRANSACTION_htcCdmaEndCall:I = 0x44

.field static final TRANSACTION_htcCdmaExitRadioPowerSaveMode:I = 0x42

.field static final TRANSACTION_htcModemLinkOn:I = 0x43

.field static final TRANSACTION_isCallWaiting:I = 0x4e

.field static final TRANSACTION_isFdnEnabled:I = 0x45

.field static final TRANSACTION_isInService:I = 0x90

.field static final TRANSACTION_isUimPinEnabled:I = 0x85

.field static final TRANSACTION_launchCallForwardingSettings:I = 0x7c

.field static final TRANSACTION_notifyKeyEvent:I = 0x82

.field static final TRANSACTION_notifyScreenBusy:I = 0x81

.field static final TRANSACTION_openIccLogicalChannel:I = 0x14

.field static final TRANSACTION_performHtcPhoneAction:I = 0x6d

.field static final TRANSACTION_performHtcPhoneActionExt:I = 0x9e

.field static final TRANSACTION_queryCAVE:I = 0x5

.field static final TRANSACTION_queryMD5:I = 0xc

.field static final TRANSACTION_querySSDUpdate:I = 0x7

.field static final TRANSACTION_queryUIMAUTH:I = 0xd

.field static final TRANSACTION_queryVPM:I = 0xa

.field static final TRANSACTION_requestCAVE:I = 0x4

.field static final TRANSACTION_requestCW_UW_DREG:I = 0x77

.field static final TRANSACTION_requestCW_UW_REG:I = 0x76

.field static final TRANSACTION_requestEhrpdDomainNameChangeState:I = 0x66

.field static final TRANSACTION_requestGetBtid:I = 0x22

.field static final TRANSACTION_requestGetDOMAIN:I = 0x18

.field static final TRANSACTION_requestGetEhrpdDeviceCapability:I = 0x68

.field static final TRANSACTION_requestGetEhrpdDisableCapability:I = 0x67

.field static final TRANSACTION_requestGetGID1:I = 0x29

.field static final TRANSACTION_requestGetHasISIM:I = 0x1f

.field static final TRANSACTION_requestGetIMPI:I = 0x17

.field static final TRANSACTION_requestGetIMPU:I = 0x19

.field static final TRANSACTION_requestGetIMSI:I = 0x1b

.field static final TRANSACTION_requestGetIsGBASupported:I = 0x20

.field static final TRANSACTION_requestGetKeyLifetime:I = 0x23

.field static final TRANSACTION_requestGetLTERFBandInfo:I = 0x9a

.field static final TRANSACTION_requestGetLTETxRxInfo:I = 0x99

.field static final TRANSACTION_requestGetMobileNumber:I = 0x1c

.field static final TRANSACTION_requestGetPCSCF:I = 0x1a

.field static final TRANSACTION_requestGetPCSCFAddress:I = 0x11

.field static final TRANSACTION_requestGetRand:I = 0x21

.field static final TRANSACTION_requestGetSIMType:I = 0x7d

.field static final TRANSACTION_requestGetVolteSipRegFailure:I = 0x10

.field static final TRANSACTION_requestISIMRead:I = 0x72

.field static final TRANSACTION_requestImsAkaAuthentication:I = 0x1d

.field static final TRANSACTION_requestLtePermanentlyDetached:I = 0x78

.field static final TRANSACTION_requestMD5:I = 0xb

.field static final TRANSACTION_requestQueryISIMSupported:I = 0x71

.field static final TRANSACTION_requestResetWSIMState:I = 0x74

.field static final TRANSACTION_requestSSDUpdate:I = 0x6

.field static final TRANSACTION_requestSSDUpdateConfirm:I = 0x8

.field static final TRANSACTION_requestSendKddiSmsDeliver:I = 0x98

.field static final TRANSACTION_requestSetEhrpdDisableCapability:I = 0x65

.field static final TRANSACTION_requestSetFastDormancy:I = 0x79

.field static final TRANSACTION_requestSetISIMAUTH:I = 0x73

.field static final TRANSACTION_requestSetLBSNTFY:I = 0x75

.field static final TRANSACTION_requestSetMultiRABTrafficThrottling:I = 0x2c

.field static final TRANSACTION_requestVPM:I = 0x9

.field static final TRANSACTION_resetPdnForSettingsChange:I = 0x5e

.field static final TRANSACTION_resetPdnForSettingsChange2:I = 0x61

.field static final TRANSACTION_sendAT_BRIC:I = 0x3e

.field static final TRANSACTION_sendAT_PushMail:I = 0x41

.field static final TRANSACTION_sendAllowedCSIMCommand:I = 0x46

.field static final TRANSACTION_sendCmmbAuth3GReq:I = 0x52

.field static final TRANSACTION_sendCmmbAuthGSMReq:I = 0x53

.field static final TRANSACTION_sendLanguageChange:I = 0x70

.field static final TRANSACTION_sendMTRejectMessage:I = 0x95

.field static final TRANSACTION_setCFUNumber:I = 0x4f

.field static final TRANSACTION_setDataEnabled:I = 0x7e

.field static final TRANSACTION_setGbaBootstrappingParams:I = 0x27

.field static final TRANSACTION_setGlobalDataRoamingOption:I = 0x2b

.field static final TRANSACTION_setKddiOtaStatus:I = 0x97

.field static final TRANSACTION_setPdnSettings:I = 0x5d

.field static final TRANSACTION_setPdnSettings2:I = 0x60

.field static final TRANSACTION_setPolicyDataEnabled:I = 0x80

.field static final TRANSACTION_setPowerKeyFlag:I = 0x4b

.field static final TRANSACTION_setPreferredNetworkType:I = 0x63

.field static final TRANSACTION_setPreferredNetworkType_wifi_call:I = 0x93

.field static final TRANSACTION_setRejectAllCalls:I = 0x7a

.field static final TRANSACTION_setTimeZone:I = 0x40

.field static final TRANSACTION_setUSSDVerificationStatus:I = 0x6a

.field static final TRANSACTION_setUSSDVerificationStrings:I = 0x6c

.field static final TRANSACTION_setUserDataEnabled:I = 0x7f

.field static final TRANSACTION_setVTLoopBackMode:I = 0x56

.field static final TRANSACTION_setVTSimulatedMode:I = 0x54

.field static final TRANSACTION_showIncallScreen:I = 0x84

.field static final TRANSACTION_supplyPinExt:I = 0x9c

.field static final TRANSACTION_supplyPukExt:I = 0x9d

.field static final TRANSACTION_supplySubsidyLockPin:I = 0x39

.field static final TRANSACTION_switchHoldAndActiveCall:I = 0x4a

.field static final TRANSACTION_transmitIccBasicChannel:I = 0x13

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x12

.field static final TRANSACTION_unBlockPin:I = 0x37

.field static final TRANSACTION_updateRegDregState:I = 0xe

.field static final TRANSACTION_updateSipInviteState:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.android.internal.telephony.IHtcTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IHtcTelephony;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/internal/telephony/IHtcTelephony;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1645
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 62
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 63
    .local v8, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v8, :cond_1

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_result":Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 69
    .restart local v8    # "_result":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 75
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 85
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 86
    .restart local v8    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v8, :cond_3

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    :goto_4
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_result":Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_3

    .line 92
    .restart local v8    # "_result":Landroid/os/Bundle;
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 98
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_result":Landroid/os/Bundle;
    :sswitch_3
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->hello_getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestCAVE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 116
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryCAVE()I

    move-result v8

    .line 118
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 124
    .end local v8    # "_result":I
    :sswitch_6
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 134
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->querySSDUpdate()I

    move-result v8

    .line 136
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 142
    .end local v8    # "_result":I
    :sswitch_8
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 152
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestVPM()Ljava/lang/String;

    move-result-object v8

    .line 154
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 160
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryVPM()I

    move-result v8

    .line 162
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 168
    .end local v8    # "_result":I
    :sswitch_b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 182
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryMD5()I

    move-result v8

    .line 184
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 190
    .end local v8    # "_result":I
    :sswitch_d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryUIMAUTH()I

    move-result v8

    .line 192
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 198
    .end local v8    # "_result":I
    :sswitch_e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->updateRegDregState(II)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 209
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 213
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 224
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_10
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetVolteSipRegFailure()I

    move-result v8

    .line 226
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 232
    .end local v8    # "_result":I
    :sswitch_11
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 236
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 242
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_12
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 246
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 248
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 250
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 252
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 254
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 256
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg6":Ljava/lang/String;
    move-object v0, p0

    .line 257
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 264
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 270
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 272
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 274
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 276
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 277
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 278
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 284
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v8

    .line 288
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 294
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_15
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->closeIccLogicalChannel(I)Z

    move-result v8

    .line 298
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v8, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 299
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 304
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_16
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getLastError()I

    move-result v8

    .line 306
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 312
    .end local v8    # "_result":I
    :sswitch_17
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIMPI()Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 320
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetDOMAIN()Ljava/lang/String;

    move-result-object v8

    .line 322
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 328
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIMPU()[Ljava/lang/String;

    move-result-object v8

    .line 330
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 336
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_1a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetPCSCF()Landroid/os/Bundle;

    move-result-object v8

    .line 338
    .local v8, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    if-eqz v8, :cond_5

    .line 340
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 346
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 344
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 350
    .end local v8    # "_result":Landroid/os/Bundle;
    :sswitch_1b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 354
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 360
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_1c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 363
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 364
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 370
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 373
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 374
    .local v8, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    if-eqz v8, :cond_6

    .line 376
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 382
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 380
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 386
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Landroid/os/Bundle;
    :sswitch_1e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 389
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getSectorId(I)Ljava/lang/String;

    move-result-object v8

    .line 390
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 396
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetHasISIM()Z

    move-result v8

    .line 398
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    if-eqz v8, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 399
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 404
    .end local v8    # "_result":Z
    :sswitch_20
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIsGBASupported()Z

    move-result v8

    .line 406
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    if-eqz v8, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 407
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 412
    .end local v8    # "_result":Z
    :sswitch_21
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetRand()[B

    move-result-object v8

    .line 414
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 416
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 420
    .end local v8    # "_result":[B
    :sswitch_22
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetBtid()Ljava/lang/String;

    move-result-object v8

    .line 422
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 428
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_23
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetKeyLifetime()Ljava/lang/String;

    move-result-object v8

    .line 430
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 436
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_24
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 440
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 441
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->calculateAkaResponse([B[B)Landroid/os/Bundle;

    move-result-object v8

    .line 442
    .local v8, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v8, :cond_9

    .line 444
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 450
    :goto_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 448
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 454
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v8    # "_result":Landroid/os/Bundle;
    :sswitch_25
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 458
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 459
    .restart local v2    # "_arg1":[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;

    move-result-object v8

    .line 460
    .restart local v8    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v8, :cond_a

    .line 462
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 468
    :goto_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 466
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 472
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v8    # "_result":Landroid/os/Bundle;
    :sswitch_26
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 475
    .restart local v1    # "_arg0":[B
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->calculateNafExternalKey([B)[B

    move-result-object v8

    .line 476
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 478
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 482
    .end local v1    # "_arg0":[B
    .end local v8    # "_result":[B
    :sswitch_27
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 486
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 495
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_28
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 499
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 500
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->akaAuthentication([B[B)Landroid/os/Bundle;

    move-result-object v8

    .line 501
    .local v8, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v8, :cond_b

    .line 503
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 509
    :goto_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 507
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 513
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v8    # "_result":Landroid/os/Bundle;
    :sswitch_29
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetGID1()Ljava/lang/String;

    move-result-object v8

    .line 515
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 521
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_2a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getGlobalDataRoamingOption()I

    move-result v8

    .line 523
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 529
    .end local v8    # "_result":I
    :sswitch_2b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 532
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setGlobalDataRoamingOption(I)V

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 538
    .end local v1    # "_arg0":I
    :sswitch_2c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 542
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 543
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetMultiRABTrafficThrottling(II)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 549
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_2d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 553
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 559
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_2e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 562
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 563
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 569
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_2f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 572
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 573
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 575
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 579
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_30
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 582
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 583
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 589
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_31
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 592
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 593
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 599
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_32
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 602
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 603
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 609
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_33
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 612
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 613
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 619
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_34
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 622
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 623
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 625
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 629
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_35
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getEsn()Ljava/lang/String;

    move-result-object v8

    .line 631
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 633
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 637
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCdmaMin()Ljava/lang/String;

    move-result-object v8

    .line 639
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 641
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 645
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 649
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 651
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    if-eqz v8, :cond_c

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 652
    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    .line 657
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_38
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getSubsidyLockTypes()I

    move-result v8

    .line 659
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 665
    .end local v8    # "_result":I
    :sswitch_39
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 669
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 670
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 671
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    if-eqz v8, :cond_d

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 672
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 677
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_3a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getDetailIccStatus()[I

    move-result-object v8

    .line 679
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 681
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 685
    .end local v8    # "_result":[I
    :sswitch_3b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->confirmFirstDataRoaming()V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 692
    :sswitch_3c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getGprsState()I

    move-result v8

    .line 694
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 700
    .end local v8    # "_result":I
    :sswitch_3d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getServiceState()I

    move-result v8

    .line 702
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 708
    .end local v8    # "_result":I
    :sswitch_3e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendAT_BRIC()V

    .line 710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 715
    :sswitch_3f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 718
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 723
    .local v1, "_arg0":Landroid/content/Intent;
    :goto_f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v8

    .line 724
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    if-eqz v8, :cond_f

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 721
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v8    # "_result":Z
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_f

    .line 725
    .restart local v8    # "_result":Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_10

    .line 730
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v8    # "_result":Z
    :sswitch_40
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 734
    .local v1, "_arg0":Z
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 735
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setTimeZone(ZI)V

    .line 736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 732
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_10
    const/4 v1, 0x0

    goto :goto_11

    .line 741
    :sswitch_41
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 745
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 746
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendAT_PushMail(II)V

    .line 747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 752
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_42
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->htcCdmaExitRadioPowerSaveMode()V

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 759
    :sswitch_43
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->htcModemLinkOn()Z

    move-result v8

    .line 761
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    if-eqz v8, :cond_11

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 762
    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    .line 767
    .end local v8    # "_result":Z
    :sswitch_44
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->htcCdmaEndCall()Z

    move-result v8

    .line 769
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    if-eqz v8, :cond_12

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 770
    :cond_12
    const/4 v0, 0x0

    goto :goto_13

    .line 775
    .end local v8    # "_result":Z
    :sswitch_45
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isFdnEnabled()Z

    move-result v8

    .line 777
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    if-eqz v8, :cond_13

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 778
    :cond_13
    const/4 v0, 0x0

    goto :goto_14

    .line 783
    .end local v8    # "_result":Z
    :sswitch_46
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 787
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 789
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 793
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_47
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActiveCallNumber()Ljava/lang/String;

    move-result-object v8

    .line 795
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 797
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 801
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_48
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getBackgroundCallNumber()Ljava/lang/String;

    move-result-object v8

    .line 803
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 805
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 809
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_49
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActiveCallConnectTime()J

    move-result-wide v8

    .line 811
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 813
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 817
    .end local v8    # "_result":J
    :sswitch_4a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->switchHoldAndActiveCall()V

    .line 819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 824
    :sswitch_4b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPowerKeyFlag()V

    .line 826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 831
    :sswitch_4c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPowerKeyFlag()Z

    move-result v8

    .line 833
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    if-eqz v8, :cond_14

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 834
    :cond_14
    const/4 v0, 0x0

    goto :goto_15

    .line 839
    .end local v8    # "_result":Z
    :sswitch_4d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCFUNumber()Ljava/lang/String;

    move-result-object v8

    .line 841
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 843
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 847
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_4e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isCallWaiting()Z

    move-result v8

    .line 849
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    if-eqz v8, :cond_15

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 850
    :cond_15
    const/4 v0, 0x0

    goto :goto_16

    .line 855
    .end local v8    # "_result":Z
    :sswitch_4f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    .line 859
    .local v1, "_arg0":Z
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 860
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v8

    .line 861
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    if-eqz v8, :cond_17

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 857
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :cond_16
    const/4 v1, 0x0

    goto :goto_17

    .line 862
    .restart local v1    # "_arg0":Z
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v8    # "_result":Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_18

    .line 867
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_50
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCFUNumberFromOperator()Ljava/lang/String;

    move-result-object v8

    .line 869
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 871
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 875
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_51
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getIncallRecordingFileName()Ljava/lang/String;

    move-result-object v8

    .line 877
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 879
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 883
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_52
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 887
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 888
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendCmmbAuth3GReq([B[B)[B

    move-result-object v8

    .line 889
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 891
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 895
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v8    # "_result":[B
    :sswitch_53
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 898
    .restart local v1    # "_arg0":[B
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendCmmbAuthGSMReq([B)[B

    move-result-object v8

    .line 899
    .restart local v8    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 901
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 905
    .end local v1    # "_arg0":[B
    .end local v8    # "_result":[B
    :sswitch_54
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    .line 908
    .local v1, "_arg0":Z
    :goto_19
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setVTSimulatedMode(Z)V

    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 907
    .end local v1    # "_arg0":Z
    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    .line 914
    :sswitch_55
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getVTSimulatedMode()Z

    move-result v8

    .line 916
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    if-eqz v8, :cond_19

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 917
    :cond_19
    const/4 v0, 0x0

    goto :goto_1a

    .line 922
    .end local v8    # "_result":Z
    :sswitch_56
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    .line 925
    .restart local v1    # "_arg0":Z
    :goto_1b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setVTLoopBackMode(Z)V

    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 924
    .end local v1    # "_arg0":Z
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 931
    :sswitch_57
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getVTLoopBackMode()Z

    move-result v8

    .line 933
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    if-eqz v8, :cond_1b

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 934
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1c

    .line 939
    .end local v8    # "_result":Z
    :sswitch_58
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getGsmNetworkType()Ljava/lang/String;

    move-result-object v8

    .line 941
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 943
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 947
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_59
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->checkTestIcc()Z

    move-result v8

    .line 949
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    if-eqz v8, :cond_1c

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 950
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1d

    .line 955
    .end local v8    # "_result":Z
    :sswitch_5a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->hasVTCall()Z

    move-result v8

    .line 957
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    if-eqz v8, :cond_1d

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 958
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1e

    .line 963
    .end local v8    # "_result":Z
    :sswitch_5b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCurrentCallState()I

    move-result v8

    .line 965
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 971
    .end local v8    # "_result":I
    :sswitch_5c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 974
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPdnSettings(I)Ljava/lang/String;

    move-result-object v8

    .line 975
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 977
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 981
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_5d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 985
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPdnSettings(ILjava/lang/String;)V

    .line 987
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 992
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_5e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->resetPdnForSettingsChange()V

    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 999
    :sswitch_5f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1002
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1003
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1005
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1009
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_60
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1012
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPdnSettings2([Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1018
    .end local v1    # "_arg0":[Ljava/lang/String;
    :sswitch_61
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->resetPdnForSettingsChange2()V

    .line 1020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1025
    :sswitch_62
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPreferredNetworkType()I

    move-result v8

    .line 1027
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1033
    .end local v8    # "_result":I
    :sswitch_63
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1036
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPreferredNetworkType(I)V

    .line 1037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1042
    .end local v1    # "_arg0":I
    :sswitch_64
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v8

    .line 1046
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1052
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_65
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1055
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetEhrpdDisableCapability(I)V

    .line 1056
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1061
    .end local v1    # "_arg0":I
    :sswitch_66
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestEhrpdDomainNameChangeState()I

    move-result v8

    .line 1063
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1069
    .end local v8    # "_result":I
    :sswitch_67
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetEhrpdDisableCapability()I

    move-result v8

    .line 1071
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1077
    .end local v8    # "_result":I
    :sswitch_68
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetEhrpdDeviceCapability()I

    move-result v8

    .line 1079
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1085
    .end local v8    # "_result":I
    :sswitch_69
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v8

    .line 1087
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1089
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1093
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_6a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1102
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_6b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v8

    .line 1104
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1106
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1110
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_6c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1114
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1116
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1117
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1123
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_6d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1126
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->performHtcPhoneAction(I)V

    .line 1127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1132
    .end local v1    # "_arg0":I
    :sswitch_6e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    .line 1135
    .local v1, "_arg0":Z
    :goto_1f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->enableMpdp(Z)V

    .line 1136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1134
    .end local v1    # "_arg0":Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 1141
    :sswitch_6f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActivePDPList()[Ljava/lang/String;

    move-result-object v8

    .line 1143
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1145
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1149
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_70
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1152
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendLanguageChange(I)V

    .line 1153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1158
    .end local v1    # "_arg0":I
    :sswitch_71
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestQueryISIMSupported()Z

    move-result v8

    .line 1160
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    if-eqz v8, :cond_1f

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1162
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1161
    :cond_1f
    const/4 v0, 0x0

    goto :goto_20

    .line 1166
    .end local v8    # "_result":Z
    :sswitch_72
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1170
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1172
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1174
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1176
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 1177
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v8

    .line 1178
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1180
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1184
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_73
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1187
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1188
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1190
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1194
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_74
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestResetWSIMState()Z

    move-result v8

    .line 1196
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    if-eqz v8, :cond_20

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1197
    :cond_20
    const/4 v0, 0x0

    goto :goto_21

    .line 1202
    .end local v8    # "_result":Z
    :sswitch_75
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1205
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetLBSNTFY(I)V

    .line 1206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1211
    .end local v1    # "_arg0":I
    :sswitch_76
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestCW_UW_REG()V

    .line 1213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1218
    :sswitch_77
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestCW_UW_DREG()V

    .line 1220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1225
    :sswitch_78
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestLtePermanentlyDetached()Z

    move-result v8

    .line 1227
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    if-eqz v8, :cond_21

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1228
    :cond_21
    const/4 v0, 0x0

    goto :goto_22

    .line 1233
    .end local v8    # "_result":Z
    :sswitch_79
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1237
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1238
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetFastDormancy(II)V

    .line 1239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1244
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_7a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    .line 1247
    .local v1, "_arg0":Z
    :goto_23
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setRejectAllCalls(Z)V

    .line 1248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1246
    .end local v1    # "_arg0":Z
    :cond_22
    const/4 v1, 0x0

    goto :goto_23

    .line 1253
    :sswitch_7b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getRejectAllCalls()Z

    move-result v8

    .line 1255
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    if-eqz v8, :cond_23

    const/4 v0, 0x1

    :goto_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1256
    :cond_23
    const/4 v0, 0x0

    goto :goto_24

    .line 1261
    .end local v8    # "_result":Z
    :sswitch_7c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->launchCallForwardingSettings()V

    .line 1263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1268
    :sswitch_7d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetSIMType()I

    move-result v8

    .line 1270
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1276
    .end local v8    # "_result":I
    :sswitch_7e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    .line 1279
    .restart local v1    # "_arg0":Z
    :goto_25
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setDataEnabled(Z)Z

    move-result v8

    .line 1280
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    if-eqz v8, :cond_25

    const/4 v0, 0x1

    :goto_26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1278
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_24
    const/4 v1, 0x0

    goto :goto_25

    .line 1281
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_25
    const/4 v0, 0x0

    goto :goto_26

    .line 1286
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_7f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    .line 1289
    .restart local v1    # "_arg0":Z
    :goto_27
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setUserDataEnabled(Z)Z

    move-result v8

    .line 1290
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    if-eqz v8, :cond_27

    const/4 v0, 0x1

    :goto_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1288
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_26
    const/4 v1, 0x0

    goto :goto_27

    .line 1291
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_27
    const/4 v0, 0x0

    goto :goto_28

    .line 1296
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_80
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    const/4 v1, 0x1

    .line 1299
    .restart local v1    # "_arg0":Z
    :goto_29
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPolicyDataEnabled(Z)Z

    move-result v8

    .line 1300
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    if-eqz v8, :cond_29

    const/4 v0, 0x1

    :goto_2a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1298
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_28
    const/4 v1, 0x0

    goto :goto_29

    .line 1301
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_29
    const/4 v0, 0x0

    goto :goto_2a

    .line 1306
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_81
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    .line 1309
    .restart local v1    # "_arg0":Z
    :goto_2b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->notifyScreenBusy(Z)V

    .line 1310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1308
    .end local v1    # "_arg0":Z
    :cond_2a
    const/4 v1, 0x0

    goto :goto_2b

    .line 1315
    :sswitch_82
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1318
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->notifyKeyEvent(I)V

    .line 1319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1324
    .end local v1    # "_arg0":I
    :sswitch_83
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPhoneState()Landroid/os/Bundle;

    move-result-object v8

    .line 1326
    .local v8, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    if-eqz v8, :cond_2b

    .line 1328
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1329
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1334
    :goto_2c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1332
    :cond_2b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 1338
    .end local v8    # "_result":Landroid/os/Bundle;
    :sswitch_84
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->showIncallScreen()V

    .line 1340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1345
    :sswitch_85
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isUimPinEnabled()Z

    move-result v8

    .line 1347
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    if-eqz v8, :cond_2c

    const/4 v0, 0x1

    :goto_2d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1349
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1348
    :cond_2c
    const/4 v0, 0x0

    goto :goto_2d

    .line 1353
    .end local v8    # "_result":Z
    :sswitch_86
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1356
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCellLocationExt(I)Landroid/os/Bundle;

    move-result-object v8

    .line 1357
    .local v8, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    if-eqz v8, :cond_2d

    .line 1359
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1365
    :goto_2e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1363
    :cond_2d
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .line 1369
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Landroid/os/Bundle;
    :sswitch_87
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1372
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->enableLocationUpdatesExt(I)V

    .line 1373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1378
    .end local v1    # "_arg0":I
    :sswitch_88
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1381
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->disableLocationUpdatesExt(I)V

    .line 1382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1387
    .end local v1    # "_arg0":I
    :sswitch_89
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1390
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getNeighboringCellInfoExt(I)Ljava/util/List;

    move-result-object v10

    .line 1391
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1393
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1397
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_8a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1400
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getNetworkTypeExt(I)I

    move-result v8

    .line 1401
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1407
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_8b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1410
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->hasIccCardExt(I)Z

    move-result v8

    .line 1411
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    if-eqz v8, :cond_2e

    const/4 v0, 0x1

    :goto_2f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1413
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1412
    :cond_2e
    const/4 v0, 0x0

    goto :goto_2f

    .line 1417
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_8c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1420
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getVoiceMessageCountExt(I)I

    move-result v8

    .line 1421
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1422
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1427
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_8d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1430
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCallStateExt(I)I

    move-result v8

    .line 1431
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1433
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1437
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_8e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1440
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getDataActivityExt(I)I

    move-result v8

    .line 1441
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1443
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1447
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_8f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1450
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getDataStateExt(I)I

    move-result v8

    .line 1451
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1457
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_90
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1460
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isInService(I)Z

    move-result v8

    .line 1461
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    if-eqz v8, :cond_2f

    const/4 v0, 0x1

    :goto_30
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1463
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1462
    :cond_2f
    const/4 v0, 0x0

    goto :goto_30

    .line 1467
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_91
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1470
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcServiceStateExt(I)I

    move-result v8

    .line 1471
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1477
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_92
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCardCheckedState()I

    move-result v8

    .line 1479
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1481
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1485
    .end local v8    # "_result":I
    :sswitch_93
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1488
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPreferredNetworkType_wifi_call(I)Z

    move-result v8

    .line 1489
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    if-eqz v8, :cond_30

    const/4 v0, 0x1

    :goto_31
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1491
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1490
    :cond_30
    const/4 v0, 0x0

    goto :goto_31

    .line 1495
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_94
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    const/4 v1, 0x1

    .line 1498
    .local v1, "_arg0":Z
    :goto_32
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->enableRegistrationState_wifi_call(Z)V

    .line 1499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1497
    .end local v1    # "_arg0":Z
    :cond_31
    const/4 v1, 0x0

    goto :goto_32

    .line 1504
    :sswitch_95
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1507
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendMTRejectMessage(Ljava/lang/String;)Z

    move-result v8

    .line 1508
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    if-eqz v8, :cond_32

    const/4 v0, 0x1

    :goto_33
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1510
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1509
    :cond_32
    const/4 v0, 0x0

    goto :goto_33

    .line 1514
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_96
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getKddiUserAgent()Ljava/lang/String;

    move-result-object v8

    .line 1516
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1518
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1522
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_97
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1525
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setKddiOtaStatus(I)V

    .line 1526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1531
    .end local v1    # "_arg0":I
    :sswitch_98
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1533
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1534
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSendKddiSmsDeliver([B)Landroid/os/Bundle;

    move-result-object v8

    .line 1535
    .local v8, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1536
    if-eqz v8, :cond_33

    .line 1537
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1538
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1543
    :goto_34
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1541
    :cond_33
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 1547
    .end local v1    # "_arg0":[B
    .end local v8    # "_result":Landroid/os/Bundle;
    :sswitch_99
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetLTETxRxInfo()[I

    move-result-object v8

    .line 1549
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1550
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1551
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1555
    .end local v8    # "_result":[I
    :sswitch_9a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetLTERFBandInfo()[I

    move-result-object v8

    .line 1557
    .restart local v8    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1559
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1563
    .end local v8    # "_result":[I
    :sswitch_9b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->cancelMissedCallsNotification()V

    .line 1565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1570
    :sswitch_9c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1574
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1575
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->supplyPinExt(Ljava/lang/String;I)Z

    move-result v8

    .line 1576
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    if-eqz v8, :cond_34

    const/4 v0, 0x1

    :goto_35
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1578
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1577
    :cond_34
    const/4 v0, 0x0

    goto :goto_35

    .line 1582
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_9d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1586
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1588
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1589
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->supplyPukExt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 1590
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1591
    if-eqz v8, :cond_35

    const/4 v0, 0x1

    :goto_36
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1592
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1591
    :cond_35
    const/4 v0, 0x0

    goto :goto_36

    .line 1596
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :sswitch_9e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1600
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1601
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->performHtcPhoneActionExt(II)V

    .line 1602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1603
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1607
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_9f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1610
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getDetailIccStatusExt(I)[I

    move-result-object v8

    .line 1611
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1613
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1617
    .end local v1    # "_arg0":I
    .end local v8    # "_result":[I
    :sswitch_a0
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCurrentActiveCallDuration()J

    move-result-wide v8

    .line 1619
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1621
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1625
    .end local v8    # "_result":J
    :sswitch_a1
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1628
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getGprsStateExt(I)I

    move-result v8

    .line 1629
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1631
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1635
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_a2
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    const/4 v1, 0x1

    .line 1639
    .local v1, "_arg0":Z
    :goto_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1640
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->enableRegistrationState_wifi_call_ext(ZI)V

    .line 1641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1637
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_36
    const/4 v1, 0x0

    goto :goto_37

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
