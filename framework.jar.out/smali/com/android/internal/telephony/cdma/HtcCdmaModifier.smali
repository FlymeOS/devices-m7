.class public Lcom/android/internal/telephony/cdma/HtcCdmaModifier;
.super Ljava/lang/Object;
.source "HtcCdmaModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    }
.end annotation


# static fields
.field private static final ADC_LIST_FLAG:Ljava/lang/String; = "cdma_adc_list"

.field private static final ADC_LIST_FLAG_CHAMELEON:Ljava/lang/String; = "cdma_adc_list_chameleon"

.field private static final ADC_STRING_TOKEN:C = ';'

.field private static final BOM_LENGTH:I = 0x3

.field private static final CARRIERID_CSPIRE:I = 0xd

.field private static final CARRIER_ID_ATTRIBUTE:Ljava/lang/String; = "id"

.field private static final CARRIER_INFO_FILE_NAME:Ljava/lang/String; = "carrier-info.xml"

.field private static final CARRIER_INFO_FILE_PATH:Ljava/lang/String; = "/system/customize/resource/"

.field private static final CARRIER_MCC_ATTRIBUTE:Ljava/lang/String; = "mcc"

.field private static final CARRIER_MNC_ATTRIBUTE:Ljava/lang/String; = "mnc"

.field private static final CARRIER_NAME_ATTRIBUTE:Ljava/lang/String; = "name"

.field private static final CARRIER_TAG:Ljava/lang/String; = "carrier"

.field private static final CARRIER_UPDATE_VM_ATTRIBUTE:Ljava/lang/String; = "updateVmAfterOtasp"

.field private static final CARRIER_VM_ATTRIBUTE:Ljava/lang/String; = "vm"

.field private static final CallernumberOverwrittenPathes:[Ljava/lang/String;

.field private static final DBG:Z

.field private static final MAX_CARRIER_INFO_FILE_SIZE:J = 0x19000L

.field private static final MAX_CARRIER_RECORDS_COUNT:I = 0x3e8

.field private static final MDN_TOKEN:Ljava/lang/String; = "mdn"

.field public static final PROPERTY_CARRIER_ID_FOR_ACG:Ljava/lang/String; = "persist.radio.acg_carrier"

.field private static final ROOT_TAG:Ljava/lang/String; = "carriers"

.field private static final SDBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcCdmaModifier"

.field private static final mAdcMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

.field private static mCarrierMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final mEmergencyDisplay_Sprint:Ljava/lang/String; = "9-1-1 Emergency"

.field private static final sEmergencyDisplay:Ljava/lang/String; = "9-1-1 Emergency"


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    .line 58
    sget-boolean v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v10, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    .line 69
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mAdcMap:Ljava/util/Map;

    .line 72
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSprintChameleon()Z

    move-result v5

    .line 73
    .local v5, "isChameleonProject":Z
    const-string v1, "cdma_adc_list"

    .line 75
    .local v1, "adcFlag":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 76
    const-string v1, "cdma_adc_list_chameleon"

    .line 79
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v1, v11}, Lcom/android/internal/telephony/ACCCustomizationReader;->readStringArray(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "adcList":[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v10, v2

    if-lez v10, :cond_3

    .line 83
    move-object v3, v2

    .local v3, "arr$":[Ljava/lang/String;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v0, v3, v4

    .line 84
    .local v0, "adc":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 85
    const/16 v10, 0x3b

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 86
    .local v9, "tokenIndex":I
    if-lez v9, :cond_1

    .line 87
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, "number":Ljava/lang/String;
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "name":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mAdcMap:Ljava/util/Map;

    invoke-interface {v10, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "tokenIndex":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    .restart local v9    # "tokenIndex":I
    :cond_1
    const-string v10, "HtcCdmaModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "illegal adc: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    .end local v9    # "tokenIndex":I
    :cond_2
    const-string v10, "HtcCdmaModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "empty or null adc: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    .end local v0    # "adc":Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_3
    sget-boolean v10, Lcom/android/internal/telephony/HtcBuildUtils;->DetectVMbyCarrierIdFromNV:Z

    if-eqz v10, :cond_4

    .line 99
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->loadCarrierInfoData()V

    .line 422
    :cond_4
    const/16 v10, 0x14

    new-array v10, v10, [[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0xb

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0xd

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0xe

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0xf

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0x10

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0x11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0x12

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0x13

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    sput-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    .line 450
    const/16 v10, 0x14

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "/carrier/Customization/ADC/First"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "/carrier/Customization/ADC/Second"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "/carrier/Customization/ADC/Third"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "/carrier/Customization/ADC/Fourth"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "/carrier/Customization/ADC/Fifth"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "/carrier/Customization/ADC/Sixth"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "/carrier/Customization/ADC/Seventh"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "/carrier/Customization/ADC/Eighth"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "/carrier/Customization/ADC/Eigth"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string v12, "/carrier/Customization/ADC/Ninth"

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "/carrier/Customization/ADC/Tenth"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    const-string v12, "/carrier/Customization/ADC/Eleventh"

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const-string v12, "/carrier/Customization/ADC/Elevnth"

    aput-object v12, v10, v11

    const/16 v11, 0xd

    const-string v12, "/carrier/Customization/ADC/Twelfth"

    aput-object v12, v10, v11

    const/16 v11, 0xe

    const-string v12, "/carrier/Customization/ADC/Thirteenth"

    aput-object v12, v10, v11

    const/16 v11, 0xf

    const-string v12, "/carrier/Customization/ADC/Fourteenth"

    aput-object v12, v10, v11

    const/16 v11, 0x10

    const-string v12, "/carrier/Customization/ADC/Fifteenth"

    aput-object v12, v10, v11

    const/16 v11, 0x11

    const-string v12, "/carrier/Customization/ADC/Sixteenth"

    aput-object v12, v10, v11

    const/16 v11, 0x12

    const-string v12, "/carrier/Customization/ADC/Seventeenth"

    aput-object v12, v10, v11

    const/16 v11, 0x13

    const-string v12, "/carrier/Customization/ADC/Eighteenth"

    aput-object v12, v10, v11

    sput-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->CallernumberOverwrittenPathes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    return-void
.end method

.method public static getACGServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xd

    .line 868
    sget-boolean v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcCdmaModifier"

    const-string v2, "getACGServiceName"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "ret":Ljava/lang/String;
    const-string/jumbo v1, "persist.radio.acg_carrier"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getOperatorByCarrierId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 875
    sget-boolean v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcCdmaModifier"

    const-string v2, "getACGServiceName append carrier name for C Spire Wireless"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_1
    return-object v0
.end method

.method public static getCellSouthCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 728
    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcCdmaModifier"

    const-string v1, "getCellSouthCallerName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMccByNVvalue(II)Ljava/lang/String;
    .locals 4
    .param p0, "mcc"    # I
    .param p1, "nvValue"    # I

    .prologue
    .line 1342
    const/4 v0, 0x0

    .line 1346
    .local v0, "givenMcc":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1347
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;

    .line 1348
    .local v1, "target":Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    if-eqz v1, :cond_0

    .line 1349
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    .line 1494
    .end local v1    # "target":Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 1352
    :cond_1
    const-string v2, "HtcCdmaModifier"

    const-string v3, "carrier data not loaded or is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMccMncByCarrierId(I)Ljava/lang/String;
    .locals 4
    .param p0, "nvValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 1316
    if-eqz p0, :cond_0

    .line 1318
    const/4 v3, 0x0

    invoke-static {v3, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getMccByNVvalue(II)Ljava/lang/String;

    move-result-object v0

    .line 1321
    .local v0, "mcc":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1336
    .end local v0    # "mcc":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 1329
    .restart local v0    # "mcc":Ljava/lang/String;
    :cond_1
    invoke-static {v0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getMncByNVvalue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1331
    .local v1, "mnc":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getMncByNVvalue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "mcc"    # Ljava/lang/String;
    .param p1, "nvValue"    # I

    .prologue
    .line 1503
    const/4 v0, 0x0

    .line 1506
    .local v0, "mnc":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1507
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;

    .line 1508
    .local v1, "target":Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    if-eqz v1, :cond_0

    .line 1509
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->getMnc()Ljava/lang/String;

    move-result-object v0

    .line 1685
    .end local v1    # "target":Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1686
    const-string v0, "00"

    .line 1691
    :cond_1
    return-object v0

    .line 1512
    :cond_2
    const-string v2, "HtcCdmaModifier"

    const-string v3, "carrier data not loaded or is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getOperatorByCarrierId(I)Ljava/lang/String;
    .locals 4
    .param p0, "nvValue"    # I

    .prologue
    .line 1700
    if-nez p0, :cond_1

    .line 1702
    const/4 v0, 0x0

    .line 1791
    :cond_0
    :goto_0
    return-object v0

    .line 1705
    :cond_1
    const/4 v0, 0x0

    .line 1709
    .local v0, "name":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1710
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;

    .line 1711
    .local v1, "target":Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    if-eqz v1, :cond_0

    .line 1712
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1715
    .end local v1    # "target":Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    :cond_2
    const-string v2, "HtcCdmaModifier"

    const-string v3, "carrier data not loaded or is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getOverwriteCallEndName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 606
    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcCdmaModifier"

    const-string v1, "getOverwriteCallEndName should not be called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOverwriteRoamingCallEndName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 677
    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcCdmaModifier"

    const-string v1, "getOverwriteRoamingCallEndName should not be called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    if-eqz p0, :cond_2

    .line 680
    const-string v0, "911"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "411"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "*4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 685
    :cond_1
    const-string v0, "Roaming"

    .line 688
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 939
    sget-boolean v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcCdmaModifier"

    const-string v3, "getServiceName should not be called"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_0
    if-nez p0, :cond_2

    .line 975
    :cond_1
    :goto_0
    return-object v1

    .line 945
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 946
    .local v0, "lenNumber":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 948
    const-string v2, "*9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 950
    const-string v1, "Correo de voz"

    goto :goto_0

    .line 952
    :cond_3
    const-string v2, "*5"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 954
    const-string v1, "Consulta de Saldo"

    goto :goto_0

    .line 956
    :cond_4
    const-string v2, "*1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 958
    const-string v1, "Emergencia"

    goto :goto_0

    .line 961
    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 963
    const-string v2, "*21"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 965
    const-string v1, "Recarga Prepago"

    goto :goto_0

    .line 968
    :cond_6
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 970
    const-string v2, "*611"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 972
    const-string v1, "Atenci\u00f3n al Cliente"

    goto :goto_0
.end method

.method public static getVoiceMailNumberByCarrierId(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "nvValue"    # I
    .param p1, "mdn"    # Ljava/lang/String;

    .prologue
    .line 1185
    const/4 v1, 0x0

    .line 1187
    .local v1, "voiceNumber":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "cdma_vm_number"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1189
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1192
    move-object v1, p1

    .line 1194
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->DetectVMbyCarrierIdFromNV:Z

    if-eqz v2, :cond_0

    .line 1197
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1198
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;

    .line 1199
    .local v0, "target":Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v1

    .line 1202
    const-string/jumbo v2, "mdn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1203
    move-object v1, p1

    .line 1307
    .end local v0    # "target":Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 1207
    :cond_1
    const-string v2, "HtcCdmaModifier"

    const-string v3, "carrier data not loaded or is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isN11Number(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 693
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUpdateVmNumberAfterProvisionByCarrierId(I)Z
    .locals 4
    .param p0, "carrierId"    # I

    .prologue
    .line 1164
    const/4 v0, 0x1

    .line 1166
    .local v0, "ret":Z
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1167
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;

    .line 1168
    .local v1, "target":Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    if-eqz v1, :cond_0

    .line 1169
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->isUpdateVmNumberAfterProvision()Z

    move-result v0

    .line 1175
    .end local v1    # "target":Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    :cond_0
    :goto_0
    return v0

    .line 1172
    :cond_1
    const-string v2, "HtcCdmaModifier"

    const-string v3, "carrier data not loaded or is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadCarrierInfoData()V
    .locals 28

    .prologue
    .line 1010
    const-wide/16 v22, 0x0

    .line 1011
    .local v22, "time":J
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_0

    .line 1012
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1014
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    .line 1016
    new-instance v8, Ljava/io/File;

    const-string v3, "/system/customize/resource/"

    const-string v4, "carrier-info.xml"

    invoke-direct {v8, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    .local v8, "carrierInfoFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    .line 1019
    .local v12, "fileExists":Z
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 1020
    .local v16, "fileSize":J
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carrier-info.xml exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_1
    if-eqz v12, :cond_11

    const-wide/32 v4, 0x19000

    cmp-long v3, v16, v4

    if-gtz v3, :cond_11

    .line 1023
    const/4 v13, 0x0

    .line 1024
    .local v13, "fileReader":Ljava/io/InputStreamReader;
    const/16 v24, 0x0

    .line 1028
    .local v24, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1030
    .local v19, "inputStream":Ljava/io/FileInputStream;
    new-instance v20, Ljava/io/PushbackInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1031
    .local v20, "is":Ljava/io/PushbackInputStream;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v15, v3, :cond_2

    .line 1032
    invoke-virtual/range {v20 .. v20}, Ljava/io/PushbackInputStream;->read()I

    move-result v9

    .line 1033
    .local v9, "ch":I
    const/16 v3, 0x3c

    if-ne v9, v3, :cond_8

    .line 1034
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 1038
    .end local v9    # "ch":I
    :cond_2
    new-instance v14, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    move-object/from16 v0, v20

    invoke-direct {v14, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    .end local v13    # "fileReader":Ljava/io/InputStreamReader;
    .local v14, "fileReader":Ljava/io/InputStreamReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v24

    .line 1041
    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1042
    const-string v3, "carriers"

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1044
    const/4 v10, 0x0

    .line 1046
    .local v10, "count":I
    :cond_3
    :goto_1
    const/16 v3, 0x3e8

    if-ge v10, v3, :cond_4

    .line 1047
    invoke-static/range {v24 .. v24}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1049
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1050
    .local v21, "value":Ljava/lang/String;
    if-nez v21, :cond_9

    .line 1051
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "HtcCdmaModifier"

    const-string v4, "end parsing carrier-info.xml"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    .end local v21    # "value":Ljava/lang/String;
    :cond_4
    const/16 v3, 0x3e8

    if-ne v10, v3, :cond_5

    .line 1075
    const-string v3, "HtcCdmaModifier"

    const-string v4, "carrier count may exceed limitation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1087
    :cond_5
    if-eqz v14, :cond_6

    .line 1088
    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1093
    :cond_6
    :goto_2
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_13

    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v22, v4, v22

    .line 1095
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadCarrierInfoData spent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v14

    .line 1106
    .end local v10    # "count":I
    .end local v14    # "fileReader":Ljava/io/InputStreamReader;
    .end local v15    # "i":I
    .end local v19    # "inputStream":Ljava/io/FileInputStream;
    .end local v20    # "is":Ljava/io/PushbackInputStream;
    .end local v24    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    :goto_3
    return-void

    .line 1031
    .restart local v9    # "ch":I
    .restart local v13    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v15    # "i":I
    .restart local v19    # "inputStream":Ljava/io/FileInputStream;
    .restart local v20    # "is":Ljava/io/PushbackInputStream;
    .restart local v24    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 1053
    .end local v9    # "ch":I
    .end local v13    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v10    # "count":I
    .restart local v14    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v21    # "value":Ljava/lang/String;
    :cond_9
    :try_start_3
    const-string v3, "carrier"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1054
    const/4 v3, 0x0

    const-string/jumbo v4, "id"

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1055
    if-eqz v21, :cond_3

    .line 1056
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1057
    .local v18, "id":I
    const/4 v3, 0x0

    const-string/jumbo v4, "updateVmAfterOtasp"

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1058
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1059
    .local v7, "updateVm":Z
    new-instance v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;

    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "mcc"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "mnc"

    move-object/from16 v0, v24

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v25, "vm"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1066
    .local v2, "carrierInfo":Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    add-int/lit8 v10, v10, 0x1

    .line 1069
    goto/16 :goto_1

    .line 1071
    .end local v2    # "carrierInfo":Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    .end local v7    # "updateVm":Z
    .end local v18    # "id":I
    :cond_a
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 1077
    .end local v10    # "count":I
    .end local v21    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v13, v14

    .line 1078
    .end local v14    # "fileReader":Ljava/io/InputStreamReader;
    .end local v15    # "i":I
    .end local v19    # "inputStream":Ljava/io/FileInputStream;
    .end local v20    # "is":Ljava/io/PushbackInputStream;
    .local v11, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "fileReader":Ljava/io/InputStreamReader;
    :goto_4
    :try_start_4
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carrier-info xml file not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1087
    if-eqz v13, :cond_b

    .line 1088
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1093
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    :cond_b
    :goto_5
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_7

    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v22, v4, v22

    .line 1095
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadCarrierInfoData spent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1090
    .end local v13    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v10    # "count":I
    .restart local v14    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v15    # "i":I
    .restart local v19    # "inputStream":Ljava/io/FileInputStream;
    .restart local v20    # "is":Ljava/io/PushbackInputStream;
    :catch_1
    move-exception v11

    .line 1091
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileReader.close exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1090
    .end local v10    # "count":I
    .end local v14    # "fileReader":Ljava/io/InputStreamReader;
    .end local v15    # "i":I
    .end local v19    # "inputStream":Ljava/io/FileInputStream;
    .end local v20    # "is":Ljava/io/PushbackInputStream;
    .local v11, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "fileReader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v11

    .line 1091
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileReader.close exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1079
    .end local v11    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v11

    .line 1080
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_6
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "xmlPullParser.setInput exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1087
    if-eqz v13, :cond_c

    .line 1088
    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1093
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_c
    :goto_7
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_7

    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v22, v4, v22

    .line 1095
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadCarrierInfoData spent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1090
    .restart local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v11

    .line 1091
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileReader.close exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1081
    .end local v11    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v11

    .line 1082
    .restart local v11    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_8
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XmlUtils.beginDocument exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1087
    if-eqz v13, :cond_d

    .line 1088
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1093
    :cond_d
    :goto_9
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_7

    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v22, v4, v22

    .line 1095
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadCarrierInfoData spent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1090
    :catch_6
    move-exception v11

    .line 1091
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileReader.close exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1083
    .end local v11    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v11

    .line 1084
    .local v11, "e":Ljava/lang/NumberFormatException;
    :goto_a
    :try_start_a
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse carrier id failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1087
    if-eqz v13, :cond_e

    .line 1088
    :try_start_b
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 1093
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    :goto_b
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_7

    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v22, v4, v22

    .line 1095
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadCarrierInfoData spent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1090
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    :catch_8
    move-exception v11

    .line 1091
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileReader.close exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1086
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1087
    :goto_c
    if-eqz v13, :cond_f

    .line 1088
    :try_start_c
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 1093
    :cond_f
    :goto_d
    sget-boolean v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v4, :cond_10

    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v22, v4, v22

    .line 1095
    const-string v4, "HtcCdmaModifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadCarrierInfoData spent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    throw v3

    .line 1090
    :catch_9
    move-exception v11

    .line 1091
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v4, "HtcCdmaModifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileReader.close exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1099
    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "fileReader":Ljava/io/InputStreamReader;
    .end local v24    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_11
    if-nez v12, :cond_12

    .line 1100
    const-string v3, "HtcCdmaModifier"

    const-string v4, "carrier-info.xml not exists"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1102
    :cond_12
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carrier-info.xml size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes, the max limitation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v26, 0x19000

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1086
    .restart local v14    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v15    # "i":I
    .restart local v19    # "inputStream":Ljava/io/FileInputStream;
    .restart local v20    # "is":Ljava/io/PushbackInputStream;
    .restart local v24    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v3

    move-object v13, v14

    .end local v14    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v13    # "fileReader":Ljava/io/InputStreamReader;
    goto/16 :goto_c

    .line 1083
    .end local v13    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v14    # "fileReader":Ljava/io/InputStreamReader;
    :catch_a
    move-exception v11

    move-object v13, v14

    .end local v14    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v13    # "fileReader":Ljava/io/InputStreamReader;
    goto/16 :goto_a

    .line 1081
    .end local v13    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v14    # "fileReader":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v11

    move-object v13, v14

    .end local v14    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v13    # "fileReader":Ljava/io/InputStreamReader;
    goto/16 :goto_8

    .line 1079
    .end local v13    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v14    # "fileReader":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v11

    move-object v13, v14

    .end local v14    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v13    # "fileReader":Ljava/io/InputStreamReader;
    goto/16 :goto_6

    .line 1077
    .end local v15    # "i":I
    .end local v19    # "inputStream":Ljava/io/FileInputStream;
    .end local v20    # "is":Ljava/io/PushbackInputStream;
    :catch_d
    move-exception v11

    goto/16 :goto_4

    .end local v13    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v10    # "count":I
    .restart local v14    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v15    # "i":I
    .restart local v19    # "inputStream":Ljava/io/FileInputStream;
    .restart local v20    # "is":Ljava/io/PushbackInputStream;
    :cond_13
    move-object v13, v14

    .end local v14    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v13    # "fileReader":Ljava/io/InputStreamReader;
    goto/16 :goto_3
.end method

.method public static loadChameleonADCData()V
    .locals 11

    .prologue
    .line 476
    sget-boolean v8, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "HtcCdmaModifier"

    const-string v9, ">> Load Chameleon ADC codes"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->CallernumberOverwrittenPathes:[Ljava/lang/String;

    array-length v8, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v6, v8, :cond_4

    .line 480
    const/4 v1, 0x0

    .line 481
    .local v1, "buf":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 483
    .local v4, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->CallernumberOverwrittenPathes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 484
    new-instance v5, Ljava/io/FileReader;

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->CallernumberOverwrittenPathes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 488
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "str":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 489
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "Data":[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x2

    if-lt v8, v9, :cond_1

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 494
    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aget-object v8, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v0, v10

    aput-object v10, v8, v9

    .line 495
    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aget-object v8, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget-object v10, v0, v10

    aput-object v10, v8, v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v0    # "Data":[Ljava/lang/String;
    :cond_1
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v1, v2

    .line 517
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v7    # "str":Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 519
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 520
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 479
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 522
    :catch_0
    move-exception v3

    .line 523
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 529
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    .line 530
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 532
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    sget-boolean v8, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "HtcCdmaModifier"

    const-string v9, "<< Load Chameleon ADC codes"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_5
    return-void

    .line 513
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    .line 514
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v8, "HtcCdmaModifier"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 517
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 519
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 520
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 522
    :catch_3
    move-exception v3

    .line 523
    .local v3, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 517
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 519
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 520
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 524
    :cond_6
    :goto_4
    :try_start_a
    throw v8

    .line 522
    :catch_4
    move-exception v3

    .line 523
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    .line 517
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 513
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 538
    sget-boolean v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcCdmaModifier"

    const-string/jumbo v3, "overwriteCallerName"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    if-nez p0, :cond_3

    .line 543
    sget-boolean v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "HtcCdmaModifier"

    const-string/jumbo v3, "overwriteCallerName return null because number is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_1
    const/4 v1, 0x0

    .line 596
    :cond_2
    :goto_0
    return-object v1

    .line 547
    :cond_3
    const/4 v1, 0x0

    .line 551
    .local v1, "matchedName":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSprintChameleon()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 552
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 553
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 554
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 555
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v1, v2, v4

    .line 560
    goto :goto_0

    .line 552
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 569
    .end local v0    # "i":I
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mAdcMap:Ljava/util/Map;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mAdcMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 570
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mAdcMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "matchedName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "matchedName":Ljava/lang/String;
    goto :goto_0

    .line 572
    :cond_6
    sget-boolean v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "HtcCdmaModifier"

    const-string/jumbo v3, "overwriteCallerName not support"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
