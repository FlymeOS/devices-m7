.class public Lcom/htc/camera/manualcapture/HTCManualModeInterface;
.super Lcom/htc/camera/manualcapture/BaseManualModeInterface;
.source "HTCManualModeInterface.java"


# instance fields
.field private final EXPOSURE_COMPS:[F

.field private m_ExposureLength:F

.field private m_ExposureRange:Lcom/htc/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_SceneController:Lcom/htc/camera/effect/ac;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 1

    .prologue
    .line 54
    const-string v0, "HTC Manual Mode Interface"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;-><init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;)V

    .line 46
    const/16 v0, 0xd

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->EXPOSURE_COMPS:[F

    .line 55
    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        -0x40000000    # -2.0f
        -0x40266666    # -1.7f
        -0x4059999a    # -1.3f
        -0x40800000    # -1.0f
        -0x40cccccd    # -0.7f
        -0x41666666    # -0.3f
        0x0
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
        0x3fd9999a    # 1.7f
        0x40000000    # 2.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/camera/manualcapture/HTCManualModeInterface;)Lcom/htc/camera/effect/ac;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_SceneController:Lcom/htc/camera/effect/ac;

    return-object v0
.end method

.method private exposureValueMappingToDriver(D)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 118
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_ExposureRange:Lcom/htc/camera/Range;

    if-nez v0, :cond_0

    .line 120
    const-string v0, "exp-comp-min"

    const/16 v1, -0xc

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getCameraParameter(Ljava/lang/String;I)I

    move-result v0

    .line 121
    const-string v1, "exp-comp-max"

    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getCameraParameter(Ljava/lang/String;I)I

    move-result v1

    .line 122
    new-instance v2, Lcom/htc/camera/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_ExposureRange:Lcom/htc/camera/Range;

    .line 123
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_ExposureRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_ExposureRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_ExposureLength:F

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_ExposureRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->EXPOSURE_COMPS:[F

    aget v2, v2, v6

    float-to-double v2, v2

    sub-double/2addr v2, p1

    iget v4, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_ExposureLength:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->EXPOSURE_COMPS:[F

    iget-object v5, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->EXPOSURE_COMPS:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->EXPOSURE_COMPS:[F

    aget v5, v5, v6

    sub-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getCameraParameter(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->threadAccessCheck()V

    .line 133
    if-nez p1, :cond_0

    .line 158
    :goto_0
    return p2

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 137
    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->TAG:Ljava/lang/String;

    const-string v1, "getCameraParameter() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    :try_start_0
    const-string v1, "exp-comp-max"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getMaxExposureCompensation()I

    move-result v0

    :goto_1
    move p2, v0

    .line 153
    goto :goto_0

    .line 148
    :cond_2
    const-string v1, "exp-comp-min"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getMinExposureCompensation()I

    move-result v0

    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 157
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraParameter() - Fail to get \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', use default value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCameraParameter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    return-void
.end method

.method private setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 302
    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->TAG:Ljava/lang/String;

    const-string v1, "setCameraParameter() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    if-eqz p1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->TAG:Ljava/lang/String;

    const-string v2, "setCameraParameter() - Key: "

    const-string v3, ", value: "

    invoke-static {v1, v2, p1, v3, p2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    const-string v1, "white-balance"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    invoke-virtual {v0, p2}, Lcom/htc/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    .line 320
    :cond_2
    :goto_1
    if-eqz p3, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0

    .line 314
    :cond_3
    const-string v1, "exp-comp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 315
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setExposureCompensation(I)V

    goto :goto_1

    .line 317
    :cond_4
    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected applyCameraParameters()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter()V

    .line 61
    return-void
.end method

.method protected applyColorTemp(Lcom/htc/camera/Rational;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 66
    if-eqz p1, :cond_0

    .line 68
    const-string v0, "wb-ct"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/htc/camera/Rational;->toInteger()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v5}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    const-string v0, "white-balance"

    const-string v1, "auto"

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v0, "wb-ct"

    const-string v1, "-1"

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected applyExposureComp(Lcom/htc/camera/Rational;Z)V
    .locals 6

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/htc/camera/Rational;->toDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->exposureValueMappingToDriver(D)I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->TAG:Ljava/lang/String;

    const-string v2, "applyExposureComp() - value: "

    invoke-virtual {p1}, Lcom/htc/camera/Rational;->toDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, ", driverValue: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    const-string v1, "exp-comp"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "exp-comp"

    const-string v1, "0"

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected applyFocusStep(Lcom/htc/camera/Rational;Z)V
    .locals 6

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    const-string v0, "focus"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/htc/camera/Rational;->toInteger()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v0, "focus"

    const-string v1, "-1"

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected applyISOSpeed(Lcom/htc/camera/Rational;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 100
    if-eqz p1, :cond_0

    .line 101
    const-string v0, "iso-st"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/htc/camera/Rational;->toInteger()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v5}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    :goto_0
    const-string v0, "iso"

    const-string v1, "auto"

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    return-void

    .line 103
    :cond_0
    const-string v0, "iso-st"

    const-string v1, "-1"

    invoke-direct {p0, v0, v1, v5}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected applyShutterSpeed(Lcom/htc/camera/Rational;Z)V
    .locals 7

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    const-string v0, "shutter"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%01.8f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/htc/camera/Rational;->toDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v0, "shutter"

    const-string v1, "-1"

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected getSupportedColorTemps()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->threadAccessCheck()V

    .line 169
    const-string v0, "max-wb-ct"

    const/16 v1, 0x1d4c

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getCameraParameter(Ljava/lang/String;I)I

    move-result v1

    .line 170
    const-string v0, "min-wb-ct"

    const/16 v2, 0x8fc

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getCameraParameter(Ljava/lang/String;I)I

    move-result v0

    .line 171
    const-string v2, "wb-ct-step"

    const/16 v3, 0xa

    invoke-direct {p0, v2, v3}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getCameraParameter(Ljava/lang/String;I)I

    move-result v2

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 175
    :goto_0
    if-gt v0, v1, :cond_0

    .line 176
    new-instance v4, Lcom/htc/camera/Rational;

    int-to-double v5, v0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/htc/camera/Rational;-><init>(DD)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/2addr v0, v2

    goto :goto_0

    .line 178
    :cond_0
    return-object v3
.end method

.method protected getSupportedExposureComps()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->threadAccessCheck()V

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    iget-object v2, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->EXPOSURE_COMPS:[F

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 190
    new-instance v5, Lcom/htc/camera/Rational;

    float-to-double v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/htc/camera/Rational;-><init>(DD)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-object v1
.end method

.method protected getSupportedFocusSteps()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->threadAccessCheck()V

    .line 202
    const-string v0, "max-focus"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getCameraParameter(Ljava/lang/String;I)I

    move-result v1

    .line 203
    const-string v0, "min-focus"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getCameraParameter(Ljava/lang/String;I)I

    move-result v0

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    :goto_0
    if-gt v0, v1, :cond_0

    .line 208
    new-instance v3, Lcom/htc/camera/Rational;

    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/htc/camera/Rational;-><init>(DD)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    return-object v2
.end method

.method protected getSupportedISOSpeeds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->threadAccessCheck()V

    .line 220
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-static {v0}, Lcom/htc/camera/CameraConfigFileReader;->getSupportedIsoRawValues(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    invoke-static {v0}, Lcom/htc/camera/Rational;->parseRational(Ljava/lang/String;)Lcom/htc/camera/Rational;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_0
    return-object v1
.end method

.method protected getSupportedShutterSpeeds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->threadAccessCheck()V

    .line 237
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-static {v0}, Lcom/htc/camera/CameraConfigFileReader;->getSupportedShutterSpeedValues(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    invoke-static {v0}, Lcom/htc/camera/Rational;->parseRational(Ljava/lang/String;)Lcom/htc/camera/Rational;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_0
    return-object v1
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->initializeOverride()V

    .line 252
    const-class v0, Lcom/htc/camera/effect/ac;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_SceneController:Lcom/htc/camera/effect/ac;

    .line 253
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No ISceneController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/manualcapture/HTCManualModeInterface$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface$1;-><init>(Lcom/htc/camera/manualcapture/HTCManualModeInterface;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 268
    return-void
.end method

.method protected onDisableManualMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 273
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_SceneController:Lcom/htc/camera/effect/ac;

    const-string v1, "auto"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    .line 276
    :cond_0
    invoke-virtual {p0, v4, v3}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->applyColorTemp(Lcom/htc/camera/Rational;Z)V

    .line 277
    invoke-virtual {p0, v4, v3}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->applyExposureComp(Lcom/htc/camera/Rational;Z)V

    .line 278
    invoke-virtual {p0, v4, v3}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->applyFocusStep(Lcom/htc/camera/Rational;Z)V

    .line 279
    invoke-virtual {p0, v4, v3}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->applyISOSpeed(Lcom/htc/camera/Rational;Z)V

    .line 280
    invoke-virtual {p0, v4, v3}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->applyShutterSpeed(Lcom/htc/camera/Rational;Z)V

    .line 281
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->applyCameraParameters()V

    .line 282
    return-void
.end method

.method protected onEnableManualMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 287
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_SceneController:Lcom/htc/camera/effect/ac;

    const-string v1, "manual"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    .line 290
    :cond_0
    sget-object v0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->PROPERTY_MANUAL_EXPOSURE_COMP:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    invoke-virtual {p0, v0, v3}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->applyExposureComp(Lcom/htc/camera/Rational;Z)V

    .line 291
    sget-object v0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->PROPERTY_MANUAL_ISO_SPEED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    invoke-virtual {p0, v0, v3}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->applyISOSpeed(Lcom/htc/camera/Rational;Z)V

    .line 292
    return-void
.end method
