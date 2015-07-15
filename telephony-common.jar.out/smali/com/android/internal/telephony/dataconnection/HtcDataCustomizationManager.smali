.class public Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;
.super Ljava/lang/Object;
.source "HtcDataCustomizationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;
    }
.end annotation


# static fields
.field public static ATT_CONFIG:Z = false

.field private static final PROP_KEY_SPCS_ROAMING_GUARD_ENABLED:Ljava/lang/String; = "ro.chameleon.MenuDisplay.enable"

.field private static final PROP_KEY_WORLD_PHONE_UI_ENABLED:Ljava/lang/String; = "persist.radio.worldphone"

.field public static SPRINT_CONFIG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcDataCustomizationManager"

.field private static mAllowNationalRoaming:Z

.field private static mCheckApnWhenRoamingOnOff:Z

.field private static mCustErrorCauselist:Ljava/lang/String;

.field private static mCustomerId:Ljava/lang/String;

.field private static mCustomerMCCMNC:Ljava/lang/String;

.field private static mCustomizeCDMALteProfile:I

.field private static mCustomizeLteConfig:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

.field private static mDataRetryTimer:Ljava/lang/String;

.field private static mDualSimDataRoamingPreferredSlot:Z

.field private static mDualSimSingleDataCapable:Z

.field private static mFilterApnTypeList:Ljava/lang/String;

.field private static mFixedDunApn:Ljava/lang/String;

.field private static mGlobalRoamingConfig:Z

.field private static mIgnoreDNSCheckMCCList:Ljava/lang/String;

.field private static mIsIccCardProxyEnabled:Z

.field private static mIsLAESNTELCELSku:Z

.field private static mIsSupportSprintChameleon:Z

.field private static mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

.field private static mPdpLimitPolicy:I

.field private static mPreferSpecificTypeList:[Ljava/lang/String;

.field private static mQCTMMConfig:Z

.field private static mResetRetryCounterScreenOn:Z

.field private static mRoamingEnhanceConfig:Z

.field private static mSetPreferredApnByDefault:Z

.field private static mSupportEUDataRoaming:Z

.field private static mSupportFixedCdmaDNS:Z

.field private static mSwapApnSettingWhenRoaming:Z

.field private static mTurnoffLTEWhenMobileOff:Z

.field private static mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

.field private static mUseDefaultProfileForTethering:Z

.field private static preferSpecificNetworkTypes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 91
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mGlobalRoamingConfig:Z

    .line 92
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mRoamingEnhanceConfig:Z

    .line 93
    sget-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeLteConfig:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    .line 94
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mQCTMMConfig:Z

    .line 95
    sput v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeCDMALteProfile:I

    .line 96
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsSupportSprintChameleon:Z

    .line 97
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsIccCardProxyEnabled:Z

    .line 100
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mAllowNationalRoaming:Z

    .line 101
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCheckApnWhenRoamingOnOff:Z

    .line 102
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSetPreferredApnByDefault:Z

    .line 103
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mTurnoffLTEWhenMobileOff:Z

    .line 104
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUseDefaultProfileForTethering:Z

    .line 105
    const-string v4, ""

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFixedDunApn:Ljava/lang/String;

    .line 106
    const-string v4, ""

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFilterApnTypeList:Ljava/lang/String;

    .line 108
    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    .line 110
    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    .line 112
    const-string v4, ""

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerMCCMNC:Ljava/lang/String;

    .line 114
    sput v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPdpLimitPolicy:I

    .line 116
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportEUDataRoaming:Z

    .line 119
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mResetRetryCounterScreenOn:Z

    .line 120
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimDataRoamingPreferredSlot:Z

    .line 121
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSwapApnSettingWhenRoaming:Z

    .line 124
    const-string v4, ""

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerId:Ljava/lang/String;

    .line 125
    const-string v4, ""

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIgnoreDNSCheckMCCList:Ljava/lang/String;

    .line 126
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportFixedCdmaDNS:Z

    .line 127
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsLAESNTELCELSku:Z

    .line 129
    const-string v4, ""

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDataRetryTimer:Ljava/lang/String;

    .line 133
    const-string v4, ""

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustErrorCauselist:Ljava/lang/String;

    .line 136
    sput-boolean v5, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimSingleDataCapable:Z

    .line 137
    const-string v4, ""

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->preferSpecificNetworkTypes:Ljava/lang/String;

    .line 138
    sput-object v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    .line 144
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v2

    .line 145
    .local v2, "mHCmanager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v4, "Android_Ril"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v7, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 146
    .local v3, "mHCreader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v4, "Phone"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v7, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 148
    .local v1, "mHCPhonereader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v4, "global_roaming_config"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mGlobalRoamingConfig:Z

    .line 149
    const-string v4, "roaming_enhance_config"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mRoamingEnhanceConfig:Z

    .line 150
    const-string v4, "cdma_lte_mm_config"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mQCTMMConfig:Z

    .line 151
    const-string v4, "customize_cdma_lte_profile"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeCDMALteProfile:I

    .line 152
    sget v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeCDMALteProfile:I

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->values()[Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_0

    .line 154
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->values()[Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v4

    sget v7, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeCDMALteProfile:I

    aget-object v4, v4, v7

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeLteConfig:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    .line 156
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    const-string v7, "cdma_telephony_chameleon"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsSupportSprintChameleon:Z

    .line 157
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    const-string v7, "sim_card_proxy"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsIccCardProxyEnabled:Z

    .line 160
    const-string v4, "allow_national_roaming"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mAllowNationalRoaming:Z

    .line 161
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    const-string v7, "national_roaming_mccmnc_list"

    const-string v8, ""

    invoke-interface {v3, v7, v8}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    .line 162
    const-string v4, "check_apn_records_when_roaming_on_off"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCheckApnWhenRoamingOnOff:Z

    .line 163
    const-string v4, "fixed_apn_for_dun"

    const-string v7, ""

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFixedDunApn:Ljava/lang/String;

    .line 164
    const-string v4, "set_preferred_apn_by_default"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSetPreferredApnByDefault:Z

    .line 165
    const-string v4, "turnoff_lte_when_mobile_off"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mTurnoffLTEWhenMobileOff:Z

    .line 166
    const-string v4, "use_default_profile_for_tethering"

    const/4 v7, 0x1

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUseDefaultProfileForTethering:Z

    .line 167
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    const-string v7, "umts_update_profile_slot_policy"

    const-string v8, "10"

    invoke-interface {v3, v7, v8}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "umts_update_profile_action_policy"

    const-string v9, "4,3"

    invoke-interface {v3, v8, v9}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    .line 170
    const-string v4, "customer_mcc_mnc_list"

    const-string v7, ""

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerMCCMNC:Ljava/lang/String;

    .line 171
    const-string v4, "pdplimit_policy"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPdpLimitPolicy:I

    .line 172
    const-string v4, "filter_apn_type_list"

    const-string v7, ""

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFilterApnTypeList:Ljava/lang/String;

    .line 173
    const-string v4, "support_eu_data_roaming"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportEUDataRoaming:Z

    .line 176
    const-string v4, "reset_retry_counter_screen_on"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mResetRetryCounterScreenOn:Z

    .line 177
    const-string v4, "swap_apn_setting_when_roaming"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSwapApnSettingWhenRoaming:Z

    .line 178
    const-string v4, "dualSimDataRoamingPreferredSlot"

    const/4 v7, 0x0

    invoke-interface {v1, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimDataRoamingPreferredSlot:Z

    .line 181
    invoke-virtual {v2}, Lcom/htc/customization/HtcCustomizationManager;->readCID()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerId:Ljava/lang/String;

    .line 182
    const-string v4, "ignore_dns_check_mcc_list"

    const-string v7, ""

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIgnoreDNSCheckMCCList:Ljava/lang/String;

    .line 183
    const-string v4, "support_fixed_cdma_dns"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportFixedCdmaDNS:Z

    .line 184
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isLAESNTELCELSku()Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsLAESNTELCELSku:Z

    .line 186
    const-string v4, "data_retry_config"

    const-string v7, ""

    invoke-interface {v3, v4, v7}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDataRetryTimer:Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getRilReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    const-string v7, "customize_error_cause_list"

    const-string v8, ""

    invoke-static {v4, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustErrorCauselist:Ljava/lang/String;

    .line 193
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getRilReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    const-string v7, "dual_sim_single_data_capable"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimSingleDataCapable:Z

    .line 194
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getRilReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    const-string v7, "prefer_specific_network_types"

    const-string v8, ""

    invoke-static {v4, v7, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->preferSpecificNetworkTypes:Ljava/lang/String;

    .line 195
    sget-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->preferSpecificNetworkTypes:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    .line 197
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->dump()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v1    # "mHCPhonereader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v3    # "mHCreader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    sget v4, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v7, 0xa

    if-eq v4, v7, :cond_1

    sget v4, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v7, 0x62

    if-eq v4, v7, :cond_1

    sget v4, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v7, 0x55

    if-ne v4, v7, :cond_2

    :cond_1
    move v4, v6

    :goto_1
    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->SPRINT_CONFIG:Z

    .line 293
    sget v4, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/4 v7, 0x7

    if-ne v4, v7, :cond_3

    :goto_2
    sput-boolean v6, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->ATT_CONFIG:Z

    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HtcDataCustomizationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot read customization value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v4, v5

    .line 284
    goto :goto_1

    :cond_3
    move v6, v5

    .line 293
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static CKT_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 278
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->CKT:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static CSPIRE_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->CSPIRE:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeLteConfig:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    return-object v0
.end method

.method public static GENERIC_WPHONE_CONFIG()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 242
    const/high16 v1, -0x80000000

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "persist.radio.worldphone"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static KDDI_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->KDDI:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static LRA_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->LRA:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static MPCS_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->MPCS:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static OM_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->OPEN_MOBILE:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static QCT_MM_CONFIG()Z
    .locals 1

    .prologue
    .line 207
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mQCTMMConfig:Z

    return v0
.end method

.method public static SPRINT_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 238
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->SPRINT:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SPRINT_LTE_WPHONE_CONFIG()Z
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->SPRINT_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SPRINT_ROAMING_ENHANCE_CONFIG()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 266
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->isSupportSprintChameleon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mRoamingEnhanceConfig:Z

    if-eqz v2, :cond_0

    const-string v2, "ro.chameleon.MenuDisplay.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 269
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 267
    goto :goto_0

    .line 269
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mRoamingEnhanceConfig:Z

    goto :goto_0
.end method

.method public static SPRINT_WPHONE_CONFIG()Z
    .locals 1

    .prologue
    .line 250
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->SPRINT_CONFIG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SupportProvisionCheck()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public static VERIZON_LTE_CONFIG()Z
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->VERIZON:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static VERIZON_LTE_WPHONE_CONFIG()Z
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->VERIZON_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final VZW_GLOBAL_ROAMING_CONFIG()Z
    .locals 1

    .prologue
    .line 210
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mGlobalRoamingConfig:Z

    return v0
.end method

.method public static dump()V
    .locals 3

    .prologue
    .line 408
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGlobalRoamingConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mGlobalRoamingConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRoamingEnhanceConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mRoamingEnhanceConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCustomizeLteConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeLteConfig:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQCTMMConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mQCTMMConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCustomizeCDMALteProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomizeCDMALteProfile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportSprintChameleon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsSupportSprintChameleon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsIccCardProxyEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsIccCardProxyEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllowNationalRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mAllowNationalRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckApnWhenRoamingOnOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCheckApnWhenRoamingOnOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSetPreferredApnByDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSetPreferredApnByDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTurnoffLTEWhenMobileOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mTurnoffLTEWhenMobileOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUseDefaultProfileForTethering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUseDefaultProfileForTethering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFixedDunApn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFixedDunApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFilterApnTypeList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFilterApnTypeList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNationalRoamingList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUpdateProfilePolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCustomerMCCMNC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerMCCMNC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPdpLimitPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPdpLimitPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportEUDataRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportEUDataRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mResetRetryCounterScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mResetRetryCounterScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDualSimDataRoamingPreferredSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimDataRoamingPreferredSlot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSwapApnSettingWhenRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSwapApnSettingWhenRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCustomerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIgnoreDNSCheckMCCList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIgnoreDNSCheckMCCList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportFixedCdmaDNS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportFixedCdmaDNS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataRetryTimer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDataRetryTimer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCustErrorCauselist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustErrorCauselist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDualSimSingleDataCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimSingleDataCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v0, "HtcDataCustomizationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferSpecificNetworkTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->preferSpecificNetworkTypes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method public static getAllowNationalRoaming()Z
    .locals 1

    .prologue
    .line 323
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mAllowNationalRoaming:Z

    return v0
.end method

.method public static getCheckApnWhenRoamingOnOff()Z
    .locals 1

    .prologue
    .line 330
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCheckApnWhenRoamingOnOff:Z

    return v0
.end method

.method public static getCustErrorCauseList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustErrorCauselist:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerId:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomerMCCMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mCustomerMCCMNC:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomerRetryTimer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDataRetryTimer:Ljava/lang/String;

    return-object v0
.end method

.method public static getDualSimDataRoamingPreferredSlot()Z
    .locals 1

    .prologue
    .line 366
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimDataRoamingPreferredSlot:Z

    return v0
.end method

.method public static getDualSimSingleDataCapable()Z
    .locals 1

    .prologue
    .line 398
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mDualSimSingleDataCapable:Z

    return v0
.end method

.method public static getFilterApnTypeList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFilterApnTypeList:Ljava/lang/String;

    return-object v0
.end method

.method public static getFixedDunApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mFixedDunApn:Ljava/lang/String;

    return-object v0
.end method

.method public static getIgnoreDNSCheckMCCList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIgnoreDNSCheckMCCList:Ljava/lang/String;

    return-object v0
.end method

.method public static getIsLAESNTELCELSku()Z
    .locals 1

    .prologue
    .line 383
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsLAESNTELCELSku:Z

    return v0
.end method

.method public static getNationalRoamingList()Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;
    .locals 2

    .prologue
    .line 326
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    if-nez v0, :cond_0

    const-string v0, "HtcDataCustomizationManager"

    const-string v1, "NationalRoamingList get ACC value failed!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mNationalRoamingList:Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPdpLimitPolicy()I
    .locals 1

    .prologue
    .line 352
    sget v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPdpLimitPolicy:I

    return v0
.end method

.method public static getPreferSpecificTypeList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 401
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "HtcDataCustomizationManager"

    const-string v1, "PreferSpecificTypeList get ACC value failed!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mPreferSpecificTypeList:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public static getResetRetryCounterScreenOn()Z
    .locals 1

    .prologue
    .line 363
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mResetRetryCounterScreenOn:Z

    return v0
.end method

.method public static getSetPreferredApnByDefault()Z
    .locals 1

    .prologue
    .line 336
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSetPreferredApnByDefault:Z

    return v0
.end method

.method public static getSupportEUDataRoaming()Z
    .locals 1

    .prologue
    .line 358
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportEUDataRoaming:Z

    return v0
.end method

.method public static getSupportFixedCdmaDNS()Z
    .locals 1

    .prologue
    .line 380
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSupportFixedCdmaDNS:Z

    return v0
.end method

.method public static getSwapApnSettingWhenRoaming()Z
    .locals 1

    .prologue
    .line 369
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mSwapApnSettingWhenRoaming:Z

    return v0
.end method

.method public static getTurnoffLTEWhenMobileOff()Z
    .locals 1

    .prologue
    .line 339
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mTurnoffLTEWhenMobileOff:Z

    return v0
.end method

.method public static getUpdateProfilePolicy()Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;
    .locals 3

    .prologue
    .line 345
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    if-nez v0, :cond_0

    const-string v0, "HtcDataCustomizationManager"

    const-string v1, "UpdateProfilePolicy get ACC value failed!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUpdateProfilePolicy:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    const-string v1, "10"

    const-string v2, "4,3"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUseDefaultProfileForTethering()Z
    .locals 1

    .prologue
    .line 342
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mUseDefaultProfileForTethering:Z

    return v0
.end method

.method public static isIccCardProxyEnabled()Z
    .locals 1

    .prologue
    .line 296
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsIccCardProxyEnabled:Z

    return v0
.end method

.method public static isSupportCG2GGPhoneModeChange()Z
    .locals 5

    .prologue
    .line 305
    const/high16 v3, -0x80000000

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v2

    .line 308
    .local v2, "isWphone":Z
    const/high16 v3, 0x40000000    # 2.0f

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    .line 311
    .local v0, "isDSDA":Z
    const/high16 v3, 0x20000000

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    .line 314
    .local v1, "isDSDS":Z
    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 316
    :cond_0
    const/4 v3, 0x1

    .line 318
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSupportSprintChameleon()Z
    .locals 1

    .prologue
    .line 263
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->mIsSupportSprintChameleon:Z

    return v0
.end method
