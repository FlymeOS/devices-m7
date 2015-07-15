.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_NotifyWifiPhoneCallComeIn:I = 0x5a

.field static final TRANSACTION_NotifyWifiPhoneCallEnd:I = 0x5b

.field static final TRANSACTION_RemoveOpenNetworkFromBlockedList:I = 0x68

.field static final TRANSACTION_SetAutoInterworking:I = 0x84

.field static final TRANSACTION_SetSignInStatus:I = 0x6a

.field static final TRANSACTION_acquireMulticastLock:I = 0x1f

.field static final TRANSACTION_acquireWifiLock:I = 0x1a

.field static final TRANSACTION_addOpenNetworkToBlockedList:I = 0x67

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x5

.field static final TRANSACTION_addToBlacklist:I = 0x28

.field static final TRANSACTION_checkWifiApEnabledMhsRequest:I = 0x49

.field static final TRANSACTION_clearBlacklist:I = 0x29

.field static final TRANSACTION_decryptConfPassword:I = 0x4e

.field static final TRANSACTION_disableNetwork:I = 0x8

.field static final TRANSACTION_disconnect:I = 0xd

.field static final TRANSACTION_enableAggressiveHandover:I = 0x3b

.field static final TRANSACTION_enableNetwork:I = 0x7

.field static final TRANSACTION_enablePowerActiveForFotaDownload:I = 0x35

.field static final TRANSACTION_enablePowerActiveMode:I = 0x34

.field static final TRANSACTION_enableTdls:I = 0x2c

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x2d

.field static final TRANSACTION_enableVerboseLogging:I = 0x38

.field static final TRANSACTION_encryptConfPassword:I = 0x4f

.field static final TRANSACTION_getAggressiveHandover:I = 0x3a

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x3c

.field static final TRANSACTION_getAssocListStr:I = 0x4c

.field static final TRANSACTION_getAssociationManual:I = 0x6e

.field static final TRANSACTION_getAutoInterworkingState:I = 0x83

.field static final TRANSACTION_getBatchedScanResults:I = 0x30

.field static final TRANSACTION_getCaptivePortalState:I = 0x6c

.field static final TRANSACTION_getChannelList:I = 0xa

.field static final TRANSACTION_getClientInfo:I = 0x44

.field static final TRANSACTION_getConfigFile:I = 0x2b

.field static final TRANSACTION_getConfiguredNetworks:I = 0x3

.field static final TRANSACTION_getConnectionInfo:I = 0x10

.field static final TRANSACTION_getConnectionStatistics:I = 0x3e

.field static final TRANSACTION_getDhcpInfo:I = 0x18

.field static final TRANSACTION_getDockWifiApAutoEnabled:I = 0x64

.field static final TRANSACTION_getDockWifiAutoEnabled:I = 0x66

.field static final TRANSACTION_getDongleScanList:I = 0x7f

.field static final TRANSACTION_getEapSimAkaSlot:I = 0x5d

.field static final TRANSACTION_getFrequencyBand:I = 0x15

.field static final TRANSACTION_getHotspotNumAllowedChannels:I = 0x46

.field static final TRANSACTION_getHotspotState:I = 0x4b

.field static final TRANSACTION_getHtcNewSenseWifiApConfiguration:I = 0x40

.field static final TRANSACTION_getHtcWifiApConfiguration:I = 0x3f

.field static final TRANSACTION_getMostPreferredNetwork:I = 0x8e

.field static final TRANSACTION_getOpenNetworkBlockedList:I = 0x69

.field static final TRANSACTION_getPPPOEInfo:I = 0x8d

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getRequestedList:I = 0x47

.field static final TRANSACTION_getScanResults:I = 0xc

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getTetheringDhcpRange:I = 0x4d

.field static final TRANSACTION_getVFAutoJoin:I = 0x70

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x39

.field static final TRANSACTION_getWanDetectionEnabled:I = 0x61

.field static final TRANSACTION_getWifiApConfiguration:I = 0x23

.field static final TRANSACTION_getWifiApEnabledState:I = 0x22

.field static final TRANSACTION_getWifiBatteryUsageHint:I = 0x36

.field static final TRANSACTION_getWifiDisplayApConfig:I = 0x78

.field static final TRANSACTION_getWifiEnabledState:I = 0x12

.field static final TRANSACTION_getWifiOffloadEnabled:I = 0x88

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x2a

.field static final TRANSACTION_getWifidisplayApEnabled:I = 0x75

.field static final TRANSACTION_getWifidisplayApState:I = 0x74

.field static final TRANSACTION_getWirelessDisplayCommonApConfiguration:I = 0x24

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x37

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x1d

.field static final TRANSACTION_isBatchedScanSupported:I = 0x31

.field static final TRANSACTION_isDualBandSupported:I = 0x16

.field static final TRANSACTION_isHotspotRestricted:I = 0x55

.field static final TRANSACTION_isMdmHotspotRestricted:I = 0x59

.field static final TRANSACTION_isMdmWifiRestricted:I = 0x57

.field static final TRANSACTION_isMulticastEnabled:I = 0x1e

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x19

.field static final TRANSACTION_isSupport5GHotspot:I = 0x51

.field static final TRANSACTION_isSupportApSta:I = 0x50

.field static final TRANSACTION_isSupportHS20:I = 0x82

.field static final TRANSACTION_isWifiEnableNotifyPackageName:I = 0x86

.field static final TRANSACTION_isWifiRestricted:I = 0x53

.field static final TRANSACTION_pingSupplicant:I = 0x9

.field static final TRANSACTION_pollBatchedScan:I = 0x32

.field static final TRANSACTION_reassociate:I = 0xf

.field static final TRANSACTION_reconnect:I = 0xe

.field static final TRANSACTION_releaseMulticastLock:I = 0x20

.field static final TRANSACTION_releaseWifiLock:I = 0x1c

.field static final TRANSACTION_removeNetwork:I = 0x6

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestBatchedScan:I = 0x2e

.field static final TRANSACTION_resetDhcpConfig:I = 0x45

.field static final TRANSACTION_retryLanDetection:I = 0x5e

.field static final TRANSACTION_retryWanDetection:I = 0x5f

.field static final TRANSACTION_saveConfiguration:I = 0x17

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x3d

.field static final TRANSACTION_setAssociationManual:I = 0x6d

.field static final TRANSACTION_setCaptivePortalState:I = 0x6b

.field static final TRANSACTION_setCmccTimer:I = 0x71

.field static final TRANSACTION_setCountryCode:I = 0x13

.field static final TRANSACTION_setDockWifiApAutoEnabled:I = 0x63

.field static final TRANSACTION_setDockWifiAutoEnabled:I = 0x65

.field static final TRANSACTION_setEapSimAkaSlot:I = 0x5c

.field static final TRANSACTION_setFrequencyBand:I = 0x14

.field static final TRANSACTION_setHotspotAutoChannel:I = 0x43

.field static final TRANSACTION_setHotspotRestricted:I = 0x54

.field static final TRANSACTION_setHtcNewSenseWifiApConfiguration:I = 0x42

.field static final TRANSACTION_setHtcWifiApConfiguration:I = 0x41

.field static final TRANSACTION_setMdmHotspotRestricted:I = 0x58

.field static final TRANSACTION_setMdmWifiRestricted:I = 0x56

.field static final TRANSACTION_setMostPreferredNetwork:I = 0x8f

.field static final TRANSACTION_setVFAutoJoin:I = 0x6f

.field static final TRANSACTION_setWanDetectionDialogEnabled:I = 0x62

.field static final TRANSACTION_setWanDetectionEnabled:I = 0x60

.field static final TRANSACTION_setWifiApConfiguration:I = 0x25

.field static final TRANSACTION_setWifiApEnabled:I = 0x21

.field static final TRANSACTION_setWifiApEnabledMhsRequest:I = 0x4a

.field static final TRANSACTION_setWifiApMacList:I = 0x48

.field static final TRANSACTION_setWifiDisplayApConfig:I = 0x79

.field static final TRANSACTION_setWifiDisplayApMacList:I = 0x7a

.field static final TRANSACTION_setWifiDisplayConfigure:I = 0x7b

.field static final TRANSACTION_setWifiDisplayConfigureGuestKey:I = 0x7c

.field static final TRANSACTION_setWifiDisplayUnscan:I = 0x81

.field static final TRANSACTION_setWifiEnableNotify:I = 0x85

.field static final TRANSACTION_setWifiEnabled:I = 0x11

.field static final TRANSACTION_setWifiOffloadEnabled:I = 0x87

.field static final TRANSACTION_setWifiPowerSavingMode:I = 0x33

.field static final TRANSACTION_setWifiRestricted:I = 0x52

.field static final TRANSACTION_setWifidisplayApEnabled:I = 0x77

.field static final TRANSACTION_setWifidisplayEnabled:I = 0x76

.field static final TRANSACTION_startDongleScan:I = 0x7d

.field static final TRANSACTION_startDongleSingleCscan:I = 0x7e

.field static final TRANSACTION_startDongleWakeUp:I = 0x80

.field static final TRANSACTION_startNetworkSelection:I = 0x8a

.field static final TRANSACTION_startPPPOE:I = 0x8b

.field static final TRANSACTION_startScan:I = 0xb

.field static final TRANSACTION_startWifi:I = 0x26

.field static final TRANSACTION_startWifiOffload:I = 0x89

.field static final TRANSACTION_startWpsRegistrar:I = 0x72

.field static final TRANSACTION_stopBatchedScan:I = 0x2f

.field static final TRANSACTION_stopPPPOE:I = 0x8c

.field static final TRANSACTION_stopWifi:I = 0x27

.field static final TRANSACTION_stopWpsRegistrar:I = 0x73

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x1b


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
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
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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

    .line 1506
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    :goto_0
    return v11

    .line 47
    :sswitch_0
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v11, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v4

    .line 54
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v11, 0x1

    goto :goto_0

    .line 60
    .end local v4    # "_result":I
    :sswitch_2
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v4

    .line 62
    .local v4, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v4, :cond_0

    .line 64
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 68
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 74
    .end local v4    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v9

    .line 76
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 78
    const/4 v11, 0x1

    goto :goto_0

    .line 82
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_4
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v9

    .line 84
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 86
    const/4 v11, 0x1

    goto :goto_0

    .line 90
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1

    .line 93
    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 98
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 99
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v11, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_2

    .line 105
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_6
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 109
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_2

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 110
    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    .line 115
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_7
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3

    const/4 v1, 0x1

    .line 120
    .local v1, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 121
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v4, :cond_4

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 119
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 122
    .restart local v1    # "_arg1":Z
    .restart local v4    # "_result":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_5

    .line 127
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :sswitch_8
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 131
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v4, :cond_5

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 132
    :cond_5
    const/4 v11, 0x0

    goto :goto_6

    .line 137
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 139
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v4, :cond_6

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 140
    :cond_6
    const/4 v11, 0x0

    goto :goto_7

    .line 145
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getChannelList()Ljava/util/List;

    move-result-object v8

    .line 147
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 149
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 153
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :sswitch_b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_7

    .line 156
    sget-object v11, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanSettings;

    .line 162
    .local v0, "_arg0":Landroid/net/wifi/ScanSettings;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_8

    .line 163
    sget-object v11, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 168
    .local v1, "_arg1":Landroid/os/WorkSource;
    :goto_9
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 159
    .end local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_8

    .line 166
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    goto :goto_9

    .line 174
    .end local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :sswitch_c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 178
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 180
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 184
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 191
    :sswitch_e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 198
    :sswitch_f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 205
    :sswitch_10
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 207
    .local v4, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v4, :cond_9

    .line 209
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 215
    :goto_a
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 213
    :cond_9
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 219
    .end local v4    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_11
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v0, 0x1

    .line 222
    .local v0, "_arg0":Z
    :goto_b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    .line 223
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v4, :cond_b

    const/4 v11, 0x1

    :goto_c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    .line 224
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_c

    .line 229
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_12
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 231
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 237
    .end local v4    # "_result":I
    :sswitch_13
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_c

    const/4 v1, 0x1

    .line 242
    .local v1, "_arg1":Z
    :goto_d
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 241
    .end local v1    # "_arg1":Z
    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    .line 248
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_d

    const/4 v1, 0x1

    .line 253
    .restart local v1    # "_arg1":Z
    :goto_e
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 252
    .end local v1    # "_arg1":Z
    :cond_d
    const/4 v1, 0x0

    goto :goto_e

    .line 259
    .end local v0    # "_arg0":I
    :sswitch_15
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v4

    .line 261
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 267
    .end local v4    # "_result":I
    :sswitch_16
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v4

    .line 269
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v4, :cond_e

    const/4 v11, 0x1

    :goto_f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 270
    :cond_e
    const/4 v11, 0x0

    goto :goto_f

    .line 275
    .end local v4    # "_result":Z
    :sswitch_17
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 277
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v4, :cond_f

    const/4 v11, 0x1

    :goto_10
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 278
    :cond_f
    const/4 v11, 0x0

    goto :goto_10

    .line 283
    .end local v4    # "_result":Z
    :sswitch_18
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 285
    .local v4, "_result":Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    if-eqz v4, :cond_10

    .line 287
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 293
    :goto_11
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 291
    :cond_10
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 297
    .end local v4    # "_result":Landroid/net/DhcpInfo;
    :sswitch_19
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v4

    .line 299
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v4, :cond_11

    const/4 v11, 0x1

    :goto_12
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 300
    :cond_11
    const/4 v11, 0x0

    goto :goto_12

    .line 305
    .end local v4    # "_result":Z
    :sswitch_1a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 309
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 311
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_12

    .line 314
    sget-object v11, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 319
    .local v3, "_arg3":Landroid/os/WorkSource;
    :goto_13
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 320
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v4, :cond_13

    const/4 v11, 0x1

    :goto_14
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 317
    .end local v3    # "_arg3":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :cond_12
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/os/WorkSource;
    goto :goto_13

    .line 321
    .restart local v4    # "_result":Z
    :cond_13
    const/4 v11, 0x0

    goto :goto_14

    .line 326
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :sswitch_1b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 330
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_14

    .line 331
    sget-object v11, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 336
    .local v1, "_arg1":Landroid/os/WorkSource;
    :goto_15
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 334
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    goto :goto_15

    .line 342
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :sswitch_1c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 345
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 346
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    if-eqz v4, :cond_15

    const/4 v11, 0x1

    :goto_16
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 347
    :cond_15
    const/4 v11, 0x0

    goto :goto_16

    .line 352
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_1d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 359
    :sswitch_1e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 361
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v4, :cond_16

    const/4 v11, 0x1

    :goto_17
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 362
    :cond_16
    const/4 v11, 0x0

    goto :goto_17

    .line 367
    .end local v4    # "_result":Z
    :sswitch_1f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 371
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 378
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_20
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 385
    :sswitch_21
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_17

    .line 388
    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 394
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_18

    const/4 v1, 0x1

    .line 395
    .local v1, "_arg1":Z
    :goto_19
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 391
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "_arg1":Z
    :cond_17
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_18

    .line 394
    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    .line 401
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_22
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 403
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 409
    .end local v4    # "_result":I
    :sswitch_23
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 411
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    if-eqz v4, :cond_19

    .line 413
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 419
    :goto_1a
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 417
    :cond_19
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 423
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_24
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 425
    .restart local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v4, :cond_1a

    .line 427
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 433
    :goto_1b
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 431
    :cond_1a
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 437
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_25
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1b

    .line 440
    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 445
    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_1c
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 443
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1c

    .line 451
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_26
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 458
    :sswitch_27
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 465
    :sswitch_28
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 474
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_29
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 481
    :sswitch_2a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 483
    .local v4, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v4, :cond_1c

    .line 485
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 491
    :goto_1d
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 489
    :cond_1c
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 495
    .end local v4    # "_result":Landroid/os/Messenger;
    :sswitch_2b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 503
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 507
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1d

    const/4 v1, 0x1

    .line 508
    .restart local v1    # "_arg1":Z
    :goto_1e
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 507
    .end local v1    # "_arg1":Z
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1e

    .line 514
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1e

    const/4 v1, 0x1

    .line 519
    .restart local v1    # "_arg1":Z
    :goto_1f
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 518
    .end local v1    # "_arg1":Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 525
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1f

    .line 528
    sget-object v11, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 534
    .local v0, "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 536
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_20

    .line 537
    sget-object v11, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 542
    .local v2, "_arg2":Landroid/os/WorkSource;
    :goto_21
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v4

    .line 543
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    if-eqz v4, :cond_21

    const/4 v11, 0x1

    :goto_22
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 531
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_20

    .line 540
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    :cond_20
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/WorkSource;
    goto :goto_21

    .line 544
    .restart local v4    # "_result":Z
    :cond_21
    const/4 v11, 0x0

    goto :goto_22

    .line 549
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :sswitch_2f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_22

    .line 552
    sget-object v11, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 557
    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_23
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 555
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :cond_22
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_23

    .line 563
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :sswitch_30
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 567
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 569
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 573
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :sswitch_31
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    move-result v4

    .line 575
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    if-eqz v4, :cond_23

    const/4 v11, 0x1

    :goto_24
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 576
    :cond_23
    const/4 v11, 0x0

    goto :goto_24

    .line 581
    .end local v4    # "_result":Z
    :sswitch_32
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 588
    :sswitch_33
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 591
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiPowerSavingMode(I)Z

    move-result v4

    .line 592
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    if-eqz v4, :cond_24

    const/4 v11, 0x1

    :goto_25
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 593
    :cond_24
    const/4 v11, 0x0

    goto :goto_25

    .line 598
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_34
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_25

    const/4 v0, 0x1

    .line 601
    .local v0, "_arg0":Z
    :goto_26
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enablePowerActiveMode(Z)Z

    move-result v4

    .line 602
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    if-eqz v4, :cond_26

    const/4 v11, 0x1

    :goto_27
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 600
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_25
    const/4 v0, 0x0

    goto :goto_26

    .line 603
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_26
    const/4 v11, 0x0

    goto :goto_27

    .line 608
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_35
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_27

    const/4 v0, 0x1

    .line 611
    .restart local v0    # "_arg0":Z
    :goto_28
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enablePowerActiveForFotaDownload(Z)Z

    move-result v4

    .line 612
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    if-eqz v4, :cond_28

    const/4 v11, 0x1

    :goto_29
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 610
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_27
    const/4 v0, 0x0

    goto :goto_28

    .line 613
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_28
    const/4 v11, 0x0

    goto :goto_29

    .line 618
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_36
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiBatteryUsageHint()J

    move-result-wide v4

    .line 620
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 622
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 626
    .end local v4    # "_result":J
    :sswitch_37
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 629
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v4

    .line 630
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 636
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_38
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 639
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 645
    .end local v0    # "_arg0":I
    :sswitch_39
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v4

    .line 647
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 653
    .end local v4    # "_result":I
    :sswitch_3a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v4

    .line 655
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 661
    .end local v4    # "_result":I
    :sswitch_3b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 664
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 670
    .end local v0    # "_arg0":I
    :sswitch_3c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v4

    .line 672
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 678
    .end local v4    # "_result":I
    :sswitch_3d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 681
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 687
    .end local v0    # "_arg0":I
    :sswitch_3e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v4

    .line 689
    .local v4, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    if-eqz v4, :cond_29

    .line 691
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 697
    :goto_2a
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 695
    :cond_29
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 701
    .end local v4    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_3f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHtcWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 703
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    if-eqz v4, :cond_2a

    .line 705
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 711
    :goto_2b
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 709
    :cond_2a
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 715
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_40
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHtcNewSenseWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 717
    .restart local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    if-eqz v4, :cond_2b

    .line 719
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 725
    :goto_2c
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 723
    :cond_2b
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 729
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_41
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2c

    .line 732
    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 737
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_2d
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setHtcWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 738
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 735
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":I
    :cond_2c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_2d

    .line 744
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_42
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2d

    .line 747
    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 752
    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_2e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setHtcNewSenseWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 753
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 750
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":I
    :cond_2d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_2e

    .line 759
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_43
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 762
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setHotspotAutoChannel(I)V

    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 768
    .end local v0    # "_arg0":I
    :sswitch_44
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getClientInfo()Ljava/lang/String;

    move-result-object v4

    .line 770
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 772
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 776
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_45
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->resetDhcpConfig()V

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 783
    :sswitch_46
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHotspotNumAllowedChannels()I

    move-result v4

    .line 785
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 791
    .end local v4    # "_result":I
    :sswitch_47
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRequestedList()Ljava/lang/String;

    move-result-object v4

    .line 793
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 795
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 799
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_48
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2e

    .line 802
    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 807
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_2f
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 808
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 805
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":I
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_2f

    .line 814
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_49
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->checkWifiApEnabledMhsRequest()I

    move-result v4

    .line 816
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 822
    .end local v4    # "_result":I
    :sswitch_4a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2f

    .line 825
    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 831
    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_30

    const/4 v1, 0x1

    .line 832
    .local v1, "_arg1":Z
    :goto_31
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    .line 833
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    if-eqz v4, :cond_31

    const/4 v11, 0x1

    :goto_32
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 828
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_2f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_30

    .line 831
    :cond_30
    const/4 v1, 0x0

    goto :goto_31

    .line 834
    .restart local v1    # "_arg1":Z
    .restart local v4    # "_result":Z
    :cond_31
    const/4 v11, 0x0

    goto :goto_32

    .line 839
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :sswitch_4b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHotspotState()I

    move-result v4

    .line 841
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 847
    .end local v4    # "_result":I
    :sswitch_4c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAssocListStr()Ljava/lang/String;

    move-result-object v4

    .line 849
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 851
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 855
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getTetheringDhcpRange()[Ljava/lang/String;

    move-result-object v4

    .line 857
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 859
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 863
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_4e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->decryptConfPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 867
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 869
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 873
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 876
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->encryptConfPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 877
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 879
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 883
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_50
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isSupportApSta()Z

    move-result v4

    .line 885
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    if-eqz v4, :cond_32

    const/4 v11, 0x1

    :goto_33
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 886
    :cond_32
    const/4 v11, 0x0

    goto :goto_33

    .line 891
    .end local v4    # "_result":Z
    :sswitch_51
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isSupport5GHotspot()Z

    move-result v4

    .line 893
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    if-eqz v4, :cond_33

    const/4 v11, 0x1

    :goto_34
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 894
    :cond_33
    const/4 v11, 0x0

    goto :goto_34

    .line 899
    .end local v4    # "_result":Z
    :sswitch_52
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_34

    const/4 v0, 0x1

    .line 902
    .local v0, "_arg0":Z
    :goto_35
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiRestricted(Z)Z

    move-result v4

    .line 903
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    if-eqz v4, :cond_35

    const/4 v11, 0x1

    :goto_36
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 901
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_34
    const/4 v0, 0x0

    goto :goto_35

    .line 904
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_35
    const/4 v11, 0x0

    goto :goto_36

    .line 909
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_53
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isWifiRestricted()Z

    move-result v4

    .line 911
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    if-eqz v4, :cond_36

    const/4 v11, 0x1

    :goto_37
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 912
    :cond_36
    const/4 v11, 0x0

    goto :goto_37

    .line 917
    .end local v4    # "_result":Z
    :sswitch_54
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_37

    const/4 v0, 0x1

    .line 920
    .restart local v0    # "_arg0":Z
    :goto_38
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setHotspotRestricted(Z)Z

    move-result v4

    .line 921
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    if-eqz v4, :cond_38

    const/4 v11, 0x1

    :goto_39
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 919
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_37
    const/4 v0, 0x0

    goto :goto_38

    .line 922
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_38
    const/4 v11, 0x0

    goto :goto_39

    .line 927
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_55
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isHotspotRestricted()Z

    move-result v4

    .line 929
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    if-eqz v4, :cond_39

    const/4 v11, 0x1

    :goto_3a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 930
    :cond_39
    const/4 v11, 0x0

    goto :goto_3a

    .line 935
    .end local v4    # "_result":Z
    :sswitch_56
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3a

    const/4 v0, 0x1

    .line 938
    .restart local v0    # "_arg0":Z
    :goto_3b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setMdmWifiRestricted(Z)Z

    move-result v4

    .line 939
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    if-eqz v4, :cond_3b

    const/4 v11, 0x1

    :goto_3c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 937
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_3a
    const/4 v0, 0x0

    goto :goto_3b

    .line 940
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_3b
    const/4 v11, 0x0

    goto :goto_3c

    .line 945
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_57
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMdmWifiRestricted()Z

    move-result v4

    .line 947
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    if-eqz v4, :cond_3c

    const/4 v11, 0x1

    :goto_3d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 948
    :cond_3c
    const/4 v11, 0x0

    goto :goto_3d

    .line 953
    .end local v4    # "_result":Z
    :sswitch_58
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3d

    const/4 v0, 0x1

    .line 956
    .restart local v0    # "_arg0":Z
    :goto_3e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setMdmHotspotRestricted(Z)Z

    move-result v4

    .line 957
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    if-eqz v4, :cond_3e

    const/4 v11, 0x1

    :goto_3f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 955
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_3d
    const/4 v0, 0x0

    goto :goto_3e

    .line 958
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_3e
    const/4 v11, 0x0

    goto :goto_3f

    .line 963
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_59
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMdmHotspotRestricted()Z

    move-result v4

    .line 965
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    if-eqz v4, :cond_3f

    const/4 v11, 0x1

    :goto_40
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 966
    :cond_3f
    const/4 v11, 0x0

    goto :goto_40

    .line 971
    .end local v4    # "_result":Z
    :sswitch_5a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->NotifyWifiPhoneCallComeIn()Z

    move-result v4

    .line 973
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    if-eqz v4, :cond_40

    const/4 v11, 0x1

    :goto_41
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 974
    :cond_40
    const/4 v11, 0x0

    goto :goto_41

    .line 979
    .end local v4    # "_result":Z
    :sswitch_5b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->NotifyWifiPhoneCallEnd()Z

    move-result v4

    .line 981
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    if-eqz v4, :cond_41

    const/4 v11, 0x1

    :goto_42
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 982
    :cond_41
    const/4 v11, 0x0

    goto :goto_42

    .line 987
    .end local v4    # "_result":Z
    :sswitch_5c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 990
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setEapSimAkaSlot(I)Z

    move-result v4

    .line 991
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    if-eqz v4, :cond_42

    const/4 v11, 0x1

    :goto_43
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 992
    :cond_42
    const/4 v11, 0x0

    goto :goto_43

    .line 997
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_5d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getEapSimAkaSlot()I

    move-result v4

    .line 999
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1005
    .end local v4    # "_result":I
    :sswitch_5e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->retryLanDetection()Z

    move-result v4

    .line 1007
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    if-eqz v4, :cond_43

    const/4 v11, 0x1

    :goto_44
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1008
    :cond_43
    const/4 v11, 0x0

    goto :goto_44

    .line 1013
    .end local v4    # "_result":Z
    :sswitch_5f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->retryWanDetection()Z

    move-result v4

    .line 1015
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    if-eqz v4, :cond_44

    const/4 v11, 0x1

    :goto_45
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1016
    :cond_44
    const/4 v11, 0x0

    goto :goto_45

    .line 1021
    .end local v4    # "_result":Z
    :sswitch_60
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_45

    const/4 v0, 0x1

    .line 1024
    .local v0, "_arg0":Z
    :goto_46
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWanDetectionEnabled(Z)Z

    move-result v4

    .line 1025
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    if-eqz v4, :cond_46

    const/4 v11, 0x1

    :goto_47
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1023
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_45
    const/4 v0, 0x0

    goto :goto_46

    .line 1026
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_46
    const/4 v11, 0x0

    goto :goto_47

    .line 1031
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_61
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWanDetectionEnabled()Z

    move-result v4

    .line 1033
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    if-eqz v4, :cond_47

    const/4 v11, 0x1

    :goto_48
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1034
    :cond_47
    const/4 v11, 0x0

    goto :goto_48

    .line 1039
    .end local v4    # "_result":Z
    :sswitch_62
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_48

    const/4 v0, 0x1

    .line 1042
    .restart local v0    # "_arg0":Z
    :goto_49
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWanDetectionDialogEnabled(Z)Z

    move-result v4

    .line 1043
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    if-eqz v4, :cond_49

    const/4 v11, 0x1

    :goto_4a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1041
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_48
    const/4 v0, 0x0

    goto :goto_49

    .line 1044
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_49
    const/4 v11, 0x0

    goto :goto_4a

    .line 1049
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_63
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4a

    const/4 v0, 0x1

    .line 1052
    .restart local v0    # "_arg0":Z
    :goto_4b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setDockWifiApAutoEnabled(Z)Z

    move-result v4

    .line 1053
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    if-eqz v4, :cond_4b

    const/4 v11, 0x1

    :goto_4c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1051
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_4a
    const/4 v0, 0x0

    goto :goto_4b

    .line 1054
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_4b
    const/4 v11, 0x0

    goto :goto_4c

    .line 1059
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_64
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDockWifiApAutoEnabled()Z

    move-result v4

    .line 1061
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    if-eqz v4, :cond_4c

    const/4 v11, 0x1

    :goto_4d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1062
    :cond_4c
    const/4 v11, 0x0

    goto :goto_4d

    .line 1067
    .end local v4    # "_result":Z
    :sswitch_65
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4d

    const/4 v0, 0x1

    .line 1070
    .restart local v0    # "_arg0":Z
    :goto_4e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setDockWifiAutoEnabled(Z)Z

    move-result v4

    .line 1071
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    if-eqz v4, :cond_4e

    const/4 v11, 0x1

    :goto_4f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1069
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_4d
    const/4 v0, 0x0

    goto :goto_4e

    .line 1072
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_4e
    const/4 v11, 0x0

    goto :goto_4f

    .line 1077
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_66
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDockWifiAutoEnabled()Z

    move-result v4

    .line 1079
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    if-eqz v4, :cond_4f

    const/4 v11, 0x1

    :goto_50
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1080
    :cond_4f
    const/4 v11, 0x0

    goto :goto_50

    .line 1085
    .end local v4    # "_result":Z
    :sswitch_67
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOpenNetworkToBlockedList(Ljava/lang/String;)I

    move-result v4

    .line 1089
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1095
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_68
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1098
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I

    move-result v4

    .line 1099
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1105
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_69
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getOpenNetworkBlockedList()Ljava/util/List;

    move-result-object v10

    .line 1107
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1109
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1113
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_6a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1117
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1118
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->SetSignInStatus(II)Z

    move-result v4

    .line 1119
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    if-eqz v4, :cond_50

    const/4 v11, 0x1

    :goto_51
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1120
    :cond_50
    const/4 v11, 0x0

    goto :goto_51

    .line 1125
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_6b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_51

    const/4 v0, 0x1

    .line 1128
    .local v0, "_arg0":Z
    :goto_52
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setCaptivePortalState(Z)V

    .line 1129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1127
    .end local v0    # "_arg0":Z
    :cond_51
    const/4 v0, 0x0

    goto :goto_52

    .line 1134
    :sswitch_6c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCaptivePortalState()Z

    move-result v4

    .line 1136
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    if-eqz v4, :cond_52

    const/4 v11, 0x1

    :goto_53
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1137
    :cond_52
    const/4 v11, 0x0

    goto :goto_53

    .line 1142
    .end local v4    # "_result":Z
    :sswitch_6d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1145
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setAssociationManual(I)Z

    move-result v4

    .line 1146
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    if-eqz v4, :cond_53

    const/4 v11, 0x1

    :goto_54
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1147
    :cond_53
    const/4 v11, 0x0

    goto :goto_54

    .line 1152
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_6e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAssociationManual()I

    move-result v4

    .line 1154
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1160
    .end local v4    # "_result":I
    :sswitch_6f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_54

    const/4 v0, 0x1

    .line 1164
    .local v0, "_arg0":Z
    :goto_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1165
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setVFAutoJoin(ZI)Z

    move-result v4

    .line 1166
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    if-eqz v4, :cond_55

    const/4 v11, 0x1

    :goto_56
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1162
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :cond_54
    const/4 v0, 0x0

    goto :goto_55

    .line 1167
    .restart local v0    # "_arg0":Z
    .restart local v1    # "_arg1":I
    .restart local v4    # "_result":Z
    :cond_55
    const/4 v11, 0x0

    goto :goto_56

    .line 1172
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_70
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1175
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getVFAutoJoin(I)I

    move-result v4

    .line 1176
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1182
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_71
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_56

    const/4 v0, 0x1

    .line 1185
    .local v0, "_arg0":Z
    :goto_57
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setCmccTimer(Z)Z

    move-result v4

    .line 1186
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    if-eqz v4, :cond_57

    const/4 v11, 0x1

    :goto_58
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1184
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_56
    const/4 v0, 0x0

    goto :goto_57

    .line 1187
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_57
    const/4 v11, 0x0

    goto :goto_58

    .line 1192
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_72
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_58

    .line 1195
    sget-object v11, Landroid/net/wifi/WpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WpsInfo;

    .line 1200
    .local v0, "_arg0":Landroid/net/wifi/WpsInfo;
    :goto_59
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V

    .line 1201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1198
    .end local v0    # "_arg0":Landroid/net/wifi/WpsInfo;
    :cond_58
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WpsInfo;
    goto :goto_59

    .line 1206
    .end local v0    # "_arg0":Landroid/net/wifi/WpsInfo;
    :sswitch_73
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWpsRegistrar()V

    .line 1208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1213
    :sswitch_74
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifidisplayApState()I

    move-result v4

    .line 1215
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1221
    .end local v4    # "_result":I
    :sswitch_75
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifidisplayApEnabled()Z

    move-result v4

    .line 1223
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    if-eqz v4, :cond_59

    const/4 v11, 0x1

    :goto_5a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1225
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1224
    :cond_59
    const/4 v11, 0x0

    goto :goto_5a

    .line 1229
    .end local v4    # "_result":Z
    :sswitch_76
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5a

    const/4 v0, 0x1

    .line 1232
    .local v0, "_arg0":Z
    :goto_5b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifidisplayEnabled(Z)Z

    move-result v4

    .line 1233
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    if-eqz v4, :cond_5b

    const/4 v11, 0x1

    :goto_5c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1235
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1231
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_5a
    const/4 v0, 0x0

    goto :goto_5b

    .line 1234
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_5b
    const/4 v11, 0x0

    goto :goto_5c

    .line 1239
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_77
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5c

    .line 1242
    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1248
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5d

    const/4 v1, 0x1

    .line 1249
    .local v1, "_arg1":Z
    :goto_5e
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1245
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "_arg1":Z
    :cond_5c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_5d

    .line 1248
    :cond_5d
    const/4 v1, 0x0

    goto :goto_5e

    .line 1255
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_78
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiDisplayApConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 1257
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    if-eqz v4, :cond_5e

    .line 1259
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1265
    :goto_5f
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1263
    :cond_5e
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5f

    .line 1269
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_79
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5f

    .line 1272
    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1277
    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_60
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayApConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 1278
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1280
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1275
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":I
    :cond_5f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_60

    .line 1284
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_60

    .line 1287
    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1292
    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_61
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayApMacList(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 1293
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1290
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":I
    :cond_60
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_61

    .line 1299
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1303
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1304
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayConfigure(ILjava/lang/String;)Z

    move-result v4

    .line 1305
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1306
    if-eqz v4, :cond_61

    const/4 v11, 0x1

    :goto_62
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1307
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1306
    :cond_61
    const/4 v11, 0x0

    goto :goto_62

    .line 1311
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_7c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1315
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1317
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1319
    .local v2, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1320
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayConfigureGuestKey(ILjava/lang/String;[BI)Z

    move-result v4

    .line 1321
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    if-eqz v4, :cond_62

    const/4 v11, 0x1

    :goto_63
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1323
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1322
    :cond_62
    const/4 v11, 0x0

    goto :goto_63

    .line 1327
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :sswitch_7d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startDongleScan()V

    .line 1329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1334
    :sswitch_7e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1337
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startDongleSingleCscan(I)V

    .line 1338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1343
    .end local v0    # "_arg0":I
    :sswitch_7f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDongleScanList()Ljava/util/List;

    move-result-object v7

    .line 1345
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1347
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1351
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_80
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1354
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startDongleWakeUp(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1360
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_81
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_63

    const/4 v0, 0x1

    .line 1363
    .local v0, "_arg0":Z
    :goto_64
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayUnscan(Z)Z

    move-result v4

    .line 1364
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    if-eqz v4, :cond_64

    const/4 v11, 0x1

    :goto_65
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1366
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1362
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_63
    const/4 v0, 0x0

    goto :goto_64

    .line 1365
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_64
    const/4 v11, 0x0

    goto :goto_65

    .line 1370
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_82
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isSupportHS20()Z

    move-result v4

    .line 1372
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    if-eqz v4, :cond_65

    const/4 v11, 0x1

    :goto_66
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1373
    :cond_65
    const/4 v11, 0x0

    goto :goto_66

    .line 1378
    .end local v4    # "_result":Z
    :sswitch_83
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAutoInterworkingState()Z

    move-result v4

    .line 1380
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    if-eqz v4, :cond_66

    const/4 v11, 0x1

    :goto_67
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1381
    :cond_66
    const/4 v11, 0x0

    goto :goto_67

    .line 1386
    .end local v4    # "_result":Z
    :sswitch_84
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_67

    const/4 v0, 0x1

    .line 1389
    .restart local v0    # "_arg0":Z
    :goto_68
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->SetAutoInterworking(Z)V

    .line 1390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1388
    .end local v0    # "_arg0":Z
    :cond_67
    const/4 v0, 0x0

    goto :goto_68

    .line 1395
    :sswitch_85
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1399
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1400
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnableNotify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1401
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    if-eqz v4, :cond_68

    const/4 v11, 0x1

    :goto_69
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1402
    :cond_68
    const/4 v11, 0x0

    goto :goto_69

    .line 1407
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_86
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1410
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->isWifiEnableNotifyPackageName(Ljava/lang/String;)Z

    move-result v4

    .line 1411
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    if-eqz v4, :cond_69

    const/4 v11, 0x1

    :goto_6a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1413
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1412
    :cond_69
    const/4 v11, 0x0

    goto :goto_6a

    .line 1417
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_87
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6a

    const/4 v0, 0x1

    .line 1420
    .local v0, "_arg0":Z
    :goto_6b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiOffloadEnabled(Z)Z

    move-result v4

    .line 1421
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1422
    if-eqz v4, :cond_6b

    const/4 v11, 0x1

    :goto_6c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1419
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_6a
    const/4 v0, 0x0

    goto :goto_6b

    .line 1422
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_6b
    const/4 v11, 0x0

    goto :goto_6c

    .line 1427
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_88
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiOffloadEnabled()Z

    move-result v4

    .line 1429
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    if-eqz v4, :cond_6c

    const/4 v11, 0x1

    :goto_6d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1431
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1430
    :cond_6c
    const/4 v11, 0x0

    goto :goto_6d

    .line 1435
    .end local v4    # "_result":Z
    :sswitch_89
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6d

    const/4 v0, 0x1

    .line 1438
    .restart local v0    # "_arg0":Z
    :goto_6e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startWifiOffload(Z)Z

    move-result v4

    .line 1439
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    if-eqz v4, :cond_6e

    const/4 v11, 0x1

    :goto_6f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1441
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1437
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_6d
    const/4 v0, 0x0

    goto :goto_6e

    .line 1440
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_6e
    const/4 v11, 0x0

    goto :goto_6f

    .line 1445
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_8a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6f

    const/4 v0, 0x1

    .line 1448
    .restart local v0    # "_arg0":Z
    :goto_70
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startNetworkSelection(Z)V

    .line 1449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1447
    .end local v0    # "_arg0":Z
    :cond_6f
    const/4 v0, 0x0

    goto :goto_70

    .line 1454
    :sswitch_8b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_70

    .line 1457
    sget-object v11, Landroid/net/wifi/PPPOEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/PPPOEConfig;

    .line 1462
    .local v0, "_arg0":Landroid/net/wifi/PPPOEConfig;
    :goto_71
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V

    .line 1463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1460
    .end local v0    # "_arg0":Landroid/net/wifi/PPPOEConfig;
    :cond_70
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/PPPOEConfig;
    goto :goto_71

    .line 1468
    .end local v0    # "_arg0":Landroid/net/wifi/PPPOEConfig;
    :sswitch_8c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopPPPOE()V

    .line 1470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1475
    :sswitch_8d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v4

    .line 1477
    .local v4, "_result":Landroid/net/wifi/PPPOEInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    if-eqz v4, :cond_71

    .line 1479
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1480
    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/PPPOEInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1485
    :goto_72
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1483
    :cond_71
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_72

    .line 1489
    .end local v4    # "_result":Landroid/net/wifi/PPPOEInfo;
    :sswitch_8e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getMostPreferredNetwork()I

    move-result v4

    .line 1491
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1493
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1497
    .end local v4    # "_result":I
    :sswitch_8f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1500
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setMostPreferredNetwork(I)Z

    move-result v4

    .line 1501
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    if-eqz v4, :cond_72

    const/4 v11, 0x1

    :goto_73
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1503
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1502
    :cond_72
    const/4 v11, 0x0

    goto :goto_73

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
