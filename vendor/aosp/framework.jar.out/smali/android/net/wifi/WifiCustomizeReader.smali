.class public Landroid/net/wifi/WifiCustomizeReader;
.super Ljava/lang/Object;
.source "WifiCustomizeReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiCustomizeReader"

.field public static final WLAN_HOTSPOT_REMIND_DEFAULT:I = 0x1

.field public static final WLAN_HOTSPOT_REMIND_SPRINT:I = 0x3

.field public static final WLAN_HOTSPOT_REMIND_VZW:I = 0x2

.field public static final WLAN_NOTIFICATION_EAP_AKA_DEFAULT:I = 0x1

.field public static final WLAN_NOTIFICATION_EAP_AKA_KT:I = 0x2

.field public static final WLAN_PRECONFIG_TYPE_CMCC:I = 0x3

.field public static final WLAN_PRECONFIG_TYPE_CT:I = 0x2

.field public static final WLAN_PRECONFIG_TYPE_DEFAULT:I = 0x1

.field public static final WLAN_PRECONFIG_TYPE_EU:I = 0x6

.field public static final WLAN_PRECONFIG_TYPE_TELCEL:I = 0x8

.field public static final WLAN_PRECONFIG_TYPE_TMI:I = 0x5

.field public static final WLAN_PRECONFIG_TYPE_TMONL:I = 0x7

.field public static final WLAN_PRECONFIG_TYPE_VODAFONE:I = 0x4

.field public static final WLAN_SETNOTIFICATION_CMCC:I = 0x2

.field public static final WLAN_SETNOTIFICATION_DEFAULT:I = 0x1

.field public static final WLAN_SOLUTION_ATHEROS:I = 0x3

.field public static final WLAN_SOLUTION_BROADCOM:I = 0x1

.field public static final WLAN_SOLUTION_QUALCOMM:I = 0x2

.field public static final WLAN_SOLUTION_TI:I = 0x4

.field public static final WLAN_STATUS_DEFAULT:I = 0x1

.field public static final WLAN_STATUS_VZW:I = 0x2

.field private static mAuthenticationErrorRetry:I

.field private static mDisableNetworkFocibly:Z

.field private static mDnsAddressForWanDetection:Ljava/lang/String;

.field private static mLowerOpenPriority:Z

.field private static mPreconfigType:I

.field private static mSenseVersion:Ljava/lang/String;

.field private static mSupportAssociateManual:Z

.field private static mSupportDockWifi:Z

.field private static mSupportHotspotEncryption:Z

.field private static mSupportMiracast:Z

.field private static mSupportP2pConcurrent:Z

.field private static mVzwWifiAggregation:Z

.field private static mWifiStatusType:I

.field private static mWlanDetectionType:I

.field private static mWlanSolution:I

.field private static sAuthenticationErrorRetry:Ljava/lang/String;

.field private static sCust5GHotspot:Ljava/lang/String;

.field private static sCustDnsAddressForWanDetection:Ljava/lang/String;

.field private static sCustDockWifi:Ljava/lang/String;

.field private static sCustDualBand:Ljava/lang/String;

.field private static sCustHas3LM:Ljava/lang/String;

.field private static sCustHasBlistFilter:Ljava/lang/String;

.field private static sCustHasCW:Ljava/lang/String;

.field private static sCustHasIMEI:Ljava/lang/String;

.field private static sCustHasMDN:Ljava/lang/String;

.field private static sCustHotspotDhcpStartIp:Ljava/lang/String;

.field private static sCustHotspotPasswordCount:Ljava/lang/String;

.field private static sCustHotspotRemind:Ljava/lang/String;

.field private static sCustHotspotSecurityType:Ljava/lang/String;

.field private static sCustMHSEnable:Ljava/lang/String;

.field private static sCustMiracast:Ljava/lang/String;

.field private static sCustP2pConcurrent:Ljava/lang/String;

.field private static sCustPreconfigType:Ljava/lang/String;

.field private static sCustReaderName:Ljava/lang/String;

.field private static sCustReaderNameNetwork:Ljava/lang/String;

.field private static sCustReaderNameSystem:Ljava/lang/String;

.field private static sCustSecureNetworkNotification:Ljava/lang/String;

.field private static sCustSenseVersion:Ljava/lang/String;

.field private static sCustSetnotificationType:Ljava/lang/String;

.field private static sCustSupportApSta:Ljava/lang/String;

.field private static sCustSupportWimax:Ljava/lang/String;

.field private static sCustTMOUSSku:Ljava/lang/String;

.field private static sCustWifiOffload:Ljava/lang/String;

.field private static sCustWifiOffloadEnable:Ljava/lang/String;

.field private static sCustWifiSelection:Ljava/lang/String;

.field private static sCustWlanAggregation:Ljava/lang/String;

.field private static sCustWlanAssociateManual:Ljava/lang/String;

.field private static sCustWlanCheckOldDongle:Ljava/lang/String;

.field private static sCustWlanDetecionType:Ljava/lang/String;

.field private static sCustWlanDisableNetworkFocibly:Ljava/lang/String;

.field private static sCustWlanLowerOpenPriority:Ljava/lang/String;

.field private static sCustWlanNotificationEapAka:Ljava/lang/String;

.field private static sCustWlanSolution:Ljava/lang/String;

.field private static sCustWlanStatus:Ljava/lang/String;

.field private static sHotspotEncryption:Ljava/lang/String;


# instance fields
.field private mCheckOldDongle:Z

.field private mEnableCW:Z

.field private mEnableImeiPassword:Z

.field private mEnableImeiSsid:Z

.field private mEnableMdnPassword:Z

.field private mEnableMhsFeature:Z

.field private mHasBlistFilter:Z

.field private mHotspotDhcpStartingIp:Ljava/lang/String;

.field private mHotspotPasswordCount:I

.field private mHotspotRemind:I

.field private mHotspotSecurityType:Ljava/lang/String;

.field private mIsTMOUSSku:Z

.field private mNotificationEapAka:I

.field private mSetnotificationType:I

.field private mSupport3LM:Z

.field private mSupport5GHotspot:Z

.field private mSupportApSta:Z

.field private mSupportDualBand:Z

.field private mSupportNetworkSelection:Z

.field private mSupportNotificationSecure:Z

.field private mSupportWifiOffload:Z

.field private mSupportWimax:Z

.field private mWifiOffloadEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    const-string v0, "Android_Wifi"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustReaderName:Ljava/lang/String;

    .line 52
    const-string v0, "Android_Networking"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustReaderNameNetwork:Ljava/lang/String;

    .line 53
    const-string v0, "System"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustReaderNameSystem:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "wlan_hotspot_has_imei"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHasIMEI:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "wlan_hotspot_has_mdn"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHasMDN:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "tethering_guard_support"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustMHSEnable:Ljava/lang/String;

    .line 57
    const-string v0, "has_cw"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHasCW:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "support_dualband"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustDualBand:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "support_Wifioffload"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWifiOffload:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "support_network_selection"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWifiSelection:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "support_3lm"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHas3LM:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "support_wimax"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustSupportWimax:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "wlan_hotspot_security_type"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotSecurityType:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "wlan_blist_filter"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHasBlistFilter:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "wlan_wifi_status"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanStatus:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "wlan_wifi_aggregation"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanAggregation:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "wlan_hotspot_password_count"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotPasswordCount:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "support_dockwifi"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustDockWifi:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "wlan_setnotification"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustSetnotificationType:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "wlan_securenetwork_notification"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustSecureNetworkNotification:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "wlan_hotspot_remind"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotRemind:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "wlan_hotspot_start_ip"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotDhcpStartIp:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "wlan_notification_eapaka"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanNotificationEapAka:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "wlan_preconfig"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustPreconfigType:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "wlan_check_old_dongle"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanCheckOldDongle:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "wlan_support_apsta"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustSupportApSta:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "wlan_dns_address_for_wandetection"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustDnsAddressForWanDetection:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "wlan_wifioffload_enable"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWifiOffloadEnable:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "support_associate_manual"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanAssociateManual:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "wlan_security_openlast"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanLowerOpenPriority:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "wlan_disablenetwork_forcibly"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanDisableNetworkFocibly:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "support_p2p_concurrent"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustP2pConcurrent:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "support_miracast"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustMiracast:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "wlan_solution"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanSolution:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "wlan_wan_detection_type"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanDetecionType:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "sense_version"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustSenseVersion:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "wlan_hotspot_password_encryption"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sHotspotEncryption:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "wlan_authentication_error_retry"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sAuthenticationErrorRetry:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "wlan_support_5g_hotspot"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCust5GHotspot:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "is_tmous_sku"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustTMOUSSku:Ljava/lang/String;

    .line 107
    sput v2, Landroid/net/wifi/WifiCustomizeReader;->mWifiStatusType:I

    .line 108
    sput-boolean v1, Landroid/net/wifi/WifiCustomizeReader;->mVzwWifiAggregation:Z

    .line 110
    sput-boolean v1, Landroid/net/wifi/WifiCustomizeReader;->mSupportDockWifi:Z

    .line 117
    sput v2, Landroid/net/wifi/WifiCustomizeReader;->mPreconfigType:I

    .line 120
    const-string/jumbo v0, "www.google.com"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->mDnsAddressForWanDetection:Ljava/lang/String;

    .line 121
    sput-boolean v1, Landroid/net/wifi/WifiCustomizeReader;->mSupportAssociateManual:Z

    .line 122
    sput-boolean v1, Landroid/net/wifi/WifiCustomizeReader;->mLowerOpenPriority:Z

    .line 123
    sput-boolean v1, Landroid/net/wifi/WifiCustomizeReader;->mDisableNetworkFocibly:Z

    .line 124
    sput-boolean v2, Landroid/net/wifi/WifiCustomizeReader;->mSupportP2pConcurrent:Z

    .line 125
    sput-boolean v2, Landroid/net/wifi/WifiCustomizeReader;->mSupportMiracast:Z

    .line 127
    sput v2, Landroid/net/wifi/WifiCustomizeReader;->mWlanSolution:I

    .line 128
    sput v2, Landroid/net/wifi/WifiCustomizeReader;->mWlanDetectionType:I

    .line 129
    const-string v0, "5.0"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->mSenseVersion:Ljava/lang/String;

    .line 130
    sput-boolean v1, Landroid/net/wifi/WifiCustomizeReader;->mSupportHotspotEncryption:Z

    .line 131
    const/4 v0, 0x5

    sput v0, Landroid/net/wifi/WifiCustomizeReader;->mAuthenticationErrorRetry:I

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/16 v6, 0xd

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiPassword:Z

    .line 96
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiSsid:Z

    .line 97
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMdnPassword:Z

    .line 98
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMhsFeature:Z

    .line 99
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableCW:Z

    .line 100
    iput-boolean v9, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportDualBand:Z

    .line 101
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWifiOffload:Z

    .line 102
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNetworkSelection:Z

    .line 103
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport3LM:Z

    .line 104
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWimax:Z

    .line 105
    const-string/jumbo v5, "wpa2-psk"

    iput-object v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotSecurityType:Ljava/lang/String;

    .line 106
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mHasBlistFilter:Z

    .line 109
    iput v6, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotPasswordCount:I

    .line 111
    iput v9, p0, Landroid/net/wifi/WifiCustomizeReader;->mSetnotificationType:I

    .line 112
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNotificationSecure:Z

    .line 113
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mCheckOldDongle:Z

    .line 114
    iput v9, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotRemind:I

    .line 115
    const-string v5, "192.168.1.10"

    iput-object v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotDhcpStartingIp:Ljava/lang/String;

    .line 116
    iput v9, p0, Landroid/net/wifi/WifiCustomizeReader;->mNotificationEapAka:I

    .line 118
    iput-boolean v9, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportApSta:Z

    .line 119
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mWifiOffloadEnable:Z

    .line 132
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport5GHotspot:Z

    .line 133
    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mIsTMOUSSku:Z

    .line 137
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 138
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustReaderNameSystem:Ljava/lang/String;

    invoke-virtual {v0, v5, v9, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 142
    .local v3, "custSystemReader":Lcom/htc/customization/HtcCustomizationReader;
    :try_start_0
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWifiOffload:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWifiOffload:Z

    .line 143
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_WIFIOFFLOAD = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWifiOffload:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHas3LM:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport3LM:Z

    .line 145
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_3LM = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport3LM:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustSupportWimax:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWimax:Z

    .line 147
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_WIMAX= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWimax:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustReaderNameNetwork:Ljava/lang/String;

    invoke-virtual {v0, v5, v9, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 159
    .local v1, "custNetworkReader":Lcom/htc/customization/HtcCustomizationReader;
    :try_start_1
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustMHSEnable:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMhsFeature:Z

    .line 160
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_MHS_ENABLE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMhsFeature:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    :goto_1
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustReaderName:Ljava/lang/String;

    invoke-virtual {v0, v5, v9, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 172
    .local v2, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :try_start_2
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHasIMEI:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiPassword:Z

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiSsid:Z

    .line 173
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_IMEI_ENABLE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiSsid:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHasMDN:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMdnPassword:Z

    .line 175
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_MDN_ENABLE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMdnPassword:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHasCW:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableCW:Z

    .line 177
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_C+W_ENABLE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableCW:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustDualBand:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportDualBand:Z

    .line 179
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_DUALBAND = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportDualBand:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_HOTSPOT_SECURITY_TYPE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotSecurityType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHasBlistFilter:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mHasBlistFilter:Z

    .line 183
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_HAS_BLISTER_FILTER = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mHasBlistFilter:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanStatus:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Landroid/net/wifi/WifiCustomizeReader;->mWifiStatusType:I

    .line 185
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_WIFI_STATUS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/net/wifi/WifiCustomizeReader;->mWifiStatusType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanAggregation:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mVzwWifiAggregation:Z

    .line 187
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_VZW_WIFI_AGGREGATION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mVzwWifiAggregation:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotPasswordCount:Ljava/lang/String;

    const/16 v6, 0xd

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotPasswordCount:I

    .line 189
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_HOTSPOT_PASSWORD_COUNT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotPasswordCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustDockWifi:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mSupportDockWifi:Z

    .line 191
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_DOCK_WIFI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mSupportDockWifi:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustSetnotificationType:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSetnotificationType:I

    .line 193
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_SETNOTIFICATION_TYPE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSetnotificationType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustSecureNetworkNotification:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNotificationSecure:Z

    .line 195
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_NOTIFICATION_SECURE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNotificationSecure:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotRemind:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotRemind:I

    .line 197
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_SETNOTIFICATION_TYPE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotRemind:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotDhcpStartIp:Ljava/lang/String;

    const-string v6, "192.168.1.10"

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotDhcpStartingIp:Ljava/lang/String;

    .line 199
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_HOTSPOT_DHCP_STARTING_IP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotDhcpStartingIp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanNotificationEapAka:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mNotificationEapAka:I

    .line 201
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_NOTIFICATION_EAP_AKA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mNotificationEapAka:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanLowerOpenPriority:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mLowerOpenPriority:Z

    .line 203
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_LOWER_LOWER_PRIORITY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mLowerOpenPriority:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustPreconfigType:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Landroid/net/wifi/WifiCustomizeReader;->mPreconfigType:I

    .line 205
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_PRECONFIG_TYPE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/net/wifi/WifiCustomizeReader;->mPreconfigType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanCheckOldDongle:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mCheckOldDongle:Z

    .line 207
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_CHECK_OLD_DONGLE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mCheckOldDongle:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustSupportApSta:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportApSta:Z

    .line 209
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_APSTA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportApSta:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustDnsAddressForWanDetection:Ljava/lang/String;

    const-string/jumbo v6, "www.google.com"

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/net/wifi/WifiCustomizeReader;->mDnsAddressForWanDetection:Ljava/lang/String;

    .line 211
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_DNS_ADDRESS_FOR_WAN_DETECTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/WifiCustomizeReader;->mDnsAddressForWanDetection:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWifiOffloadEnable:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mWifiOffloadEnable:Z

    .line 213
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_WIFIOFFLOAD_ENABLE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mWifiOffloadEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanAssociateManual:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mSupportAssociateManual:Z

    .line 215
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_SUPPORT_ASSOCIATE_MANUAL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mSupportAssociateManual:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanDisableNetworkFocibly:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mDisableNetworkFocibly:Z

    .line 217
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_DISABLE_NETWORK_FOCIBLY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mDisableNetworkFocibly:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWifiSelection:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNetworkSelection:Z

    .line 219
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_SUPPORT_NETWOR_SELECTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNetworkSelection:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustP2pConcurrent:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mSupportP2pConcurrent:Z

    .line 221
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_Support_P2P_CONCURRENT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mSupportP2pConcurrent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustMiracast:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mSupportMiracast:Z

    .line 223
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_Support_Miracast = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mSupportMiracast:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanSolution:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Landroid/net/wifi/WifiCustomizeReader;->mWlanSolution:I

    .line 225
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_SULUTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/net/wifi/WifiCustomizeReader;->mWlanSolution:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanDetecionType:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Landroid/net/wifi/WifiCustomizeReader;->mWlanDetectionType:I

    .line 227
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_DETECTION_TYPE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/net/wifi/WifiCustomizeReader;->mWlanDetectionType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustSenseVersion:Ljava/lang/String;

    const-string v6, "5.0"

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/net/wifi/WifiCustomizeReader;->mSenseVersion:Ljava/lang/String;

    .line 229
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SENSE_VERSION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/WifiCustomizeReader;->mSenseVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sHotspotEncryption:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mSupportHotspotEncryption:Z

    .line 231
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_Support_Hotspot_Encryption = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mSupportHotspotEncryption:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sAuthenticationErrorRetry:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Landroid/net/wifi/WifiCustomizeReader;->mAuthenticationErrorRetry:I

    .line 233
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_Athentication_Error_Retry = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/net/wifi/WifiCustomizeReader;->mAuthenticationErrorRetry:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCust5GHotspot:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport5GHotspot:Z

    .line 235
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_5G_Hotspot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport5GHotspot:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustTMOUSSku:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mIsTMOUSSku:Z

    .line 237
    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_Is_TMOUS_Sku = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mIsTMOUSSku:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 246
    :goto_2
    return-void

    .line 149
    .end local v1    # "custNetworkReader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v2    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :catch_0
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "WifiCustomizeReader"

    const-string v6, "cannot read customization customize_hotspot_mdn"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 162
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "custNetworkReader":Lcom/htc/customization/HtcCustomizationReader;
    :catch_1
    move-exception v4

    .line 164
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v5, "WifiCustomizeReader"

    const-string v6, "cannot read customization customize_hotspot_mdn"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 239
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :catch_2
    move-exception v4

    .line 241
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v5, "WifiCustomizeReader"

    const-string v6, "cannot read customization value"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getDnsAddressForWanDetection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Landroid/net/wifi/WifiCustomizeReader;->mDnsAddressForWanDetection:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreconfigType()I
    .locals 1

    .prologue
    .line 333
    sget v0, Landroid/net/wifi/WifiCustomizeReader;->mPreconfigType:I

    return v0
.end method

.method public static getSenseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    sget-object v0, Landroid/net/wifi/WifiCustomizeReader;->mSenseVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getWifiStatusType()I
    .locals 1

    .prologue
    .line 297
    sget v0, Landroid/net/wifi/WifiCustomizeReader;->mWifiStatusType:I

    return v0
.end method

.method public static getWlanDetectionType()I
    .locals 1

    .prologue
    .line 377
    sget v0, Landroid/net/wifi/WifiCustomizeReader;->mWlanDetectionType:I

    return v0
.end method

.method public static getWlanSolution()I
    .locals 1

    .prologue
    .line 373
    sget v0, Landroid/net/wifi/WifiCustomizeReader;->mWlanSolution:I

    return v0
.end method

.method public static isDisableNetworkFocibly()Z
    .locals 1

    .prologue
    .line 361
    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mDisableNetworkFocibly:Z

    return v0
.end method

.method public static isLowerOpenPriority()Z
    .locals 1

    .prologue
    .line 357
    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mLowerOpenPriority:Z

    return v0
.end method

.method public static isSupportAssociateManual()Z
    .locals 1

    .prologue
    .line 353
    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mSupportAssociateManual:Z

    return v0
.end method

.method public static isSupportDockWifi()Z
    .locals 1

    .prologue
    .line 309
    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mSupportDockWifi:Z

    return v0
.end method

.method public static isSupportHotspotEncryption()Z
    .locals 1

    .prologue
    .line 385
    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mSupportHotspotEncryption:Z

    return v0
.end method

.method public static isSupportMiracast()Z
    .locals 1

    .prologue
    .line 369
    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mSupportMiracast:Z

    return v0
.end method

.method public static isSupportP2pConcurrent()Z
    .locals 1

    .prologue
    .line 365
    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mSupportP2pConcurrent:Z

    return v0
.end method

.method public static isVzwWifiAggregation()Z
    .locals 1

    .prologue
    .line 301
    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mVzwWifiAggregation:Z

    return v0
.end method


# virtual methods
.method public getAuthenticationErrorRetry()I
    .locals 1

    .prologue
    .line 389
    sget v0, Landroid/net/wifi/WifiCustomizeReader;->mAuthenticationErrorRetry:I

    return v0
.end method

.method public getHotspotDhcpStartingIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotDhcpStartingIp:Ljava/lang/String;

    return-object v0
.end method

.method public getHotspotPasswordCount()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotPasswordCount:I

    return v0
.end method

.method public getHotspotRemindType()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotRemind:I

    return v0
.end method

.method public getHotspotSecurityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotSecurityType:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationEapAka()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mNotificationEapAka:I

    return v0
.end method

.method public getNotificationType()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSetnotificationType:I

    return v0
.end method

.method public isCWEnabled()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableCW:Z

    return v0
.end method

.method public isCheckOldDongle()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mCheckOldDongle:Z

    return v0
.end method

.method public isEnableImeiPassword()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiPassword:Z

    return v0
.end method

.method public isEnableImeiSsid()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiSsid:Z

    return v0
.end method

.method public isEnableMdnPassword()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMdnPassword:Z

    return v0
.end method

.method public isHasBlistFilter()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mHasBlistFilter:Z

    return v0
.end method

.method public isMHSEnabled()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMhsFeature:Z

    return v0
.end method

.method public isSupport3LM()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport3LM:Z

    return v0
.end method

.method public isSupport5GHotspot()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport5GHotspot:Z

    return v0
.end method

.method public isSupportApSta()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportApSta:Z

    return v0
.end method

.method public isSupportDualBand()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportDualBand:Z

    return v0
.end method

.method public isSupportNetworkSelection()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNetworkSelection:Z

    return v0
.end method

.method public isSupportNotificationSecure()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNotificationSecure:Z

    return v0
.end method

.method public isSupportWifiOffload()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWifiOffload:Z

    return v0
.end method

.method public isSupportWimax()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWimax:Z

    return v0
.end method

.method public isTMOUSSku()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mIsTMOUSSku:Z

    return v0
.end method

.method public isWifiOffloadEnable()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mWifiOffloadEnable:Z

    return v0
.end method
