.class public final Lcom/android/nfc/HtcUtils;
.super Ljava/lang/Object;
.source "HtcUtils.java"


# static fields
.field private static final ACC_APP_NAME:Ljava/lang/String; = "Android_Core_Framework"

.field public static final ACTION_P2P_ALLOW_RECEIVE:Ljava/lang/String; = "com.htc.nfc.p2mode.action.ALLOW_RECEIVE"

.field public static final ACTION_READ_ALLOW_RECEIVE:Ljava/lang/String; = "com.htc.nfc.readmode.action.ALLOW_RECEIVE"

.field private static final ATT_SKU_ID:I = 0x7

.field public static final CODEBASE_NONE:I = 0x0

.field public static final CODEBASE_NOT_INITIALIZATION:I = -0x1

.field static final DBG:Z

.field public static final DEFAULT_SENSE_VERSION:Ljava/lang/String; = "4.5"

.field private static final FILE_PATH:Ljava/lang/String; = "/sys/class/NFC_sensor/comn"

.field public static final HTC_SENSE_VERSION:Ljava/lang/String; = "HTC_SENSE_VERSION"

.field protected static final NFC_LOCK_TYPE_IN_ZONE:I = 0x1

.field protected static final NFC_LOCK_TYPE_NOT_SUPPORT:I = 0x0

.field private static final NFC_SET_ON_ONCE_DEFAULT:Z = true

.field public static final NXPNCI_CODEBASE_AR210:I = 0x210

.field public static final NXPNCI_CODEBASE_AR220_MR1:I = 0x220

.field public static final NXP_CODEBASE_R880:I = 0x880

.field public static final NXP_CODEBASE_R890:I = 0x890

.field public static final NXP_CODEBASE_R8C0:I = 0x8c0

.field private static final PREF_NFC_SET_ON_ONCE:Ljava/lang/String; = "nfc_set_on_once"

.field private static final PROTOCOL_FUTURE_EXTENSION:B = 0xft

.field public static final PROVIDER_SERURITY_PROMPT_DEFAULT:Z = true

.field public static final PROVIDER_SERURITY_PROMPT_ENABLED:Ljava/lang/String; = "vzw_nfc_security_reminder_enabled"

.field public static final PROVIDER_USER_PROMPT_DEFAULT:Z = true

.field public static final PROVIDER_USER_PROMPT_ENABLED:Ljava/lang/String; = "vzw_nfc_handover_prompt_enabled"

.field public static final RECEIVED_NFC_MESSAGE:Ljava/lang/String; = "RECEIVED_NFC_MESSAGE"

.field static final TAG:Ljava/lang/String; = "Nfc-Utils"

.field private static final TMOUS_SKU_ID:I = 0xb

.field private static final UICC_SWP_FILE_NAME:Ljava/lang/String; = "nxp_uicc_swp"

.field public static final USER_PROMPT_DISABLE:I = 0x0

.field public static final USER_PROMPT_FOR_P2P:I = 0x1

.field public static final USER_PROMPT_FOR_P2P_FILE_PREVIEW:I = 0x4

.field public static final USER_PROMPT_FOR_READ:I = 0x2

.field public static final USER_PROMPT_FOR_URL:I = 0x8

.field public static final USER_PROMPT_TYPE:Ljava/lang/String; = "USER_PROMPT_TYPE"

.field private static final VERIZON_WWE_SKU_ID:I = 0xd

.field private static mAccManager:Lcom/htc/customization/HtcCustomizationManager; = null

.field private static mAccReader:Lcom/htc/customization/HtcCustomizationReader; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mGlobalInterfaceBytes_TBi:B = 0x0t

.field private static mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager; = null

.field private static mIdx:I = 0x0

.field private static mStatusBarManager:Landroid/app/StatusBarManager; = null

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager; = null

.field public static final mbIsRussianDevice:Z

.field private static mbIsUserDecideToDisableEse:Z = false

.field private static mbTMOPLSimInserted:Z = false

.field private static mnNxpCodebaseVersion:I = 0x0

.field private static mnNxpNciCodebaseVersion:I = 0x0

.field private static final mstrRussianCid:Ljava/lang/String; = "HTC__A07"

.field private static mstrSenseVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 36
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/HtcUtils;->DBG:Z

    .line 38
    sput-byte v3, Lcom/android/nfc/HtcUtils;->mGlobalInterfaceBytes_TBi:B

    .line 39
    sput v3, Lcom/android/nfc/HtcUtils;->mIdx:I

    .line 49
    sput-object v2, Lcom/android/nfc/HtcUtils;->mstrSenseVersion:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/HtcUtils;->mAccManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 53
    sput-object v2, Lcom/android/nfc/HtcUtils;->mAccReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 84
    sput v1, Lcom/android/nfc/HtcUtils;->mnNxpCodebaseVersion:I

    .line 85
    sput v1, Lcom/android/nfc/HtcUtils;->mnNxpNciCodebaseVersion:I

    .line 94
    const-string v0, "HTC__A07"

    const-string v1, "ro.cid"

    const-string v2, "11111111"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/HtcUtils;->mbIsRussianDevice:Z

    .line 95
    sput-boolean v3, Lcom/android/nfc/HtcUtils;->mbIsUserDecideToDisableEse:Z

    .line 96
    sput-boolean v3, Lcom/android/nfc/HtcUtils;->mbTMOPLSimInserted:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method protected static ByteArrayToString([BI)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B
    .param p1, "start"    # I

    .prologue
    .line 407
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 408
    .local v1, "s":Ljava/lang/StringBuffer;
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 409
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static IsDisableRwAndBeamDuringCall()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 348
    sget-boolean v1, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Nfc-Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disable RW/P2P modes for calls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string v4, "nfc_disable_p2p_rw_during_phonecall"

    invoke-interface {v3, v4, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "nfc_disable_p2p_rw_during_phonecall"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 353
    :cond_1
    return v0
.end method

.method protected static ResetNdefPushSetting()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 336
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 337
    sget-boolean v1, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Nfc-Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset Ndef Push setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string v4, "nfc_ndef_push_setting"

    invoke-interface {v3, v4, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "nfc_ndef_push_setting"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 342
    :cond_1
    return v0
.end method

.method private static StringToByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 416
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 417
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_0
    return-object v0
.end method

.method private static checkBootState(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)I
    .locals 11
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "prefsEditor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 950
    const-string v2, "nfc_changelist_for_default_on"

    .line 951
    .local v2, "PREF_CL_FOR_DEFAULT_ON":Ljava/lang/String;
    const-string v0, "0"

    .line 952
    .local v0, "DEFAULT_CL":Ljava/lang/String;
    const/4 v1, 0x2

    .line 954
    .local v1, "DEFAULT_STATE":I
    const-string v6, "0"

    .line 955
    .local v6, "prev_cl":Ljava/lang/String;
    const-string v3, "0"

    .line 956
    .local v3, "curr_cl":Ljava/lang/String;
    const/4 v5, 0x1

    .line 957
    .local v5, "first_boot":Z
    const/4 v7, 0x2

    .line 959
    .local v7, "state":I
    :try_start_0
    const-string v8, "nfc_changelist_for_default_on"

    const-string v9, "0"

    invoke-interface {p0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 960
    const-string v8, "ro.build.changelist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 962
    const-string v8, "first_boot"

    const/4 v9, 0x1

    invoke-interface {p0, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 966
    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v5, :cond_1

    .line 967
    const/4 v7, 0x0

    .line 979
    :goto_0
    if-eq v3, v6, :cond_0

    .line 980
    const-string v8, "nfc_changelist_for_default_on"

    invoke-interface {p1, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 981
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 983
    :cond_0
    const-string v8, "Nfc-Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkBootState: state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cl="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", first_boot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 984
    :goto_1
    return v8

    .line 969
    :cond_1
    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-nez v8, :cond_2

    .line 970
    const/4 v7, 0x1

    goto :goto_0

    .line 972
    :cond_2
    const/4 v7, 0x2

    goto :goto_0

    .line 975
    :catch_0
    move-exception v4

    .line 976
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "Nfc-Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkBootState: Exception caught. cl="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    const/4 v8, 0x2

    goto :goto_1
.end method

.method private static varargs checkSkuId([I)Z
    .locals 6
    .param p0, "ids"    # [I

    .prologue
    .line 874
    invoke-static {}, Lcom/android/nfc/HtcUtils;->loadSkuID()I

    move-result v4

    .line 876
    .local v4, "sku_id":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 877
    .local v2, "id":I
    if-ne v4, v2, :cond_0

    .line 878
    const/4 v5, 0x1

    .line 880
    .end local v2    # "id":I
    :goto_1
    return v5

    .line 876
    .restart local v2    # "id":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 880
    .end local v2    # "id":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected static deviceBootDelay()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 219
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    const-string v5, "nfc_boot_delay_timeout"

    invoke-interface {v4, v5, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 220
    .local v0, "nBootDelayTimeOut":I
    sget-boolean v4, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "Nfc-Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Boot delay timeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    if-eqz v0, :cond_2

    .line 222
    mul-int/lit16 v3, v0, 0x3e8

    .line 228
    :cond_1
    :goto_0
    return v3

    .line 226
    :cond_2
    const-string v4, "ro.board.platform"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "platform":Ljava/lang/String;
    const-string v4, "tegra"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 228
    .local v1, "needDelay":Z
    if-eqz v1, :cond_1

    const v3, 0xea60

    goto :goto_0
.end method

.method protected static deviceSupportDualSIM()Z
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/android/nfc/HtcUtils;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/nfc/HtcUtils;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static disableHceWhenNoHostPayment()Z
    .locals 4

    .prologue
    .line 1219
    const/4 v0, 0x0

    .line 1220
    .local v0, "disableHCE":Z
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1221
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "nfc_disable_hce_when_no_hostpaymentap"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1222
    sget-boolean v1, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Nfc-Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disable HCE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_0
    return v0
.end method

.method protected static dualGSMPhoneEnable()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 260
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 261
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/nfc/HtcUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 263
    .local v0, "dualGSMPhoneEnable":Z
    :goto_0
    const-string v1, "Nfc-Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dualGSMPhoneEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_1
    return v0

    .end local v0    # "dualGSMPhoneEnable":Z
    :cond_0
    move v0, v1

    .line 261
    goto :goto_0

    :cond_1
    move v0, v1

    .line 266
    goto :goto_1
.end method

.method protected static dualPhoneEnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 250
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 251
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/nfc/HtcUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 253
    .local v0, "dualPhoneEnable":Z
    :cond_0
    const-string v1, "Nfc-Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dualPhoneEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    return v0
.end method

.method protected static forceDelayAfterModemPowerOn()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 272
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "nfc_force_delay_for_enabling"

    invoke-interface {v2, v3, v1}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 273
    .local v0, "nForceDelayTimeAfterModemOn":I
    mul-int/lit16 v1, v0, 0x3e8

    .line 275
    :cond_0
    return v1
.end method

.method private static getAccReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    .prologue
    .line 156
    sget-object v0, Lcom/android/nfc/HtcUtils;->mAccReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/android/nfc/HtcUtils;->mAccManager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_1

    .line 158
    sget-object v0, Lcom/android/nfc/HtcUtils;->mAccManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v1, "Android_Core_Framework"

    sget-object v2, Lcom/android/nfc/HtcUtils;->mAccManager:Lcom/htc/customization/HtcCustomizationManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/HtcUtils;->mAccReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 163
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/nfc/HtcUtils;->mAccReader:Lcom/htc/customization/HtcCustomizationReader;

    return-object v0

    .line 160
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/android/nfc/HtcUtils;->mAccReader:Lcom/htc/customization/HtcCustomizationReader;

    goto :goto_0
.end method

.method private static getAtr()[B
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 423
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 424
    .local v6, "manager":Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    if-ne v8, v10, :cond_0

    move-object v8, v9

    .line 469
    :goto_0
    return-object v8

    .line 428
    :cond_0
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getHtcTelephonyManager()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v5

    .line 429
    .local v5, "htcmanager":Lcom/htc/service/HtcTelephonyManager;
    if-nez v5, :cond_1

    move-object v8, v9

    .line 430
    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 436
    .local v4, "htcTelephonyManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v8, "generalGetterInternal"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/os/Bundle;

    aput-object v12, v10, v11

    invoke-virtual {v4, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 443
    .local v3, "generalGetterInternalMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 446
    .local v1, "data":Landroid/os/Bundle;
    const/4 v8, 0x2

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "getAtrInfo"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v8, v10

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 455
    :goto_1
    if-nez v1, :cond_2

    .line 456
    const-string v8, "Nfc-Utils"

    const-string v10, "Null Bundle object returned after invoking HtcTelephonyManager.generalGetterInternal with \"getAtrInfo\" parameter."

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 458
    goto :goto_0

    .line 438
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v3    # "generalGetterInternalMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 439
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v8, "Nfc-Utils"

    const-string v10, "Method HtcTelephonyManager.generalGetterInternal() does not exists."

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 440
    goto :goto_0

    .line 447
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "data":Landroid/os/Bundle;
    .restart local v3    # "generalGetterInternalMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 448
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v8, "Nfc-Utils"

    const-string v10, "IllegalAccessException by invoking Method."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 450
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 451
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v8, "Nfc-Utils"

    const-string v10, "InvocationTargetException by invoking Method."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 461
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    const-string v8, "getAtrInfo"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, "result":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 464
    const-string v8, "Nfc-Utils"

    const-string v10, "Null String returned after invoking Bundle.getString with \"getAtrInfo\" parameter"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 466
    goto :goto_0

    .line 469
    :cond_3
    invoke-static {v7}, Lcom/android/nfc/HtcUtils;->StringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_0
.end method

.method protected static getCardModeRoutingScreenState()I
    .locals 4

    .prologue
    .line 288
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "nfc_card_mode_rounting_by_screen_state"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 294
    .local v0, "nEeRoutingState_SIE":I
    :goto_0
    return v0

    .end local v0    # "nEeRoutingState_SIE":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static getDefaultOffHostSE()I
    .locals 4

    .prologue
    .line 279
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "nfc_default_enable_card_mode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 284
    .local v0, "nEnableCEM_SIE":I
    :goto_0
    return v0

    .end local v0    # "nEnableCEM_SIE":I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected static getEvtTransactionOption()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 298
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 299
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "nfc_evt_transaction_behavior"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 306
    .local v0, "nEvtTransactionBehavior_SIE":I
    :cond_0
    return v0
.end method

.method public static getHexBytes([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B

    .prologue
    .line 837
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 839
    .local v1, "b":B
    const-string v5, "%02X "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getHtcTelephonyManager()Lcom/htc/service/HtcTelephonyManager;
    .locals 2

    .prologue
    .line 383
    sget-object v0, Lcom/android/nfc/HtcUtils;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v0, :cond_0

    .line 384
    sget-object v0, Lcom/android/nfc/HtcUtils;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 390
    :goto_0
    return-object v0

    .line 386
    :cond_0
    sget-object v0, Lcom/android/nfc/HtcUtils;->mContext:Landroid/content/Context;

    const-string v1, "htctelephony"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcTelephonyManager;

    sput-object v0, Lcom/android/nfc/HtcUtils;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 387
    sget-object v0, Lcom/android/nfc/HtcUtils;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v0, :cond_1

    .line 388
    const-string v0, "Nfc-Utils"

    const-string v1, "Cannot get HtcTelephonyManager service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    sget-object v0, Lcom/android/nfc/HtcUtils;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    goto :goto_0
.end method

.method protected static getHtcTestApps()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 375
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 376
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "nfc_htc_test_apps"

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static getNfcDefaultOn()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1062
    const/4 v0, 0x0

    .line 1064
    .local v0, "DEFAULT":I
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1065
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "nfc_default_value"

    invoke-interface {v2, v3, v1}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    .line 1066
    .local v1, "nDefaultOn":I
    const-string v2, "Nfc-Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFC default on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    .end local v1    # "nDefaultOn":I
    :goto_0
    return v1

    .line 1069
    :cond_0
    const-string v2, "Nfc-Utils"

    const-string v3, "getNfcDefaultOn: using default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getNfcDefaultOnForSense60()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    .line 995
    const/4 v0, 0x2

    .line 997
    .local v0, "DEFAULT":I
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 998
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "nfc_default_on"

    invoke-interface {v2, v3, v1}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    .line 999
    .local v1, "nDefaultOn":I
    const-string v2, "Nfc-Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFC default on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    .end local v1    # "nDefaultOn":I
    :goto_0
    return v1

    .line 1002
    :cond_0
    const-string v2, "Nfc-Utils"

    const-string v3, "getNfcDefaultOn: using default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getNfcDefaultProtocolRoute()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1155
    const/4 v0, 0x0

    .line 1157
    .local v0, "DEFAULT":I
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1158
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "nfc_default_protocol_route"

    invoke-interface {v2, v3, v1}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    .line 1159
    .local v1, "nDefaultProtocolRoute":I
    const-string v2, "Nfc-Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFC default protocol route: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    .end local v1    # "nDefaultProtocolRoute":I
    :goto_0
    return v1

    .line 1162
    :cond_0
    const-string v2, "Nfc-Utils"

    const-string v3, "getNfcDefaultProtocolRoute: using default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getNfcEnablePromptWhiteList()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1188
    const/4 v0, 0x0

    .line 1190
    .local v0, "whiteList":[Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1191
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "nfc_enable_prompt_whitelist"

    invoke-interface {v2, v3, v1}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1193
    if-eqz v0, :cond_0

    .line 1202
    .end local v0    # "whiteList":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1201
    .restart local v0    # "whiteList":[Ljava/lang/String;
    :cond_1
    const-string v2, "Nfc-Utils"

    const-string v3, "getNfcEnablePromptWhiteList: using default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1202
    goto :goto_0
.end method

.method private static getNfcForceOnOnce()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    .line 1077
    const/4 v0, 0x2

    .line 1079
    .local v0, "DEFAULT":I
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1080
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "nfc_force_on_once"

    invoke-interface {v2, v3, v1}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    .line 1081
    .local v1, "nForceOnOnce":I
    const-string v2, "Nfc-Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFC force on once: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    .end local v1    # "nForceOnOnce":I
    :goto_0
    return v1

    .line 1084
    :cond_0
    const-string v2, "Nfc-Utils"

    const-string v3, "getNfcForceOnOnce: using default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getNfcIconId()I
    .locals 5

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0

    .line 196
    .local v0, "iconId":I
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 197
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "nfc_show_icon"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    .line 199
    .local v1, "nIconId_SIE":I
    sget-boolean v2, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Nfc-Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "icon setting is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 213
    .end local v1    # "nIconId_SIE":I
    :cond_1
    :goto_0
    return v0

    .line 202
    .restart local v1    # "nIconId_SIE":I
    :pswitch_0
    const v0, 0x7f020007

    .line 203
    goto :goto_0

    .line 205
    :pswitch_1
    const v0, 0x7f020006

    .line 206
    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static getNfcOnOffAccConfig(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)I
    .locals 12
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "prefsEditor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1097
    const/4 v3, 0x2

    .line 1098
    .local v3, "config":I
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getSenseVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v8, v7

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_0

    move v0, v5

    .line 1099
    .local v0, "bIsS60OrLater":Z
    :goto_0
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getSenseVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v8, v7

    const-wide/high16 v10, 0x401a000000000000L    # 6.5

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_1

    move v1, v5

    .line 1101
    .local v1, "bIsS65OrLater":Z
    :goto_1
    if-nez v0, :cond_2

    .line 1103
    invoke-static {p0, p1}, Lcom/android/nfc/HtcUtils;->getNfcOnOffForSense55(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)I

    move-result v5

    .line 1147
    :goto_2
    return v5

    .end local v0    # "bIsS60OrLater":Z
    .end local v1    # "bIsS65OrLater":Z
    :cond_0
    move v0, v6

    .line 1098
    goto :goto_0

    .restart local v0    # "bIsS60OrLater":Z
    :cond_1
    move v1, v6

    .line 1099
    goto :goto_1

    .line 1104
    .restart local v1    # "bIsS65OrLater":Z
    :cond_2
    if-nez v1, :cond_3

    .line 1106
    invoke-static {p0, p1}, Lcom/android/nfc/HtcUtils;->getNfcOnOffForSense60(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)I

    move-result v5

    goto :goto_2

    .line 1110
    :cond_3
    invoke-static {p0, p1}, Lcom/android/nfc/HtcUtils;->checkBootState(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)I

    move-result v2

    .line 1112
    .local v2, "bootState":I
    if-nez v2, :cond_5

    .line 1113
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getNfcDefaultOn()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1121
    const-string v5, "Nfc-Utils"

    const-string v6, "Do nothing for new rom first launch."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_4
    :goto_3
    const-string v5, "Nfc-Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkNfcOnOffAccConfig: config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1147
    goto :goto_2

    .line 1115
    :pswitch_0
    const/4 v3, 0x0

    .line 1116
    goto :goto_3

    .line 1118
    :pswitch_1
    const/4 v3, 0x1

    .line 1119
    goto :goto_3

    .line 1124
    :cond_5
    if-ne v2, v5, :cond_6

    .line 1125
    const-string v7, "nfc_set_on_once"

    invoke-interface {p0, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1126
    .local v4, "setOnOnce":Z
    const-string v5, "Nfc-Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FOTA first launch, setOnOnce="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    if-eqz v4, :cond_4

    .line 1128
    invoke-static {v6, p1}, Lcom/android/nfc/HtcUtils;->saveNfcSetOnOnceSetting(ZLandroid/content/SharedPreferences$Editor;)V

    .line 1130
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getNfcForceOnOnce()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1139
    const-string v5, "Nfc-Utils"

    const-string v6, "Do nothing for FOTA first launch."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1132
    :pswitch_2
    const/4 v3, 0x0

    .line 1133
    goto :goto_3

    .line 1135
    :pswitch_3
    const/4 v3, 0x1

    .line 1136
    goto :goto_3

    .line 1143
    .end local v4    # "setOnOnce":Z
    :cond_6
    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    .line 1144
    const-string v5, "Nfc-Utils"

    const-string v6, "Not first boot. Do nothing."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1130
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getNfcOnOffForSense55(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)I
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "prefsEditor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 887
    const/4 v0, 0x2

    .line 888
    .local v0, "config":I
    const-string v3, "nfc_set_on_once"

    const/4 v4, 0x1

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 890
    .local v1, "setOnOnce":Z
    if-eqz v1, :cond_0

    .line 891
    const-string v3, "Nfc-Utils"

    const-string v4, "Nfc Sense 55 set on once triggered."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v3, 0x0

    invoke-static {v3, p1}, Lcom/android/nfc/HtcUtils;->saveNfcSetOnOnceSetting(ZLandroid/content/SharedPreferences$Editor;)V

    .line 896
    const/16 v3, 0x18

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/android/nfc/HtcUtils;->checkSkuId([I)Z

    move-result v2

    .line 898
    .local v2, "skipSku":Z
    if-nez v2, :cond_0

    .line 899
    const-string v3, "Nfc-Utils"

    const-string v4, "not US sku nor Tmobile sku"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v0, 0x0

    .line 903
    .end local v2    # "skipSku":Z
    :cond_0
    const-string v3, "Nfc-Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNfcOnOffForSense55: config="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    return v0

    .line 896
    nop

    :array_0
    .array-data 4
        0x6
        0x7
        0x8
        0xa
        0xb
        0xc
        0xd
        0x1f
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x4f
        0x51
        0x52
        0x55
        0x57
        0x58
        0x5e
        0x62
        0x72
    .end array-data
.end method

.method private static getNfcOnOffForSense60(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)I
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "prefsEditor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    const/4 v4, 0x1

    .line 1010
    const/4 v1, 0x2

    .line 1011
    .local v1, "config":I
    invoke-static {p0, p1}, Lcom/android/nfc/HtcUtils;->checkBootState(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)I

    move-result v0

    .line 1013
    .local v0, "bootState":I
    if-nez v0, :cond_1

    .line 1014
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getNfcDefaultOnForSense60()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1026
    const-string v3, "Nfc-Utils"

    const-string v4, "Do nothing for new rom first launch."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_0
    :goto_0
    const-string v3, "Nfc-Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNfcOnOffForSense60: config="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    return v1

    .line 1018
    :pswitch_0
    const/4 v1, 0x0

    .line 1019
    goto :goto_0

    .line 1023
    :pswitch_1
    const/4 v1, 0x1

    .line 1024
    goto :goto_0

    .line 1029
    :cond_1
    if-ne v0, v4, :cond_2

    .line 1030
    const-string v3, "nfc_set_on_once"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1031
    .local v2, "setOnOnce":Z
    const-string v3, "Nfc-Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FOTA first launch, setOnOnce="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    if-eqz v2, :cond_0

    .line 1033
    const/4 v3, 0x0

    invoke-static {v3, p1}, Lcom/android/nfc/HtcUtils;->saveNfcSetOnOnceSetting(ZLandroid/content/SharedPreferences$Editor;)V

    .line 1035
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getNfcDefaultOnForSense60()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1047
    :pswitch_2
    const-string v3, "Nfc-Utils"

    const-string v4, "Do nothing for FOTA first launch."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1038
    :pswitch_3
    const/4 v1, 0x0

    .line 1039
    goto :goto_0

    .line 1042
    :pswitch_4
    const/4 v1, 0x1

    .line 1043
    goto :goto_0

    .line 1051
    .end local v2    # "setOnOnce":Z
    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1052
    const-string v3, "Nfc-Utils"

    const-string v4, "Not first boot. Do nothing."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1014
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1035
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getNxpCodebaseVersion()I
    .locals 2

    .prologue
    .line 909
    sget v0, Lcom/android/nfc/HtcUtils;->mnNxpCodebaseVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 910
    sget v0, Lcom/android/nfc/HtcUtils;->mnNxpCodebaseVersion:I

    .line 918
    :goto_0
    return v0

    .line 914
    :cond_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getCodebaseVersion()I

    move-result v0

    sput v0, Lcom/android/nfc/HtcUtils;->mnNxpCodebaseVersion:I

    .line 918
    sget v0, Lcom/android/nfc/HtcUtils;->mnNxpCodebaseVersion:I

    goto :goto_0
.end method

.method public static getNxpNciCodebaseVersion()I
    .locals 2

    .prologue
    .line 926
    sget v0, Lcom/android/nfc/HtcUtils;->mnNxpNciCodebaseVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 927
    sget v0, Lcom/android/nfc/HtcUtils;->mnNxpNciCodebaseVersion:I

    .line 938
    :goto_0
    return v0

    .line 936
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/nfc/HtcUtils;->mnNxpNciCodebaseVersion:I

    .line 938
    sget v0, Lcom/android/nfc/HtcUtils;->mnNxpNciCodebaseVersion:I

    goto :goto_0
.end method

.method public static getSenseVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 778
    sget-object v0, Lcom/android/nfc/HtcUtils;->mstrSenseVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "sense_version"

    const-string v2, "4.5"

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/HtcUtils;->mstrSenseVersion:Ljava/lang/String;

    .line 780
    const-string v0, "Nfc-Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sense version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/nfc/HtcUtils;->mstrSenseVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_0
    sget-object v0, Lcom/android/nfc/HtcUtils;->mstrSenseVersion:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "4.5"

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/nfc/HtcUtils;->mstrSenseVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSkuId()I
    .locals 4

    .prologue
    .line 327
    const/4 v0, -0x1

    .line 328
    .local v0, "nSkuId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "sku_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 330
    sget-boolean v1, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Nfc-Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sku id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    return v0
.end method

.method protected static getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 394
    sget-object v0, Lcom/android/nfc/HtcUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lcom/android/nfc/HtcUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 403
    :goto_0
    return-object v0

    .line 398
    :cond_0
    sget-object v0, Lcom/android/nfc/HtcUtils;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/nfc/HtcUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 399
    sget-object v0, Lcom/android/nfc/HtcUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 400
    const-string v0, "Nfc-Utils"

    const-string v1, "Cannot get TelephonyManager service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1
    sget-object v0, Lcom/android/nfc/HtcUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0
.end method

.method public static getUserPromptUIOption()I
    .locals 4

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "nShowUserPromptUI_SIE":I
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "nfc_user_prompt"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 314
    const-string v1, "Nfc-Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Prompt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    return v0
.end method

.method public static isBeamPreviewSettingsEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 817
    const/4 v2, 0x1

    .line 819
    .local v2, "enabled":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 820
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "vzw_nfc_handover_prompt_enabled"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, "value":Ljava/lang/String;
    sget-boolean v4, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "Nfc-Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isBeamPreviewSettingsEnabled: value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_0
    if-eqz v3, :cond_1

    .line 826
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_1
    move v4, v2

    .line 833
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "value":Ljava/lang/String;
    :goto_0
    return v4

    .line 828
    :catch_0
    move-exception v1

    .line 829
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "Nfc-Utils"

    const-string v5, "isBeamPreviewSettingsEnabled: Exception caught."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 830
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected static isDTAGSku()Z
    .locals 2

    .prologue
    .line 796
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getSkuId()I

    move-result v0

    .line 797
    .local v0, "sku_id":I
    const/16 v1, 0x35

    if-lt v0, v1, :cond_0

    const/16 v1, 0x3b

    if-gt v0, v1, :cond_0

    .line 798
    const/4 v1, 0x1

    .line 800
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isForceToDisableEse()Z
    .locals 4

    .prologue
    .line 1179
    const/4 v0, 0x0

    .line 1180
    .local v0, "bResult":Z
    const-string v1, "Nfc-Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disable eSE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/nfc/HtcUtils;->mbIsUserDecideToDisableEse:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/nfc/HtcUtils;->mbTMOPLSimInserted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    sget-boolean v1, Lcom/android/nfc/HtcUtils;->mbIsUserDecideToDisableEse:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/nfc/HtcUtils;->mbTMOPLSimInserted:Z

    if-eqz v1, :cond_1

    .line 1182
    :cond_0
    const/4 v0, 0x1

    .line 1183
    :cond_1
    return v0
.end method

.method public static isIsisSkus()Z
    .locals 2

    .prologue
    .line 806
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getSkuId()I

    move-result v0

    .line 807
    .local v0, "nSkuID":I
    const/16 v1, 0xd

    if-eq v1, v0, :cond_0

    const/16 v1, 0xb

    if-eq v1, v0, :cond_0

    const/4 v1, 0x7

    if-ne v1, v0, :cond_1

    .line 808
    :cond_0
    const/4 v1, 0x1

    .line 810
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static isNfcEnablePromptNeeded()Z
    .locals 5

    .prologue
    .line 1206
    const/4 v0, 0x0

    .line 1207
    .local v0, "needed":Z
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getNfcEnablePromptWhiteList()[Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, "whiteList":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1211
    const/4 v0, 0x1

    .line 1213
    :cond_0
    const-string v2, "Nfc-Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNfcEnablePromptNeeded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return v0
.end method

.method public static isNxpCodebase()Z
    .locals 1

    .prologue
    .line 922
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getNxpCodebaseVersion()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNxpNciCodebase()Z
    .locals 1

    .prologue
    .line 942
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getNxpNciCodebaseVersion()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isParseATR_forSWPInit()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "nfc_parse_atr_for_swp_init"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 234
    .local v0, "bSWPInitSetting":Z
    sget-boolean v1, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Nfc-Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SWP Init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    return v0
.end method

.method public static isRussianSku()Z
    .locals 1

    .prologue
    .line 1171
    sget-boolean v0, Lcom/android/nfc/HtcUtils;->mbIsRussianDevice:Z

    return v0
.end method

.method public static isShowPromptBeforeBTPairing(Landroid/content/Context;)Z
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 845
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getSenseVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_2

    move v0, v6

    .line 846
    .local v0, "bIsS60OrLater":Z
    :goto_0
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isVzwSku()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v0, :cond_3

    move v1, v6

    .line 847
    .local v1, "bShowPromptBeforePairing":Z
    :goto_1
    const/4 v4, 0x1

    .line 848
    .local v4, "enable":Z
    const/4 v5, 0x0

    .line 849
    .local v5, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 851
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 852
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v7, "vzw_nfc_security_reminder_enabled"

    invoke-static {v2, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 854
    if-eqz v5, :cond_0

    .line 855
    const-string v7, "1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 862
    .end local v2    # "cr":Landroid/content/ContentResolver;
    :cond_0
    const-string v6, "Nfc-Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isShowPromptBeforePairing: enable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v4

    .line 863
    :cond_1
    :goto_2
    return v6

    .end local v0    # "bIsS60OrLater":Z
    .end local v1    # "bShowPromptBeforePairing":Z
    .end local v4    # "enable":Z
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    move v0, v7

    .line 845
    goto :goto_0

    .restart local v0    # "bIsS60OrLater":Z
    :cond_3
    move v1, v7

    .line 846
    goto :goto_1

    .line 857
    .restart local v1    # "bShowPromptBeforePairing":Z
    .restart local v4    # "enable":Z
    .restart local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 858
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "Nfc-Utils"

    const-string v8, "isShowPromptBeforePairing: Exception caught."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected static isSkipSWPInitialization()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 752
    const/4 v2, 0x0

    .local v2, "bParsingResult":Z
    const/4 v1, 0x0

    .line 753
    .local v1, "bIsSkipSWPInitialization":Z
    sput v7, Lcom/android/nfc/HtcUtils;->mIdx:I

    .line 754
    sput-byte v7, Lcom/android/nfc/HtcUtils;->mGlobalInterfaceBytes_TBi:B

    .line 755
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAtr()[B

    move-result-object v0

    .line 757
    .local v0, "atr":[B
    if-nez v0, :cond_0

    .line 758
    const/4 v1, 0x1

    .line 772
    :goto_0
    const-string v5, "TBi = 0x%02X, skipped = %s"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    sget-byte v4, Lcom/android/nfc/HtcUtils;->mGlobalInterfaceBytes_TBi:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    const-string v4, "Y"

    :goto_1
    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, "strResult":Ljava/lang/String;
    const-string v4, "Nfc-Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SWP init check: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/nfc/HtcUtils;->mIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-static {v1}, Lcom/android/nfc/HtcUtils;->writeNfcSWPInitSetting(Z)V

    .line 775
    return-void

    .line 760
    .end local v3    # "strResult":Ljava/lang/String;
    :cond_0
    array-length v4, v0

    invoke-static {v0, v4}, Lcom/android/nfc/HtcUtils;->parseATR([BI)Z

    move-result v2

    .line 763
    if-eqz v2, :cond_1

    .line 765
    sget-byte v4, Lcom/android/nfc/HtcUtils;->mGlobalInterfaceBytes_TBi:B

    invoke-static {v4}, Lcom/android/nfc/HtcUtils;->is_disable_uicc_detection(B)Z

    move-result v1

    goto :goto_0

    .line 769
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 772
    :cond_2
    const-string v4, "N"

    goto :goto_1
.end method

.method public static isVzwSku()Z
    .locals 2

    .prologue
    .line 786
    const/16 v0, 0xd

    invoke-static {}, Lcom/android/nfc/HtcUtils;->getSkuId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 787
    const/4 v0, 0x1

    .line 789
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static is_disable_uicc_detection(B)Z
    .locals 5
    .param p0, "GlobalInterfaceBytes_TBi"    # B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 481
    and-int/lit16 v3, p0, 0xa0

    const/16 v4, 0xa0

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 482
    .local v0, "uicc_clf_support":Z
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "uicc_clf_support":Z
    :cond_0
    move v0, v2

    .line 481
    goto :goto_0

    .restart local v0    # "uicc_clf_support":Z
    :cond_1
    move v1, v2

    .line 482
    goto :goto_1
.end method

.method private static loadSkuID()I
    .locals 4

    .prologue
    .line 868
    const-string v1, "sku_id"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 869
    .local v0, "sku_id":I
    const-string v1, "Nfc-Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system_sku_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return v0
.end method

.method private static parseATR([BI)Z
    .locals 21
    .param p0, "atr"    # [B
    .param p1, "len"    # I

    .prologue
    .line 487
    const/16 v18, 0x0

    .line 488
    .local v18, "loop_i":I
    const/16 v17, 0x0

    .line 489
    .local v17, "loop_end":Z
    const/16 v16, 0x0

    .line 499
    .local v16, "is_globalinterfacebytes_found":Z
    const/16 v19, 0x0

    sput v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    .line 500
    const/16 v19, 0x0

    sput-byte v19, Lcom/android/nfc/HtcUtils;->mGlobalInterfaceBytes_TBi:B

    .line 502
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_0

    const/16 v19, 0x0

    .line 582
    :goto_0
    return v19

    .line 503
    :cond_0
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v20, v19, 0x1

    sput v20, Lcom/android/nfc/HtcUtils;->mIdx:I

    aget-byte v10, p0, v19

    .line 505
    .local v10, "TS":B
    invoke-static {v10}, Lcom/android/nfc/HtcUtils;->validate_ts(B)Z

    move-result v19

    if-nez v19, :cond_1

    const/16 v19, 0x0

    goto :goto_0

    .line 507
    :cond_1
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_2

    const/16 v19, 0x0

    goto :goto_0

    .line 508
    :cond_2
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v20, v19, 0x1

    sput v20, Lcom/android/nfc/HtcUtils;->mIdx:I

    aget-byte v4, p0, v19

    .line 510
    .local v4, "T0":B
    and-int/lit16 v0, v4, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v11, v0

    .line 511
    .local v11, "Y":B
    and-int/lit8 v19, v11, 0x10

    move/from16 v0, v19

    int-to-byte v12, v0

    .line 512
    .local v12, "Y_TA":B
    and-int/lit8 v19, v11, 0x20

    move/from16 v0, v19

    int-to-byte v13, v0

    .line 513
    .local v13, "Y_TB":B
    and-int/lit8 v19, v11, 0x40

    move/from16 v0, v19

    int-to-byte v14, v0

    .line 514
    .local v14, "Y_TC":B
    and-int/lit16 v0, v11, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v15, v0

    .line 516
    .local v15, "Y_TD":B
    and-int/lit8 v19, v4, 0xf

    move/from16 v0, v19

    int-to-byte v2, v0

    .line 517
    .local v2, "K":B
    const/4 v3, 0x0

    .line 519
    .local v3, "T":B
    const/16 v18, 0x0

    :goto_1
    if-nez v17, :cond_d

    .line 522
    const/4 v9, 0x0

    .local v9, "TD":B
    move v7, v9

    .local v7, "TC":I
    move v6, v9

    .local v6, "TB":I
    move v5, v9

    .line 524
    .local v5, "TA":I
    if-eqz v12, :cond_4

    .line 526
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_3

    const/16 v19, 0x0

    goto :goto_0

    .line 527
    :cond_3
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v20, v19, 0x1

    sput v20, Lcom/android/nfc/HtcUtils;->mIdx:I

    aget-byte v5, p0, v19

    .line 530
    .end local v5    # "TA":I
    :cond_4
    if-eqz v13, :cond_6

    .line 532
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_5

    const/16 v19, 0x0

    goto :goto_0

    .line 533
    :cond_5
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v20, v19, 0x1

    sput v20, Lcom/android/nfc/HtcUtils;->mIdx:I

    aget-byte v6, p0, v19

    .line 536
    .end local v6    # "TB":I
    :cond_6
    const/16 v19, 0xf

    move/from16 v0, v19

    if-ne v3, v0, :cond_7

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    if-eqz v13, :cond_7

    if-nez v16, :cond_7

    .line 538
    sput-byte v6, Lcom/android/nfc/HtcUtils;->mGlobalInterfaceBytes_TBi:B

    .line 539
    const/16 v16, 0x1

    .line 542
    :cond_7
    if-eqz v14, :cond_9

    .line 544
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_8

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 545
    :cond_8
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v20, v19, 0x1

    sput v20, Lcom/android/nfc/HtcUtils;->mIdx:I

    aget-byte v7, p0, v19

    .line 548
    .end local v7    # "TC":I
    :cond_9
    if-eqz v15, :cond_b

    .line 550
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_a

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 551
    :cond_a
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v20, v19, 0x1

    sput v20, Lcom/android/nfc/HtcUtils;->mIdx:I

    aget-byte v9, p0, v19

    .line 554
    :cond_b
    and-int/lit16 v0, v9, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v11, v0

    .line 555
    and-int/lit8 v19, v11, 0x10

    move/from16 v0, v19

    int-to-byte v12, v0

    .line 556
    and-int/lit8 v19, v11, 0x20

    move/from16 v0, v19

    int-to-byte v13, v0

    .line 557
    and-int/lit8 v19, v11, 0x40

    move/from16 v0, v19

    int-to-byte v14, v0

    .line 558
    and-int/lit16 v0, v11, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v15, v0

    .line 560
    and-int/lit8 v19, v9, 0xf

    move/from16 v0, v19

    int-to-byte v3, v0

    .line 562
    if-nez v9, :cond_c

    const/16 v17, 0x1

    .line 519
    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 566
    .end local v9    # "TD":B
    :cond_d
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int v19, v19, v2

    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_e

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 567
    :cond_e
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int v19, v19, v2

    sput v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    .line 570
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_f

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 573
    :cond_f
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v20, v19, 0x1

    sput v20, Lcom/android/nfc/HtcUtils;->mIdx:I

    aget-byte v8, p0, v19

    .line 575
    .local v8, "TCK":B
    const/16 v18, 0x1

    :goto_2
    sget v19, Lcom/android/nfc/HtcUtils;->mIdx:I

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    .line 577
    aget-byte v19, p0, v18

    xor-int v19, v19, v8

    move/from16 v0, v19

    int-to-byte v8, v0

    .line 575
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 580
    :cond_10
    if-eqz v8, :cond_11

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 582
    :cond_11
    const/16 v19, 0x1

    goto/16 :goto_0
.end method

.method protected static readNfcProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "strPropertyPath"    # Ljava/lang/String;

    .prologue
    .line 629
    const-string v7, ""

    .line 630
    .local v7, "strProperty":Ljava/lang/String;
    const/16 v0, 0x10

    .line 631
    .local v0, "BUFFER_SIZE":I
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 633
    :cond_0
    const-string v10, "Nfc-Utils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No such file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 677
    .end local v7    # "strProperty":Ljava/lang/String;
    .local v8, "strProperty":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 637
    .end local v8    # "strProperty":Ljava/lang/String;
    .restart local v7    # "strProperty":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 638
    const/4 v5, 0x0

    .line 640
    .local v5, "fstream":Ljava/io/FileInputStream;
    :try_start_0
    new-array v1, v0, [B

    .line 641
    .local v1, "buffer":[B
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .local v6, "fstream":Ljava/io/FileInputStream;
    if-eqz v6, :cond_4

    .line 646
    :cond_2
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v6, v1, v10, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    .line 647
    .local v2, "count":I
    if-lez v2, :cond_4

    .line 648
    add-int/lit8 v10, v2, -0x1

    aget-byte v10, v1, v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_3

    .line 649
    add-int/lit8 v2, v2, -0x1

    .line 650
    :cond_3
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, v2}, Ljava/lang/String;-><init>([BII)V

    .line 651
    .local v9, "strRead":Ljava/lang/String;
    const-string v10, "Nfc-Utils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " byte(s), value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 653
    if-ge v2, v0, :cond_2

    .line 668
    .end local v2    # "count":I
    .end local v9    # "strRead":Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    .line 669
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    move-object v5, v6

    .end local v1    # "buffer":[B
    .end local v6    # "fstream":Ljava/io/FileInputStream;
    :cond_6
    :goto_1
    move-object v8, v7

    .line 677
    .end local v7    # "strProperty":Ljava/lang/String;
    .restart local v8    # "strProperty":Ljava/lang/String;
    goto :goto_0

    .line 670
    .end local v8    # "strProperty":Ljava/lang/String;
    .restart local v1    # "buffer":[B
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "strProperty":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 671
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "Nfc-Utils"

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 673
    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 660
    .end local v1    # "buffer":[B
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 661
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v10, "Nfc-Utils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cannot find file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 668
    if-eqz v5, :cond_6

    .line 669
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 670
    :catch_2
    move-exception v3

    .line 671
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "Nfc-Utils"

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 662
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 663
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v10, "Nfc-Utils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to read file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 668
    if-eqz v5, :cond_6

    .line 669
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 670
    :catch_4
    move-exception v3

    .line 671
    const-string v10, "Nfc-Utils"

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 664
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 665
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string v10, "Nfc-Utils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception Caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 668
    if-eqz v5, :cond_6

    .line 669
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 670
    :catch_6
    move-exception v3

    .line 671
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "Nfc-Utils"

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 667
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 668
    :goto_5
    if-eqz v5, :cond_7

    .line 669
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 672
    :cond_7
    :goto_6
    throw v10

    .line 670
    :catch_7
    move-exception v3

    .line 671
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v11, "Nfc-Utils"

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 675
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    :cond_8
    const-string v10, "Nfc-Utils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Permission not allowed to read: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 667
    .restart local v1    # "buffer":[B
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 664
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 662
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    move-object v5, v6

    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 660
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v3

    move-object v5, v6

    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private static saveNfcSetOnOnceSetting(ZLandroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p0, "on"    # Z
    .param p1, "prefsEditor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 1089
    const-string v0, "nfc_set_on_once"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1090
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1091
    return-void
.end method

.method protected static setContext(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 168
    sput-object p0, Lcom/android/nfc/HtcUtils;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getNfcIconId()I

    move-result v0

    .line 171
    .local v0, "nfcIconId":I
    const-string v1, "Nfc-Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfcIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz v0, :cond_0

    .line 174
    sget-object v1, Lcom/android/nfc/HtcUtils;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    sput-object v1, Lcom/android/nfc/HtcUtils;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 175
    sget-object v1, Lcom/android/nfc/HtcUtils;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "nfc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 176
    sget-object v1, Lcom/android/nfc/HtcUtils;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "nfc"

    invoke-virtual {v1, v2, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 178
    :cond_0
    return-void
.end method

.method public static setEnableDisableEseSelection(Z)V
    .locals 1
    .param p0, "bEnableEse"    # Z

    .prologue
    .line 1175
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/nfc/HtcUtils;->mbIsUserDecideToDisableEse:Z

    .line 1176
    return-void

    .line 1175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSimNetworkOperator(Z)V
    .locals 0
    .param p0, "bTMOPLSim"    # Z

    .prologue
    .line 1167
    sput-boolean p0, Lcom/android/nfc/HtcUtils;->mbTMOPLSimInserted:Z

    .line 1168
    return-void
.end method

.method protected static supportNfcLock()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 358
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 359
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getAccReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "nfc_support_nfc_lock"

    invoke-interface {v2, v3, v1}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 360
    .local v0, "nSupportNfcLock_SIE":I
    sget-boolean v2, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Nfc-Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "support Nfc Lock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 371
    :cond_1
    :goto_0
    return v1

    .line 366
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected static updateNfcIcon(I)V
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 181
    sget-object v1, Lcom/android/nfc/HtcUtils;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    .line 183
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 184
    const/4 v0, 0x1

    .line 190
    .local v0, "show":Z
    :goto_0
    sget-object v1, Lcom/android/nfc/HtcUtils;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "nfc"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 192
    .end local v0    # "show":Z
    :cond_0
    return-void

    .line 185
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 186
    const/4 v0, 0x0

    .restart local v0    # "show":Z
    goto :goto_0
.end method

.method private static validate_ts(B)Z
    .locals 2
    .param p0, "TS"    # B

    .prologue
    const/4 v0, 0x1

    .line 474
    const/16 v1, 0x3b

    if-ne p0, v1, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v0

    .line 475
    :cond_1
    const/16 v1, 0x3f

    if-eq p0, v1, :cond_0

    .line 476
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static writeNfcAttribute(Ljava/lang/String;Z)V
    .locals 9
    .param p0, "strAttributePath"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .prologue
    .line 590
    const/4 v4, 0x0

    .line 591
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 594
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 595
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 596
    :cond_0
    const-string v6, "Nfc-Utils"

    const-string v7, "WriteAttr: file doesn\'t exit!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "file doesn\'t exit"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    sget-boolean v6, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v6, :cond_1

    .line 611
    const-string v6, "Nfc-Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WriteAttr: could not write to file. Skip. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    :cond_1
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v2, 0x0

    .line 620
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    const/4 v4, 0x0

    .line 624
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    const-string v6, "Nfc-Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WriteAttr: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void

    .line 599
    .restart local v1    # "file":Ljava/io/File;
    :cond_4
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_7

    .line 600
    const-string v6, "Nfc-Utils"

    const-string v7, "WriteAttr: cannot write this file."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "cannot write file."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 613
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    sget-boolean v6, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v6, :cond_5

    .line 615
    const-string v6, "Nfc-Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WriteAttr: exception occurred. Skip. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 619
    :cond_5
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v2, 0x0

    .line 620
    :cond_6
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v4, 0x0

    goto :goto_1

    .line 603
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    :cond_7
    :try_start_6
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 604
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 607
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    if-eqz p1, :cond_8

    :try_start_8
    const-string v6, "1"

    :goto_3
    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 619
    if-eqz v3, :cond_c

    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    const/4 v2, 0x0

    .line 620
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :goto_4
    if-eqz v5, :cond_b

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    const/4 v4, 0x0

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 607
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_8
    :try_start_b
    const-string v6, "0"
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_3

    .line 621
    :catch_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :goto_5
    move-object v4, v5

    .line 622
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 618
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v6

    .line 619
    :goto_6
    if-eqz v2, :cond_9

    :try_start_c
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v2, 0x0

    .line 620
    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    const/4 v4, 0x0

    .line 621
    :cond_a
    :goto_7
    throw v6

    :catch_3
    move-exception v7

    goto :goto_7

    .line 618
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 621
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    goto/16 :goto_1

    .line 613
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 621
    .end local v1    # "file":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    goto/16 :goto_1

    .line 609
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 621
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v6

    goto :goto_5

    :cond_b
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_c
    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_4
.end method

.method private static writeNfcSWPInitSetting(Z)V
    .locals 9
    .param p0, "skipped"    # Z

    .prologue
    .line 682
    sget-boolean v6, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v6, :cond_0

    .line 683
    const-string v6, "Nfc-Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeSWP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    const/4 v4, 0x0

    .line 687
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 692
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/sys/class/NFC_sensor/comn/nxp_uicc_swp"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    .line 694
    :cond_1
    const-string v6, "Nfc-Utils"

    const-string v7, "writeNfcSWPInit: file doesn\'t exit!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "file doesn\'t exit"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    sget-boolean v6, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v6, :cond_2

    .line 709
    const-string v6, "Nfc-Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeNfcSWPInit: could not write to file. Skip. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    :cond_2
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v2, 0x0

    .line 718
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    const/4 v4, 0x0

    .line 722
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_1
    sget-boolean v6, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v6, :cond_5

    .line 723
    const-string v6, "Nfc-Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeSWP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " E"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_5
    return-void

    .line 697
    .restart local v1    # "file":Ljava/io/File;
    :cond_6
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_9

    .line 698
    const-string v6, "Nfc-Utils"

    const-string v7, "writeNfcSWPInit: cannot write this file."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "cannot write file."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 711
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    sget-boolean v6, Lcom/android/nfc/HtcUtils;->DBG:Z

    if-eqz v6, :cond_7

    .line 713
    const-string v6, "Nfc-Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeNfcSWPInit: exception occurred. Skip. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 717
    :cond_7
    if-eqz v2, :cond_8

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v2, 0x0

    .line 718
    :cond_8
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v4, 0x0

    goto :goto_1

    .line 701
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    :cond_9
    :try_start_6
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 702
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 705
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    if-eqz p0, :cond_a

    :try_start_8
    const-string v6, "0"

    :goto_3
    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 717
    if-eqz v3, :cond_e

    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    const/4 v2, 0x0

    .line 718
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :goto_4
    if-eqz v5, :cond_d

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    const/4 v4, 0x0

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 705
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_a
    :try_start_b
    const-string v6, "1"
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_3

    .line 719
    :catch_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :goto_5
    move-object v4, v5

    .line 720
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 716
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v6

    .line 717
    :goto_6
    if-eqz v2, :cond_b

    :try_start_c
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v2, 0x0

    .line 718
    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    const/4 v4, 0x0

    .line 719
    :cond_c
    :goto_7
    throw v6

    :catch_3
    move-exception v7

    goto :goto_7

    .line 716
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 719
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    goto/16 :goto_1

    .line 711
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 719
    .end local v1    # "file":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    goto/16 :goto_1

    .line 707
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 719
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v6

    goto :goto_5

    :cond_d
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_e
    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_4
.end method
