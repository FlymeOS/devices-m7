.class public Lcom/sprint/net/cdma/Cdma2000Info;
.super Ljava/lang/Object;
.source "Cdma2000Info.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/cdma/Cdma2000Info$SrvState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/cdma/Cdma2000Info;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Cdma2000Info"


# instance fields
.field bIsDayLightSavingsSet:Z

.field mCellLocationInfo:[I

.field mDbm:F

.field mEcio:F

.field mErrRate:[I

.field mPnEnergy:F

.field mRfBandInfo:[I

.field mSysInfo:[I

.field mTimeZoneOffset:I

.field mTxRxInfo:[I

.field msid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    new-instance v0, Lcom/sprint/net/cdma/Cdma2000Info$1;

    invoke-direct {v0}, Lcom/sprint/net/cdma/Cdma2000Info$1;-><init>()V

    sput-object v0, Lcom/sprint/net/cdma/Cdma2000Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "Cdma2000Info"

    const-string v1, "++Cdma2000Info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getCellLocationInfo()V

    .line 97
    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getRfBandInfo()V

    .line 98
    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getErrRate()V

    .line 99
    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getTimeZoneDaylightSav()V

    .line 100
    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getSysInfo()V

    .line 101
    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getTxRxInfo()V

    .line 102
    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getSid()V

    .line 103
    const-string v0, "Cdma2000Info"

    const-string v1, "--Cdma2000Info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mPnEnergy:F

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mEcio:F

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mDbm:F

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTimeZoneOffset:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->bIsDayLightSavingsSet:Z

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->msid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_1
    return-void

    .line 380
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cdma2000Info: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/cdma/Cdma2000Info$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sprint/net/cdma/Cdma2000Info$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sprint/net/cdma/Cdma2000Info;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 415
    const-string v0, "Cdma2000Info"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method


# virtual methods
.method public LittleToBig(S)S
    .locals 2
    .param p1, "x"    # S

    .prologue
    .line 502
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method _getCellLocationInfo()V
    .locals 7

    .prologue
    .line 422
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 423
    .local v1, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_CELL_LOCATION_INFO:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 425
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 427
    .local v4, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    .line 428
    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    if-nez v5, :cond_0

    .line 430
    const-string v5, "_getCellLocationInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 431
    const/4 v5, 0x5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    .line 442
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 435
    .restart local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .restart local v2    # "methodName":Ljava/lang/String;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "resultBundle":Landroid/os/Bundle;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getCellLocationInfo: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getCellLocationInfo: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getErrRate()V
    .locals 7

    .prologue
    .line 509
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 510
    .local v1, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_ERROR_RATE:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 512
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 514
    .local v4, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    .line 515
    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    if-nez v5, :cond_0

    .line 517
    const-string v5, "_getErrRate: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 518
    const/4 v5, 0x5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    .line 529
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 522
    .restart local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .restart local v2    # "methodName":Ljava/lang/String;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "resultBundle":Landroid/os/Bundle;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getErrRate: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getErrRate: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getRfBandInfo()V
    .locals 7

    .prologue
    .line 448
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 449
    .local v1, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_RF_BAND_INFO:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 451
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string/jumbo v5, "radio_technology"

    sget-object v6, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_1xRTT:Lcom/sprint/net/HtcRadioTechnology;

    invoke-virtual {v6}, Lcom/sprint/net/HtcRadioTechnology;->ordinal()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 454
    .local v4, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    .line 455
    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    if-nez v5, :cond_0

    .line 457
    const-string v5, "_getRfBandInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 458
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    .line 469
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 462
    .restart local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .restart local v2    # "methodName":Ljava/lang/String;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "resultBundle":Landroid/os/Bundle;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getRfBandInfo: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getRfBandInfo: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getSid()V
    .locals 9

    .prologue
    .line 474
    const v7, 0x7fffffff

    :try_start_0
    iput v7, p0, Lcom/sprint/net/cdma/Cdma2000Info;->msid:I

    .line 475
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 476
    .local v1, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v7, Lcom/sprint/net/MethodEnum;->REQUEST_HTC_DM_CMD:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v7}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 478
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v7, "methodName"

    invoke-virtual {v3, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v7, "cmd"

    const-string v8, "0C"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v7, "RIL"

    invoke-virtual {v1, v7, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 482
    .local v5, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 483
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 485
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_getSid, reseult="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 486
    const/16 v7, 0x4e

    const/16 v8, 0x52

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 487
    .local v6, "sid":Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-short v7, v7

    invoke-virtual {p0, v7}, Lcom/sprint/net/cdma/Cdma2000Info;->LittleToBig(S)S

    move-result v7

    iput v7, p0, Lcom/sprint/net/cdma/Cdma2000Info;->msid:I

    .line 488
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sid string:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sprint/net/cdma/Cdma2000Info;->msid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 499
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "resultBundle":Landroid/os/Bundle;
    .end local v6    # "sid":Ljava/lang/String;
    :goto_0
    return-void

    .line 492
    .restart local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .restart local v2    # "methodName":Ljava/lang/String;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v5    # "resultBundle":Landroid/os/Bundle;
    :cond_0
    const-string v7, "_getSid, result is null"

    invoke-direct {p0, v7}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_getSid: e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getSysInfo()V
    .locals 7

    .prologue
    .line 550
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 551
    .local v1, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_SYS_INFO:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 553
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string/jumbo v5, "radio_technology"

    sget-object v6, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_1xRTT:Lcom/sprint/net/HtcRadioTechnology;

    invoke-virtual {v6}, Lcom/sprint/net/HtcRadioTechnology;->ordinal()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 556
    .local v4, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    .line 557
    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    if-nez v5, :cond_0

    .line 559
    const-string v5, "_getSysInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 560
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    .line 561
    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 572
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 565
    .restart local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .restart local v2    # "methodName":Ljava/lang/String;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "resultBundle":Landroid/os/Bundle;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getSysInfo: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getSysInfo: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getTimeZoneDaylightSav()V
    .locals 5

    .prologue
    .line 535
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 536
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0xea60

    div-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    iput v3, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTimeZoneOffset:I

    .line 537
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 538
    .local v2, "tzone":Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sprint/net/cdma/Cdma2000Info;->bIsDayLightSavingsSet:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "tzone":Ljava/util/TimeZone;
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_getTimeZoneDaylightSav: e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getTxRxInfo()V
    .locals 7

    .prologue
    .line 578
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 579
    .local v1, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_TX_RX_INFO:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 581
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string/jumbo v5, "radio_technology"

    sget-object v6, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_1xRTT:Lcom/sprint/net/HtcRadioTechnology;

    invoke-virtual {v6}, Lcom/sprint/net/HtcRadioTechnology;->ordinal()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 583
    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 584
    .local v4, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    .line 585
    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    if-nez v5, :cond_0

    .line 587
    const-string v5, "_getTxRxInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 588
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    .line 589
    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 600
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 593
    .restart local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .restart local v2    # "methodName":Ljava/lang/String;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "resultBundle":Landroid/os/Bundle;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getTxRxInfo: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getTxRxInfo: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveSet()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/cdma/ActiveSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const-string v0, "Cdma2000Info"

    const-string v1, "getActiveSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBandClass()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBandClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getBaseStationID()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 129
    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBaseStationID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getChannel()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 138
    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getFrameError()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrameError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    aget v0, v0, v3

    return v0
.end method

.method public getLatitude()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 159
    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLatitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getLongitude()I
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 168
    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLongitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getNeighborSet()[I
    .locals 2

    .prologue
    .line 177
    const-string v0, "Cdma2000Info"

    const-string v1, "getNeighborSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNid()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getPn()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 195
    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getPnEnergy()F
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mPnEnergy:F

    return v0
.end method

.method public getProtocolRevision()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 223
    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProtocolRevision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getReceiveEcIo()F
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mEcio:F

    return v0
.end method

.method public getReceivePower()F
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mDbm:F

    return v0
.end method

.method public getServiceOption()I
    .locals 2

    .prologue
    .line 274
    const-string v0, "Cdma2000Info"

    const-string v1, "getServiceOption"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const v0, 0x7fffffff

    return v0
.end method

.method public getSid()I
    .locals 2

    .prologue
    .line 283
    const-string v0, "Cdma2000Info"

    const-string v1, "getSid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->msid:I

    return v0
.end method

.method public getState()Lcom/sprint/net/cdma/CdmaState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "state":Lcom/sprint/net/cdma/CdmaState;
    iget-object v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    aget v1, v1, v3

    sget-object v2, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->SYS_SRV_STATUS_PWR_SAVE:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    invoke-virtual {v2}, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 295
    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    .end local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->POWERSAVE:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Lcom/sprint/net/cdma/CdmaState$State;)V

    .line 311
    .restart local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    :goto_0
    const-string v1, "Cdma2000Info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-object v0

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 308
    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    .end local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->SEARCHING:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Lcom/sprint/net/cdma/CdmaState$State;)V

    .restart local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    goto :goto_0

    .line 302
    :pswitch_0
    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    .end local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->TRAFFIC:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Lcom/sprint/net/cdma/CdmaState$State;)V

    .line 303
    .restart local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    goto :goto_0

    .line 305
    :pswitch_1
    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    .end local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->IDLE:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Lcom/sprint/net/cdma/CdmaState$State;)V

    .line 306
    .restart local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTimeZoneOffset()I
    .locals 3

    .prologue
    .line 321
    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeZoneOffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTimeZoneOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTimeZoneOffset:I

    return v0
.end method

.method public isDayLightSavingsSet()Z
    .locals 3

    .prologue
    .line 335
    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDayLightSavingsSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->bIsDayLightSavingsSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-boolean v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->bIsDayLightSavingsSet:Z

    return v0
.end method

.method public setPnEnergy(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 215
    iput p1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mPnEnergy:F

    .line 216
    return-void
.end method

.method public setReceiveEcIo(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 256
    iput p1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mEcio:F

    .line 257
    return-void
.end method

.method public setReceivePower(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 266
    iput p1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mDbm:F

    .line 267
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 349
    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 350
    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 351
    iget v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mPnEnergy:F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 352
    iget v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mEcio:F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 353
    iget v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mDbm:F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 354
    iget v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTimeZoneOffset:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-boolean v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->bIsDayLightSavingsSet:Z

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget-object v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 357
    iget-object v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 358
    iget v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->msid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_1
    return-void

    .line 355
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeToParcel: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
