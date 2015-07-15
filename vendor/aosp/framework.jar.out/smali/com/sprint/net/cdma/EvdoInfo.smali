.class public Lcom/sprint/net/cdma/EvdoInfo;
.super Ljava/lang/Object;
.source "EvdoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/cdma/EvdoInfo$AuthState;,
        Lcom/sprint/net/cdma/EvdoInfo$SrvState;,
        Lcom/sprint/net/cdma/EvdoInfo$AaaStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/cdma/EvdoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EvdoInfo"


# instance fields
.field mAuthState:[I

.field mCellLocationInfo:[I

.field mColorCode:[I

.field mContext:Landroid/content/Context;

.field mDbm:F

.field mEcio:F

.field mErrRate:[I

.field mPnEnergy:F

.field mRfBandInfo:[I

.field mSectorId:[I

.field mSinr:F

.field mSysInfo:[I

.field mTxRxInfo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo$1;

    invoke-direct {v0}, Lcom/sprint/net/cdma/EvdoInfo$1;-><init>()V

    sput-object v0, Lcom/sprint/net/cdma/EvdoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, "EvdoInfo"

    const-string v1, "++EvdoInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getCellLocationInfo()V

    .line 112
    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getRfBandInfo()V

    .line 113
    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getErrRate()V

    .line 114
    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getColorCode()V

    .line 115
    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getSysInfo()V

    .line 116
    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getTxRxInfo()V

    .line 117
    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getAuthState()V

    .line 118
    const-string v0, "EvdoInfo"

    const-string v1, "--EvdoInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mPnEnergy:F

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mEcio:F

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mDbm:F

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSinr:F

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EvdoInfo: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/cdma/EvdoInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sprint/net/cdma/EvdoInfo$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sprint/net/cdma/EvdoInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 639
    const-string v0, "EvdoInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method


# virtual methods
.method _getAuthState()V
    .locals 7

    .prologue
    .line 597
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 598
    .local v1, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_AUTH_STATE:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 600
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 602
    .local v4, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I

    .line 603
    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I

    if-nez v5, :cond_0

    .line 605
    const-string v5, "_getTxRxInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 606
    const/4 v5, 0x1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I

    .line 618
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 610
    .restart local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .restart local v2    # "methodName":Ljava/lang/String;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "resultBundle":Landroid/os/Bundle;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getAuthState: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getAuthState: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getCellLocationInfo()V
    .locals 7

    .prologue
    .line 438
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 439
    .local v1, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_CELL_LOCATION_INFO:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 441
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 443
    .local v4, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    .line 444
    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    if-nez v5, :cond_0

    .line 446
    const-string v5, "_getCellLocationInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 447
    const/4 v5, 0x5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    .line 458
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 451
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

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 455
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

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getColorCode()V
    .locals 7

    .prologue
    .line 464
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 465
    .local v1, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_COLOR_CODE:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 467
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 469
    .local v4, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    .line 470
    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    if-nez v5, :cond_0

    .line 472
    const-string v5, "_getColorCode: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 473
    const/4 v5, 0x1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    .line 484
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 477
    .restart local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .restart local v2    # "methodName":Ljava/lang/String;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "resultBundle":Landroid/os/Bundle;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getColorCode: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getColorCode: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getErrRate()V
    .locals 7

    .prologue
    .line 489
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 490
    .local v1, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_ERROR_RATE:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 492
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 494
    .local v4, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    .line 495
    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    if-nez v5, :cond_0

    .line 497
    const-string v5, "_getErrRate: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 498
    const/4 v5, 0x5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    .line 509
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 502
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

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 506
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

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getRfBandInfo()V
    .locals 7

    .prologue
    .line 514
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 515
    .local v1, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_RF_BAND_INFO:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 517
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string/jumbo v5, "radio_technology"

    sget-object v6, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EVDO_A:Lcom/sprint/net/HtcRadioTechnology;

    invoke-virtual {v6}, Lcom/sprint/net/HtcRadioTechnology;->ordinal()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 520
    .local v4, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    .line 521
    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    if-nez v5, :cond_0

    .line 523
    const-string v5, "_getRfBandInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 524
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    .line 535
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 528
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

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 532
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

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getSysInfo()V
    .locals 7

    .prologue
    .line 541
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 542
    .local v1, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_SYS_INFO:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 544
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string/jumbo v5, "radio_technology"

    sget-object v6, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EVDO_A:Lcom/sprint/net/HtcRadioTechnology;

    invoke-virtual {v6}, Lcom/sprint/net/HtcRadioTechnology;->ordinal()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 546
    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 547
    .local v4, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    .line 548
    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    if-nez v5, :cond_0

    .line 550
    const-string v5, "_getSysInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 551
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    .line 552
    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 563
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 556
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

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 560
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

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getTxRxInfo()V
    .locals 7

    .prologue
    .line 569
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 570
    .local v1, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_TX_RX_INFO:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 572
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string/jumbo v5, "radio_technology"

    sget-object v6, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EVDO_A:Lcom/sprint/net/HtcRadioTechnology;

    invoke-virtual {v6}, Lcom/sprint/net/HtcRadioTechnology;->ordinal()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 575
    .local v4, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    .line 576
    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    if-nez v5, :cond_0

    .line 578
    const-string v5, "_getTxRxInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 579
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    .line 580
    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 591
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 584
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

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    .end local v1    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 588
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

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 396
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
    .line 136
    const-string v0, "EvdoInfo"

    const-string v1, "getActiveSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthState()Lcom/sprint/net/cdma/EvdoInfo$AuthState;
    .locals 2

    .prologue
    .line 146
    const-string v0, "EvdoInfo"

    const-string v1, "getAuthState "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/sprint/net/cdma/EvdoInfo$AaaStatus;->AAA_STATUS_SUCCESS:Lcom/sprint/net/cdma/EvdoInfo$AaaStatus;

    invoke-virtual {v1}, Lcom/sprint/net/cdma/EvdoInfo$AaaStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 149
    sget-object v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->PASSED:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    .line 153
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->FAILED:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    goto :goto_0
.end method

.method public getBandClass()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBandClass "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getChannel()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 171
    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getColorCode()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getColorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    aget v0, v0, v3

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMacIndex()I
    .locals 2

    .prologue
    .line 191
    const-string v0, "EvdoInfo"

    const-string v1, "getMacIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const v0, 0x7fffffff

    return v0
.end method

.method public getNeighborSet()[I
    .locals 2

    .prologue
    .line 201
    const-string v0, "EvdoInfo"

    const-string v1, "getNeighborSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPacketError()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 213
    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPacketError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    aget v0, v0, v3

    return v0
.end method

.method public getPn()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 222
    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getPnEnergy()F
    .locals 3

    .prologue
    .line 232
    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPnEnergy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mPnEnergy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mPnEnergy:F

    return v0
.end method

.method public getReceivePower()F
    .locals 3

    .prologue
    .line 245
    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReceivePower "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mDbm:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mDbm:F

    return v0
.end method

.method public getRequestedDrc()I
    .locals 2

    .prologue
    .line 255
    const-string v0, "EvdoInfo"

    const-string v1, "getRequestedDrc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const v0, 0x7fffffff

    return v0
.end method

.method public getRlpNakAborts()I
    .locals 2

    .prologue
    .line 265
    const-string v0, "EvdoInfo"

    const-string v1, "getRlpNakAborts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const v0, 0x7fffffff

    return v0
.end method

.method public getRlpRetransRate()I
    .locals 2

    .prologue
    .line 275
    const-string v0, "EvdoInfo"

    const-string v1, "getRlpRetransRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const v0, 0x7fffffff

    return v0
.end method

.method public getSectorId()[I
    .locals 2

    .prologue
    .line 287
    const-string v0, "EvdoInfo"

    const-string v1, "getSectorId"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSectorIdSubnetMask()I
    .locals 2

    .prologue
    .line 298
    const-string v0, "EvdoInfo"

    const-string v1, "getSectorIdSubnetMask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const v0, 0x7fffffff

    return v0
.end method

.method public getSinr()F
    .locals 3

    .prologue
    .line 309
    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSinr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSinr:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSinr:F

    return v0
.end method

.method public getState()Lcom/sprint/net/cdma/CdmaState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "state":Lcom/sprint/net/cdma/CdmaState;
    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    aget v1, v1, v3

    sget-object v2, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->SYS_SRV_STATUS_PWR_SAVE:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    invoke-virtual {v2}, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 321
    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    .end local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->POWERSAVE:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Lcom/sprint/net/cdma/CdmaState$State;)V

    .line 337
    .restart local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    :goto_0
    const-string v1, "EvdoInfo"

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

    .line 339
    return-object v0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 334
    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    .end local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->SEARCHING:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Lcom/sprint/net/cdma/CdmaState$State;)V

    .restart local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    goto :goto_0

    .line 328
    :pswitch_0
    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    .end local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->TRAFFIC:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Lcom/sprint/net/cdma/CdmaState$State;)V

    .line 329
    .restart local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    goto :goto_0

    .line 331
    :pswitch_1
    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    .end local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->IDLE:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Lcom/sprint/net/cdma/CdmaState$State;)V

    .line 332
    .restart local v0    # "state":Lcom/sprint/net/cdma/CdmaState;
    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPnEnergy(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 418
    iput p1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mPnEnergy:F

    return-void
.end method

.method public setReceivePower(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 425
    iput p1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mDbm:F

    return-void
.end method

.method public setSinr(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 432
    iput p1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSinr:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 351
    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 352
    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 353
    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 354
    iget v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mPnEnergy:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 355
    iget v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mEcio:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 356
    iget v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mDbm:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 357
    iget v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSinr:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 358
    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 359
    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 360
    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 363
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

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
