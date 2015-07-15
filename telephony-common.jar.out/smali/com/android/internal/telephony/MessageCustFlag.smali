.class public Lcom/android/internal/telephony/MessageCustFlag;
.super Ljava/lang/Object;
.source "MessageCustFlag.java"


# static fields
.field private static final AP_NAME_ANDROID_MESSAGE:Ljava/lang/String; = "Message"

.field private static final AP_NAME_ANDROID_TELEPHONYMESSAGE:Ljava/lang/String; = "Android_TelephonyMessage"

.field private static final AP_NAME_SYSTEM:Ljava/lang/String; = "System"

.field private static final BELL_MOBILITY_WWE:I = 0x5

.field private static final BOOST_NETWORKCODE:Ljava/lang/String; = "311870"

.field private static final FLAG_HAS_ITS_ON_AP:Ljava/lang/String; = "has_its_on_ap"

.field private static final FLAG_SENSE_VERSION:Ljava/lang/String; = "sense_version"

.field private static final FLAG_SKU_ID:Ljava/lang/String; = "sku_id"

.field private static final FLAG_SUPPORT_LTE:Ljava/lang/String; = "support_lte"

.field protected static final MCCMNC_APTG:Ljava/lang/String; = "46605"

.field private static final MCCMNC_HUTCHISON_TEL:Ljava/lang/String; = "45404"

.field private static final SKU_ACG_US:I = 0x72

.field private static final SKU_APTG_TW:I = 0x4b

.field private static final SKU_BRIGHTSTAR_TELCEL_SPA:I = 0x10

.field private static final SKU_CELLSOUTH_WWE:I = 0x5e

.field private static final SKU_CINGULAR_USA:I = 0x7

.field private static final SKU_CRICKET_US:I = 0x8

.field private static final SKU_HTCCN_CHS:I = 0x19

.field private static final SKU_HTCCN_CHS_CMCC:I = 0x1a

.field private static final SKU_HTCCN_CHS_CT:I = 0x1b

.field private static final SKU_HTCCN_CHS_CT_LAB:I = 0x1c

.field private static final SKU_HTC_ASIA_AUS:I = 0x20

.field private static final SKU_HTC_ASIA_INDIA:I = 0x21

.field private static final SKU_HTC_ASIA_TW:I = 0x49

.field private static final SKU_HTC_LA_IUSACELL_MX_SPA:I = 0x16

.field private static final SKU_HTC_WWE_MMR:I = 0x4

.field private static final SKU_KDDI_JP:I = 0x1f

.field private static final SKU_KDDI_ODM_JP:I = 0x4f

.field private static final SKU_LA_ESN_TELCEL:I = 0x15

.field private static final SKU_LRA_US:I = 0x71

.field private static final SKU_METROPCS_US:I = 0x51

.field private static final SKU_O2_UK:I = 0x2d

.field private static final SKU_OPENMOBILE_US:I = 0x52

.field private static final SKU_OPTUS_AU:I = 0x24

.field private static final SKU_ORANGE_UK:I = 0x32

.field private static final SKU_SPRINT_WWE:I = 0xa

.field private static final SKU_SPRINT_WWE_BOOST:I = 0x55

.field private static final SKU_SPRINT_WWE_VM:I = 0x62

.field private static final SKU_TELSTRA_WWE:I = 0x25

.field private static final SKU_TMOUS:I = 0xb

.field private static final SKU_TMO_DE:I = 0x38

.field private static final SKU_UTSTARCOM_WWE_GENERIC:I = 0xc

.field private static final SKU_VERIZON_WWE:I = 0xd

.field private static final SKU_VODAFONE_AT:I = 0x3d

.field private static final SKU_VODAFONE_CH_GER:I = 0x3e

.field private static final SKU_VODAFONE_FRA:I = 0x3f

.field private static final SKU_VODAFONE_GER:I = 0x40

.field private static final SKU_VODAFONE_NL:I = 0x41

.field private static final SKU_VODAFONE_PTG:I = 0x42

.field private static final SKU_VODAFONE_SPA:I = 0x43

.field private static final SKU_VODAFONE_UK:I = 0x44

.field private static final SPRINT_NETWORKCODE:Ljava/lang/String; = "310120"

.field public static final STRING_DEFAULT_NA:Ljava/lang/String; = "NA"

.field private static final TAG:Ljava/lang/String; = "MessageCustFlag"

.field private static final VMUS_NETWORKCODE:Ljava/lang/String; = "311490"

.field private static messageCustFlag:Lcom/android/internal/telephony/MessageCustFlag;

.field private static messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static systemCustReader:Lcom/htc/customization/HtcCustomizationReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 72
    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 73
    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/MessageCustFlag;

    invoke-direct {v0}, Lcom/android/internal/telephony/MessageCustFlag;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustFlag:Lcom/android/internal/telephony/MessageCustFlag;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 95
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_3

    .line 96
    const-string v1, "System"

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 97
    const-string v1, "Android_TelephonyMessage"

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 98
    const-string v1, "Message"

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 103
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 104
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 108
    const-string v1, "MessageCustFlag"

    const-string v2, "messageCustReader is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_2

    .line 112
    const-string v1, "MessageCustFlag"

    const-string v2, "sMessageApCustReader is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    return-void

    .line 100
    :cond_3
    const-string v1, "MessageCustFlag"

    const-string v2, "custManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkAndInit()V
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustFlag:Lcom/android/internal/telephony/MessageCustFlag;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/MessageCustFlag;

    invoke-direct {v0}, Lcom/android/internal/telephony/MessageCustFlag;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustFlag:Lcom/android/internal/telephony/MessageCustFlag;

    .line 119
    :cond_1
    return-void
.end method

.method public static getCustomizeDefaultSmsAp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2061
    const-string v0, "telephony_sms_default_sms_ap"

    const-string v1, "NA"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageStringCustFlag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmailGatewayNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1893
    const-string v0, "telephony_sms_email_gateway_number"

    const-string v1, "NA"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageStringCustFlag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMessageApBooleanCustFlag(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 195
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 197
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 198
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sMessageApCustReader is null! return boolean defaultValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method private static getMessageBooleanCustFlag(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 132
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 134
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 135
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageCustReader is null! return boolean defaultValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method private static getMessageStringArrayCustFlag(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # [Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 176
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 177
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageCustReader is null! return string array defaultValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local p1    # "defaultValue":[Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":[Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static getMessageStringCustFlag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 155
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 156
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageCustReader is null! return string defaultValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getMobilBoxPro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2035
    const-string v0, "de.telekom.mds.mbp"

    return-object v0
.end method

.method public static getOperatorDefineSmsShortCode()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1975
    const-string v0, "telephony_sms_operator_define_sms_short_code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageStringArrayCustFlag(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSenseVersion()F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 234
    sget-object v3, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v3, :cond_1

    .line 235
    const-string v3, "MessageCustFlag"

    const-string v4, "systemCustReader is null! getSenseVersion return default 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .local v1, "senseVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 239
    .end local v1    # "senseVersion":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "sense_version"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .restart local v1    # "senseVersion":Ljava/lang/String;
    const-string v3, "MessageCustFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sense_version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 247
    const-string v3, "a"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 249
    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 253
    const-string v3, "MessageCustFlag"

    const-string v4, "get wrong Sense version!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSkuId()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 212
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 214
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 215
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null! return -1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .local v0, "skuId":I
    :goto_0
    return v0

    .line 219
    .end local v0    # "skuId":I
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sku_id"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 220
    .restart local v0    # "skuId":I
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sku_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAptgProject()Z
    .locals 6

    .prologue
    .line 502
    const-string v1, "46605"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getFirstCdmaSubId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 503
    .local v0, "isAPTGmccmnc":Z
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAPTGmccmnc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v1

    const/16 v2, 0x4b

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 507
    :cond_0
    const/4 v1, 0x1

    .line 509
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isAttSku()Z
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 366
    .local v0, "skuId":I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 367
    const/4 v1, 0x1

    .line 369
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isBoostProject()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "NETWORKCODE":Ljava/lang/String;
    const-string v3, "MessageCustFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v3

    const/16 v4, 0x55

    if-ne v3, v4, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 459
    goto :goto_0

    .line 460
    :cond_2
    const-string v3, "311870"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 463
    goto :goto_0
.end method

.method private static isCmccSku()Z
    .locals 2

    .prologue
    .line 357
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 358
    .local v0, "skuId":I
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 359
    const/4 v1, 0x1

    .line 361
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isCricketUsSku()Z
    .locals 2

    .prologue
    .line 373
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 374
    .local v0, "skuId":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 375
    const/4 v1, 0x1

    .line 377
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isCtSku()Z
    .locals 2

    .prologue
    .line 347
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 348
    .local v0, "skuId":I
    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 351
    :cond_0
    const/4 v1, 0x1

    .line 353
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFollowCtEmsFormat()Z
    .locals 2

    .prologue
    .line 567
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 568
    .local v0, "skuId":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isAPTG()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 573
    :cond_0
    const/4 v1, 0x1

    .line 575
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFollowCtWapPushSmsFormat()Z
    .locals 2

    .prologue
    .line 529
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 530
    .local v0, "skuId":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isAPTG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    :cond_0
    const/4 v1, 0x1

    .line 535
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFollowSprintWapPushSmsFormat()Z
    .locals 1

    .prologue
    .line 545
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVMUSProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    :cond_0
    const/4 v0, 0x1

    .line 549
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHtcAsiaAusSku()Z
    .locals 2

    .prologue
    .line 332
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 333
    .local v0, "skuId":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isKddiSku()Z
    .locals 2

    .prologue
    .line 322
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 323
    .local v0, "skuId":I
    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_1

    .line 326
    :cond_0
    const/4 v1, 0x1

    .line 328
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobilBoxPro(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2039
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 2040
    .local v0, "skuId":I
    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    .line 2041
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getMobilBoxPro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2042
    const/4 v1, 0x1

    .line 2045
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNotSupportCmasAck()Z
    .locals 1

    .prologue
    .line 1446
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isNotSupportPhoneNumBlockListCheck()Z
    .locals 2

    .prologue
    .line 1992
    const-string v0, "message_sms_is_support_skip_people_blocklist_check"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageApBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNotSupportRetryForImsSms()Z
    .locals 1

    .prologue
    .line 1045
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method private static isO2UkSku()Z
    .locals 2

    .prologue
    .line 398
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 399
    .local v0, "skuId":I
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 400
    const/4 v1, 0x1

    .line 402
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isOptusSku()Z
    .locals 2

    .prologue
    .line 337
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 338
    .local v0, "skuId":I
    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isOrangeUkSku()Z
    .locals 2

    .prologue
    .line 406
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 407
    .local v0, "skuId":I
    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    .line 408
    const/4 v1, 0x1

    .line 410
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPendingMsgRepoEnabled()Z
    .locals 1

    .prologue
    .line 1681
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSprintProject()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 428
    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "NETWORKCODE":Ljava/lang/String;
    const-string v3, "MessageCustFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 432
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 432
    goto :goto_0

    .line 433
    :cond_2
    const-string v3, "310120"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 436
    goto :goto_0
.end method

.method public static isSupportAcms()Z
    .locals 1

    .prologue
    .line 928
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isAttSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportAlwaysAllowWalletApMoPremiumSms()Z
    .locals 1

    .prologue
    .line 1492
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportAttCmasMechanism()Z
    .locals 1

    .prologue
    .line 944
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isAttSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportAudioOgg()Z
    .locals 1

    .prologue
    .line 2178
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportAudioQcp()Z
    .locals 1

    .prologue
    .line 2187
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportBmPtt()Z
    .locals 2

    .prologue
    .line 2145
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 2146
    .local v0, "skuId":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportCdmaSmsDuplicationDetect()Z
    .locals 1

    .prologue
    .line 1614
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1615
    const/4 v0, 0x1

    .line 1618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportCmasExerciseAlert()Z
    .locals 2

    .prologue
    .line 1963
    const-string v0, "telephony_sms_is_support_cmas_exercise_alert"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportCmasSecondaryLanguage()Z
    .locals 1

    .prologue
    .line 758
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVMUSProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isBoostProject()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportConvertDTMF0ToASCII0()Z
    .locals 1

    .prologue
    .line 1665
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    return v0
.end method

.method public static isSupportCricketUserData()Z
    .locals 1

    .prologue
    .line 1208
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCricketUsSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportCtMoFormat()Z
    .locals 2

    .prologue
    .line 1863
    const-string v0, "telephony_sms_is_support_c9_mo_format"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportCtPrefixPlusSignToPhoneNumber()Z
    .locals 1

    .prologue
    .line 1519
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportEmsForPhoneType(I)Z
    .locals 2
    .param p0, "phoneType"    # I

    .prologue
    .line 888
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 889
    .local v0, "skuId":I
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x62

    if-eq v0, v1, :cond_0

    const/16 v1, 0x55

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    .line 904
    :cond_0
    const/4 v1, 0x0

    .line 907
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSupportEmsForSubscriber(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 858
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForPhoneType(I)Z

    move-result v0

    return v0
.end method

.method public static isSupportFilterAttVvmSms()Z
    .locals 1

    .prologue
    .line 2029
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isAttSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportFilterVerizonVvmSms()Z
    .locals 1

    .prologue
    .line 2023
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportForcePlusCodeWith011()Z
    .locals 2

    .prologue
    .line 772
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportForceRemovePlusCode()Z
    .locals 4

    .prologue
    .line 786
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v1

    .line 791
    .local v1, "skuId":I
    const-string v2, "HTC__038"

    const-string v3, "ro.cid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x21

    if-ne v1, v2, :cond_2

    .line 793
    :cond_0
    const/4 v0, 0x1

    .line 799
    .local v0, "isAsiaInd":Z
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isAPTG()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    .line 803
    :cond_1
    const/4 v2, 0x1

    .line 806
    :goto_1
    return v2

    .line 795
    .end local v0    # "isAsiaInd":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isAsiaInd":Z
    goto :goto_0

    .line 806
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isSupportGepApps()Z
    .locals 2

    .prologue
    .line 1773
    const-string v0, "telephony_sms_is_support_gep_app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportGsmSmsDuplicationDetect()Z
    .locals 1

    .prologue
    .line 1640
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isTelstraSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isOptusSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isHtcAsiaAusSku()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1643
    :cond_0
    const/4 v0, 0x1

    .line 1646
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportHtcSmsRetry()Z
    .locals 1

    .prologue
    .line 2160
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportImsSms()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2123
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2125
    :goto_0
    return v0

    :cond_0
    const-string v1, "telephony_sms_is_support_ims_sms"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportItsOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 290
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 292
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 293
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null! return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .local v0, "itsOnEnabled":Z
    :goto_0
    return v0

    .line 297
    .end local v0    # "itsOnEnabled":Z
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "has_its_on_ap"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 298
    .restart local v0    # "itsOnEnabled":Z
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has_its_on_ap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSupportKSC5601Encoding()Z
    .locals 1

    .prologue
    .line 1434
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKddiAtMailWapPush()Z
    .locals 1

    .prologue
    .line 617
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiBcsms()Z
    .locals 1

    .prologue
    .line 1380
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiCdmaNackWith0x23()Z
    .locals 1

    .prologue
    .line 1087
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiCdmaSmsFormat()Z
    .locals 1

    .prologue
    .line 661
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    const/4 v0, 0x1

    .line 665
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiCheckDuplicateSms()Z
    .locals 1

    .prologue
    .line 1276
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiDetectDataActivityCallstateForMoSms()Z
    .locals 1

    .prologue
    .line 1185
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiEmoji()Z
    .locals 1

    .prologue
    .line 1129
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiGsmNackWith0x16()Z
    .locals 1

    .prologue
    .line 1072
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiIgnoreCbConfig()Z
    .locals 1

    .prologue
    .line 628
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiLteDuplicateCbMechanism()Z
    .locals 1

    .prologue
    .line 1308
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiLteDuplicateSmsMechanism()Z
    .locals 1

    .prologue
    .line 1289
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiMessageId()Z
    .locals 1

    .prologue
    .line 1241
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiMessageIdMechanism()Z
    .locals 1

    .prologue
    .line 1714
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiMtCmail()Z
    .locals 1

    .prologue
    .line 1733
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKddiOtapa()Z
    .locals 1

    .prologue
    .line 1060
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiOtasp()Z
    .locals 1

    .prologue
    .line 710
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    const/4 v0, 0x1

    .line 714
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiSetCallBackToTpoa()Z
    .locals 1

    .prologue
    .line 597
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    const/4 v0, 0x1

    .line 601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiShiftJisMoSms()Z
    .locals 1

    .prologue
    .line 685
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    const/4 v0, 0x1

    .line 689
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiShiftJisMtSms()Z
    .locals 1

    .prologue
    .line 1169
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiSlamdownSms()Z
    .locals 1

    .prologue
    .line 1110
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiTwoByteLF()Z
    .locals 1

    .prologue
    .line 1696
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiUnicodeWemtByteCount()Z
    .locals 1

    .prologue
    .line 1198
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiWemtEncoding()Z
    .locals 1

    .prologue
    .line 644
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKtDiscardSms()Z
    .locals 1

    .prologue
    .line 1328
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKtHideTpoa()Z
    .locals 1

    .prologue
    .line 1348
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKtMsisdnUpdate()Z
    .locals 1

    .prologue
    .line 1318
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKtSpecialDcs()Z
    .locals 1

    .prologue
    .line 1338
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKtUserData()Z
    .locals 1

    .prologue
    .line 1228
    const/4 v0, 0x0

    return v0
.end method

.method private static isSupportLte()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 268
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 269
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null! return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .local v0, "supportLte":Z
    :goto_0
    return v0

    .line 273
    .end local v0    # "supportLte":Z
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_lte"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 274
    .restart local v0    # "supportLte":Z
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support_lte="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSupportMimeBSuplInit()Z
    .locals 1

    .prologue
    .line 1745
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportMms()Z
    .locals 2

    .prologue
    .line 2196
    const-string v0, "framework_mms_is_support_mms"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportNli()Z
    .locals 2

    .prologue
    .line 2135
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 2136
    .local v0, "skuId":I
    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportNvidiaCBConfig()Z
    .locals 1

    .prologue
    .line 1758
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportOmaDm()Z
    .locals 2

    .prologue
    .line 1472
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 1473
    .local v0, "skuId":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x62

    if-eq v0, v1, :cond_0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_1

    .line 1476
    :cond_0
    const/4 v1, 0x1

    .line 1479
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportOrangeEmergencySMS()Z
    .locals 1

    .prologue
    .line 2096
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isOrangeUkSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isO2UkSku()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportRedirectSmsToMobilBoxPro()Z
    .locals 2

    .prologue
    .line 2052
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 2053
    .local v0, "skuId":I
    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportRedirectTypeWap()Z
    .locals 1

    .prologue
    .line 918
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportRelativeValidityPeriod()Z
    .locals 2

    .prologue
    .line 1906
    const-string v0, "telephony_sms_is_support_relative_validity_period"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportRemovePrefixZeroFromPhoneNumber()Z
    .locals 1

    .prologue
    .line 1503
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportRemoveUdhFromPayload()Z
    .locals 1

    .prologue
    .line 963
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportReplacePlus1With1()Z
    .locals 1

    .prologue
    .line 1405
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportReplacePlusWith010()Z
    .locals 1

    .prologue
    .line 1422
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportReplySmsAckBeforeDispatch()Z
    .locals 1

    .prologue
    .line 1935
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportRuimRecordLength()Z
    .locals 2

    .prologue
    .line 1875
    const-string v0, "telephony_sms_is_check_ruim_record_length"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSktUserData()Z
    .locals 1

    .prologue
    .line 1218
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportSmsWriteUiccForMo3gppSms()Z
    .locals 1

    .prologue
    .line 2107
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2108
    const/4 v0, 0x1

    .line 2111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSprintDuplicatedCmasDetection()Z
    .locals 2

    .prologue
    .line 1841
    const-string v0, "telephony_sms_is_support_s5_duplicate_cmas_detection"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintIgnoredSmsFormat()Z
    .locals 1

    .prologue
    .line 2208
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVMUSProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isBoostProject()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSprintMtSmsInEcmMode()Z
    .locals 2

    .prologue
    .line 1850
    const-string v0, "telephony_sms_is_support_s5_mt_sms_in_ecm_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintReassembleSms()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1792
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "telephony_sms_is_support_s5_reassemble_sms"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportSprintReassembleSmsEnhance()Z
    .locals 2

    .prologue
    .line 1808
    const-string v0, "telephony_sms_is_support_s5_reassemble_sms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintResetVoiceMailCount()Z
    .locals 2

    .prologue
    .line 1951
    const-string v0, "telephony_sms_is_support_reset_voice_mail_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintRoamingGuard()Z
    .locals 1

    .prologue
    .line 745
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintSegmentIndicator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1820
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "telephony_sms_is_support_s5_segment_indicator"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportTencentBolockList()Z
    .locals 2

    .prologue
    .line 2006
    const-string v0, "telephony_sms_tencent_security_manager"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportTmoUsCmasDuplicateCheck()Z
    .locals 1

    .prologue
    .line 2082
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isTmoUsSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVerizonRadioTech()Z
    .locals 1

    .prologue
    .line 1455
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVodafoneMwiClear()Z
    .locals 1

    .prologue
    .line 1149
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVodafoneSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwCmasDuplicateCheck()Z
    .locals 1

    .prologue
    .line 2017
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwConsignApMoSmsRule()Z
    .locals 1

    .prologue
    .line 1022
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwDirectSms()Z
    .locals 1

    .prologue
    .line 1009
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwLteCheckMechanism()Z
    .locals 1

    .prologue
    .line 1251
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwLteRetryMechanism()Z
    .locals 1

    .prologue
    .line 999
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwNbpcd()Z
    .locals 1

    .prologue
    .line 1097
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwNotificationSms()Z
    .locals 1

    .prologue
    .line 1032
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwPlusPrependRule()Z
    .locals 1

    .prologue
    .line 1139
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwRetryDialog()Z
    .locals 1

    .prologue
    .line 973
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method private static isTelstraSku()Z
    .locals 2

    .prologue
    .line 342
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 343
    .local v0, "skuId":I
    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTmoUsSku()Z
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 318
    .local v0, "skuId":I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isVMUSProject()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 482
    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "NETWORKCODE":Ljava/lang/String;
    const-string v3, "MessageCustFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 486
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v3

    const/16 v4, 0x62

    if-ne v3, v4, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 486
    goto :goto_0

    .line 487
    :cond_2
    const-string v3, "311490"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 490
    goto :goto_0
.end method

.method private static isVodafoneSku()Z
    .locals 2

    .prologue
    .line 381
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 382
    .local v0, "skuId":I
    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    .line 391
    :cond_0
    const/4 v1, 0x1

    .line 394
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isVzwSku()Z
    .locals 2

    .prologue
    .line 309
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 310
    .local v0, "skuId":I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 311
    const/4 v1, 0x1

    .line 313
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static shouldDiscardVoiceMail()Z
    .locals 1

    .prologue
    .line 1394
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static shouldEnhanceCdmaTimestampWhileRoaming()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 823
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 825
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCdmaNetworkRoaming()Z

    move-result v5

    if-nez v5, :cond_1

    .line 848
    .local v0, "cdmaSubId":J
    .local v2, "mccMnc":Ljava/lang/String;
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v4

    .line 828
    .end local v0    # "cdmaSubId":J
    .end local v2    # "mccMnc":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v5, "MessageCustFlag"

    const-string v6, "Roaming under CDMA network!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v2, 0x0

    .line 833
    .restart local v2    # "mccMnc":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 835
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getFirstCdmaSubId()J

    move-result-wide v0

    .line 836
    .restart local v0    # "cdmaSubId":J
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 839
    invoke-virtual {v3, v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;

    move-result-object v2

    .line 840
    const-string v5, "MessageCustFlag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNetworkOperator : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    if-eqz v2, :cond_0

    const-string v5, "310"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "311"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "316"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 844
    :cond_2
    const-string v4, "MessageCustFlag"

    const-string v5, "Roaming in USA! Need Enhance SMSC Timestamp!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static shouldMakeMoSmsInvisible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "destAddress"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1536
    const/4 v0, 0x0

    .line 1537
    .local v0, "isWalletApp":Z
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isAttSku()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1538
    const-string v2, "com.isis.mclient.atnt.activity"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.isis.mclient.atnt.isistest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1540
    :cond_0
    const/4 v0, 0x1

    .line 1554
    :cond_1
    :goto_0
    if-eqz v0, :cond_7

    .line 1555
    const-string v2, "87902"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1604
    :cond_2
    :goto_1
    return v1

    .line 1542
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isTmoUsSku()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1543
    const-string v2, "com.isis.mclient.tmobile.activity"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.isis.mclient.tmobile.isistest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1545
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1547
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1548
    const-string v2, "com.isis.mclient.verizon.activity"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.isis.mclient.verizon.isistest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1550
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 1560
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isTmoUsSku()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1561
    const-string v2, "com.tmobile.vvm.application"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1562
    const-string v2, "122"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1568
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCmccSku()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1569
    const-string v2, "cn.cj.pe"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.ophone.reader.ui"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cn.emagsoftware.gamehall"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.aspire.mm"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.autonavi.cmccmap"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.cmcc.mobilevideo"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.chinamobile.contacts.im"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.hisunflytone.android"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cn.com.fetion"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.chinamobile.cmccwifi"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.iflytek.cmcc"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.cyber.wallet"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.tencent.qqmusic"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.tencent.qqlive"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cmccwm.mobilemusic"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.tmall.wireless"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.baidu.searchbox"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.sina.weibog3"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.iflytek.inputmethod.oem"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.servo.search"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1598
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1599
    const-string v2, "im.yixin"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1604
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public static shouldSetDeviceTimeInSmscTimestamp()Z
    .locals 1

    .prologue
    .line 728
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    const/4 v0, 0x1

    .line 732
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
