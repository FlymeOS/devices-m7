.class public Lcom/htc/camera/manualcapture/ManualCaptureController;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ManualCaptureController.java"

# interfaces
.implements Lcom/htc/camera/manualcapture/IManualCaptureController;


# instance fields
.field private final EV_MARKER_VALUES:[F

.field private m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

.field private m_DisableCAFHandle:Lcom/htc/camera/Handle;

.field private m_EffectController:Lcom/htc/camera/effect/aa;

.field private m_FocusDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;"
        }
    .end annotation
.end field

.field private m_FocusRange:Lcom/htc/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsFlashLightEnabled:Z

.field private m_IsNonZSLManualMode:Ljava/lang/Boolean;

.field private m_LastExposureData:Lcom/htc/camera/manualcapture/MModeData;

.field private m_LastFocusData:Lcom/htc/camera/manualcapture/MModeData;

.field private m_LastISOData:Lcom/htc/camera/manualcapture/MModeData;

.field private m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

.field private m_LastWBData:Lcom/htc/camera/manualcapture/MModeData;

.field private m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

.field private m_SceneController:Lcom/htc/camera/effect/ac;

.field private m_ShutterThreshold:D

.field m_SupportedColorTemps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end field

.field m_SupportedExposureComps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end field

.field m_SupportedFocusSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end field

.field m_SupportedISOSpeeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end field

.field m_SupportedShutterSpeeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 95
    const-string v0, "Manual Capture Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->EV_MARKER_VALUES:[F

    .line 86
    iput-boolean v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_IsFlashLightEnabled:Z

    .line 96
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->disableMessageLogs()V

    .line 97
    return-void

    .line 76
    nop

    :array_0
    .array-data 4
        -0x40000000    # -2.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/manualcapture/ManualCaptureUI;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/manualcapture/ManualCaptureController;Lcom/htc/camera/component/Component;IZ)Z
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/manualcapture/MModeData;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/manualcapture/ManualCaptureController;)D
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ShutterThreshold:D

    return-wide v0
.end method

.method static synthetic access$400(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/CameraController;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/manualcapture/ManualCaptureController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/Range;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusRange:Lcom/htc/camera/Range;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/manualcapture/ManualCaptureController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/manualcapture/ManualCaptureController;Lcom/htc/camera/manualcapture/MModeData;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/camera/manualcapture/ManualCaptureController;->updateFocusValue(Lcom/htc/camera/manualcapture/MModeData;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/manualcapture/ManualCaptureController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 27
    invoke-virtual/range {p0 .. p6}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method private applyLastSettings()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastFocusData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->updateFocusValue(Lcom/htc/camera/manualcapture/MModeData;)V

    .line 105
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->updateShutterValue(Lcom/htc/camera/manualcapture/MModeData;)V

    .line 106
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastISOData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->updateISOValue(Lcom/htc/camera/manualcapture/MModeData;)V

    .line 107
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastExposureData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->updateExposureValue(Lcom/htc/camera/manualcapture/MModeData;)V

    .line 108
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastWBData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->updateWBValue(Lcom/htc/camera/manualcapture/MModeData;)V

    .line 109
    return-void
.end method

.method private checkExposureInfo()V
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 210
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedExposureComps:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_SUPPORTED_EXPOSURE_COMPS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedExposureComps:Ljava/util/List;

    .line 213
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedExposureComps:Ljava/util/List;

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "checkExposureInfo() - No supported exposure compensations"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedExposureComps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    .line 223
    invoke-virtual {v0}, Lcom/htc/camera/Rational;->clone()Lcom/htc/camera/Rational;

    move-result-object v7

    .line 224
    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toDouble()D

    move-result-wide v8

    double-to-float v3, v8

    .line 226
    iget-object v8, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->EV_MARKER_VALUES:[F

    array-length v9, v8

    move v1, v4

    :goto_2
    if-ge v1, v9, :cond_8

    aget v10, v8, v1

    .line 228
    cmpl-float v10, v10, v3

    if-nez v10, :cond_3

    move v1, v2

    .line 237
    :goto_3
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_4

    .line 238
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "%d"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toInteger()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v4

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_4
    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_7

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 245
    :goto_5
    if-eqz v1, :cond_5

    .line 246
    new-instance v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {v0, v7, v3, v2}, Lcom/htc/camera/manualcapture/MModeData;-><init>(Lcom/htc/camera/Rational;Ljava/lang/String;Z)V

    .line 250
    :goto_6
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 240
    :cond_4
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "%.1f"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toDouble()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v10, v4

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 248
    :cond_5
    new-instance v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {v0, v7, v3, v4}, Lcom/htc/camera/manualcapture/MModeData;-><init>(Lcom/htc/camera/Rational;Ljava/lang/String;Z)V

    goto :goto_6

    .line 252
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 253
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    if-eqz v0, :cond_0

    if-lez v3, :cond_0

    .line 254
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    const/16 v2, 0x3eb

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    move-object v3, v0

    goto :goto_5

    :cond_8
    move v1, v4

    goto/16 :goto_3
.end method

.method private checkFocusInfo()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 117
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedFocusSteps:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_SUPPORTED_FOCUS_STEPS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedFocusSteps:Ljava/util/List;

    .line 120
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedFocusSteps:Ljava/util/List;

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "checkFocusInfo() - No supported focus step"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    new-instance v1, Lcom/htc/camera/Range;

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedFocusSteps:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toInteger()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedFocusSteps:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedFocusSteps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toInteger()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusRange:Lcom/htc/camera/Range;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusDatas:Ljava/util/List;

    .line 129
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedFocusSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    .line 131
    new-instance v2, Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/Rational;->clone()Lcom/htc/camera/Rational;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/htc/camera/manualcapture/MModeData;-><init>(Lcom/htc/camera/Rational;)V

    .line 132
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusDatas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedFocusSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    const/16 v2, 0x3e8

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedFocusSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusDatas:Ljava/util/List;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private checkISOInfo()V
    .locals 6

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedISOSpeeds:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_SUPPORTED_ISO_SPEEDS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedISOSpeeds:Ljava/util/List;

    .line 188
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedISOSpeeds:Ljava/util/List;

    if-nez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "checkISOInfo() - No supported ISO speed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedISOSpeeds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    .line 198
    invoke-virtual {v0}, Lcom/htc/camera/Rational;->clone()Lcom/htc/camera/Rational;

    move-result-object v2

    .line 199
    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v3, Lcom/htc/camera/manualcapture/MModeData;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v0, v4}, Lcom/htc/camera/manualcapture/MModeData;-><init>(Lcom/htc/camera/Rational;Ljava/lang/String;Z)V

    .line 201
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 204
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    if-eqz v0, :cond_0

    if-lez v3, :cond_0

    .line 205
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    const/16 v2, 0x3ea

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkShutterInfo()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedShutterSpeeds:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_SUPPORTED_SHUTTER_SPEEDS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedShutterSpeeds:Ljava/util/List;

    .line 143
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-static {v0}, Lcom/htc/camera/CameraConfigFileReader;->getSupportedShutterSpeedMarkerValues(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 144
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedShutterSpeeds:Ljava/util/List;

    if-nez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "checkShutterInfo() - No supported shutter speed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedShutterSpeeds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    .line 154
    invoke-virtual {v0}, Lcom/htc/camera/Rational;->clone()Lcom/htc/camera/Rational;

    move-result-object v3

    .line 155
    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toString()Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    new-instance v0, Lcom/htc/camera/manualcapture/MModeData;

    const/4 v7, 0x1

    invoke-direct {v0, v3, v6, v7}, Lcom/htc/camera/manualcapture/MModeData;-><init>(Lcom/htc/camera/Rational;Ljava/lang/String;Z)V

    .line 161
    :goto_2
    invoke-interface {v5, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 160
    :cond_3
    new-instance v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {v0, v3}, Lcom/htc/camera/manualcapture/MModeData;-><init>(Lcom/htc/camera/Rational;)V

    goto :goto_2

    .line 163
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 164
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    if-eqz v0, :cond_5

    if-lez v3, :cond_5

    .line 165
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    const/16 v2, 0x3e9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 168
    :cond_5
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getManualShutterNonZSLThreshold()Ljava/lang/String;

    move-result-object v1

    .line 171
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ShutterThreshold:D

    .line 172
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "checkShutterInfo() - Shutter non-ZSL threshold: "

    iget-wide v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ShutterThreshold:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_3
    iget-wide v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ShutterThreshold:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 180
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    const/16 v3, 0x3f7

    iget-wide v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ShutterThreshold:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 176
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkShutterInfo() - Cannot parse threshold: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ShutterThreshold:D

    goto :goto_3
.end method

.method private checkWBInfo()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 259
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedColorTemps:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_SUPPORTED_COLOR_TEMPS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedColorTemps:Ljava/util/List;

    .line 262
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedColorTemps:Ljava/util/List;

    if-nez v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "checkWBInfo() - No supported color temperatures"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedColorTemps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 270
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 271
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedColorTemps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    .line 273
    invoke-virtual {v0}, Lcom/htc/camera/Rational;->clone()Lcom/htc/camera/Rational;

    move-result-object v2

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "K"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 279
    iget-object v7, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedColorTemps:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SupportedColorTemps:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 280
    :cond_3
    new-instance v0, Lcom/htc/camera/manualcapture/MModeData;

    const/4 v7, 0x1

    invoke-direct {v0, v2, v6, v7}, Lcom/htc/camera/manualcapture/MModeData;-><init>(Lcom/htc/camera/Rational;Ljava/lang/String;Z)V

    .line 284
    :goto_2
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    :cond_4
    new-instance v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {v0, v2, v6, v4}, Lcom/htc/camera/manualcapture/MModeData;-><init>(Lcom/htc/camera/Rational;Ljava/lang/String;Z)V

    goto :goto_2

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    if-eqz v0, :cond_0

    if-lez v3, :cond_0

    .line 287
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    const/16 v2, 0x3ec

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private enter(I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 311
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "enter()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 315
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->linkToComponents()V

    .line 318
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_EffectController:Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/effect/aa;->setColorEffect(Ljava/lang/String;Z)V

    .line 321
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_EffectController:Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, v2}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    invoke-interface {v0, v3}, Lcom/htc/camera/manualcapture/IManualModeInterface;->enableManualMode(I)Z

    .line 326
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->checkFocusInfo()V

    .line 327
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->checkShutterInfo()V

    .line 328
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->checkISOInfo()V

    .line 329
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->checkExposureInfo()V

    .line 330
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->checkWBInfo()V

    .line 331
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->applyLastSettings()V

    .line 334
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    const/16 v2, 0x3fd

    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->isNonZSLManualMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 335
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    const/16 v1, 0x40b

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 336
    return-void
.end method

.method private exit(I)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 340
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "exit()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureController;->PROPERTY_IS_MANUAL_FOCUS:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 347
    const/16 v2, 0x3fc

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 349
    iput-boolean v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_IsFlashLightEnabled:Z

    .line 351
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    invoke-interface {v0, v4}, Lcom/htc/camera/manualcapture/IManualModeInterface;->disableManualMode(I)V

    .line 352
    return-void
.end method

.method private getManualShutterNonZSLThreshold()Ljava/lang/String;
    .locals 3

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 677
    if-nez v1, :cond_0

    .line 679
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "getManualShutterNonZSLThreshold() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v0, ""

    .line 694
    :goto_0
    return-object v0

    .line 684
    :cond_0
    const-string v0, "0.2"

    .line 687
    :try_start_0
    const-string v2, "shutter-threshold"

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 689
    :catch_0
    move-exception v1

    .line 691
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "getManualShutterNonZSLThreshold() - Cannot get manual shutter non-ZSL threshold"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNonZSLManualMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 642
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_IsNonZSLManualMode:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 644
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 646
    if-nez v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "isNonZSLManualMode() - No camera controller"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :goto_0
    return v0

    .line 655
    :cond_0
    :try_start_0
    const-string v2, "non-zsl-manual-mode"

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    if-eqz v1, :cond_2

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 657
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_IsNonZSLManualMode:Ljava/lang/Boolean;

    .line 661
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "isNonZSLManualMode() - "

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_IsNonZSLManualMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "True"

    :goto_2
    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_IsNonZSLManualMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 659
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_IsNonZSLManualMode:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 663
    :catch_0
    move-exception v1

    .line 665
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "isNonZSLManualMode() - Cannot check zsl"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_IsNonZSLManualMode:Ljava/lang/Boolean;

    goto :goto_3

    .line 661
    :cond_3
    :try_start_2
    const-string v1, "False"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private linkToComponents()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-nez v0, :cond_0

    .line 484
    const-class v0, Lcom/htc/camera/effect/aa;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/aa;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_EffectController:Lcom/htc/camera/effect/aa;

    .line 485
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find IEffectController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-nez v0, :cond_1

    .line 492
    const-class v0, Lcom/htc/camera/effect/ac;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SceneController:Lcom/htc/camera/effect/ac;

    .line 493
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-nez v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find ISceneController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_1
    return-void
.end method

.method private setCAFEnabled(Z)V
    .locals 2

    .prologue
    .line 292
    if-eqz p1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_DisableCAFHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_DisableCAFHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IAutoFocusController;->enableContinuousAutoFocus(Lcom/htc/camera/Handle;)V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_DisableCAFHandle:Lcom/htc/camera/Handle;

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_DisableCAFHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/IAutoFocusController;->disableContinuousAutoFocus()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_DisableCAFHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private updateExposureValue(Lcom/htc/camera/manualcapture/MModeData;)V
    .locals 4

    .prologue
    .line 596
    if-nez p1, :cond_0

    .line 615
    :goto_0
    return-void

    .line 598
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastExposureData:Lcom/htc/camera/manualcapture/MModeData;

    .line 601
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 602
    if-nez v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "updateExposureValue() - Cannot get camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "updateExposureValue() - set exposure:"

    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastExposureData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v2}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 611
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastExposureData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_EXPOSURE_COMP:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/manualcapture/IManualModeInterface;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_EXPOSURE_COMP:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastExposureData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v2}, Lcom/htc/camera/manualcapture/MModeData;->getValue()Lcom/htc/camera/Rational;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/manualcapture/IManualModeInterface;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateFocusValue(Lcom/htc/camera/manualcapture/MModeData;)V
    .locals 4

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 529
    :goto_0
    return-void

    .line 505
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastFocusData:Lcom/htc/camera/manualcapture/MModeData;

    .line 508
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 509
    if-nez v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "updateFocusValue() - Cannot get camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastFocusData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toInteger()I

    move-result v0

    .line 516
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "updateFocusValue() - set focus:"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 519
    const/4 v1, -0x1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ShutterThreshold:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    .line 520
    :cond_2
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureController;->PROPERTY_IS_MANUAL_FOCUS:Lcom/htc/camera/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 525
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastFocusData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isAuto()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 526
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_FOCUS_STEP:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/manualcapture/IManualModeInterface;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_3
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureController;->PROPERTY_IS_MANUAL_FOCUS:Lcom/htc/camera/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 528
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_FOCUS_STEP:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastFocusData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v2}, Lcom/htc/camera/manualcapture/MModeData;->getValue()Lcom/htc/camera/Rational;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/manualcapture/IManualModeInterface;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateISOValue(Lcom/htc/camera/manualcapture/MModeData;)V
    .locals 3

    .prologue
    .line 573
    if-nez p1, :cond_0

    .line 593
    :goto_0
    return-void

    .line 575
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastISOData:Lcom/htc/camera/manualcapture/MModeData;

    .line 578
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 579
    if-nez v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "updateISOValue() - Cannot get camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastISOData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toInteger()I

    move-result v0

    .line 586
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "updateISOValue() - set ISO:"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastISOData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isAuto()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_ISO_SPEED:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/manualcapture/IManualModeInterface;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_ISO_SPEED:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastISOData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v2}, Lcom/htc/camera/manualcapture/MModeData;->getValue()Lcom/htc/camera/Rational;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/manualcapture/IManualModeInterface;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateShutterValue(Lcom/htc/camera/manualcapture/MModeData;)V
    .locals 9

    .prologue
    .line 532
    if-nez p1, :cond_0

    .line 570
    :goto_0
    return-void

    .line 534
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

    .line 537
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 538
    if-nez v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "updateShutterValue() - Cannot get camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%01.8f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v4}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 545
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "updateShutterValue() - set shutter:"

    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

    const-string v3, " ("

    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ShutterThreshold:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    .line 549
    const/16 v2, 0x3fc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 554
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ShutterThreshold:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_IsFlashLightEnabled:Z

    if-eqz v0, :cond_4

    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_IsFlashLightEnabled:Z

    .line 557
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    const/16 v2, 0x401

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 566
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isAuto()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 567
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_SHUTTER_SPEED:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/manualcapture/IManualModeInterface;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 551
    :cond_3
    const/16 v2, 0x3fc

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_1

    .line 559
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ShutterThreshold:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_IsFlashLightEnabled:Z

    if-nez v0, :cond_2

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_IsFlashLightEnabled:Z

    .line 562
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    const/16 v2, 0x401

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_2

    .line 569
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_SHUTTER_SPEED:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v2}, Lcom/htc/camera/manualcapture/MModeData;->getValue()Lcom/htc/camera/Rational;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/manualcapture/IManualModeInterface;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private updateWBValue(Lcom/htc/camera/manualcapture/MModeData;)V
    .locals 3

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 638
    :goto_0
    return-void

    .line 620
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastWBData:Lcom/htc/camera/manualcapture/MModeData;

    .line 623
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 624
    if-nez v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "updateWBValue() - Cannot get camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastWBData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toInteger()I

    move-result v0

    .line 631
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "updateWBValue() - set white balance:"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastWBData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isAuto()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_COLOR_TEMP:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/manualcapture/IManualModeInterface;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_COLOR_TEMP:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastWBData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v2}, Lcom/htc/camera/manualcapture/MModeData;->getValue()Lcom/htc/camera/Rational;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/manualcapture/IManualModeInterface;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/16 v2, 0x3f2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 360
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 408
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 363
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->enter(I)V

    goto :goto_0

    .line 366
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->exit(I)V

    goto :goto_0

    .line 369
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/manualcapture/ManualCaptureUI;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    goto :goto_0

    .line 372
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->updateFocusValue(Lcom/htc/camera/manualcapture/MModeData;)V

    goto :goto_0

    .line 375
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->updateShutterValue(Lcom/htc/camera/manualcapture/MModeData;)V

    goto :goto_0

    .line 378
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->updateISOValue(Lcom/htc/camera/manualcapture/MModeData;)V

    goto :goto_0

    .line 381
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->updateExposureValue(Lcom/htc/camera/manualcapture/MModeData;)V

    goto :goto_0

    .line 384
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->updateWBValue(Lcom/htc/camera/manualcapture/MModeData;)V

    goto :goto_0

    .line 387
    :pswitch_9
    iput-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastFocusData:Lcom/htc/camera/manualcapture/MModeData;

    .line 388
    iput-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;

    .line 389
    iput-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastISOData:Lcom/htc/camera/manualcapture/MModeData;

    .line 390
    iput-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastExposureData:Lcom/htc/camera/manualcapture/MModeData;

    .line 391
    iput-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastWBData:Lcom/htc/camera/manualcapture/MModeData;

    goto :goto_0

    .line 394
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v6, :cond_1

    .line 396
    invoke-direct {p0, v6}, Lcom/htc/camera/manualcapture/ManualCaptureController;->setCAFEnabled(Z)V

    .line 397
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    const/4 v3, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 398
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureController;->PROPERTY_IS_MANUAL_FOCUS:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 402
    invoke-direct {p0, v4}, Lcom/htc/camera/manualcapture/ManualCaptureController;->setCAFEnabled(Z)V

    .line 403
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 404
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureController;->PROPERTY_IS_MANUAL_FOCUS:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 417
    const-class v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    .line 418
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Cannot find IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    const-class v0, Lcom/htc/camera/manualcapture/IManualModeInterface;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/IManualModeInterface;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    .line 421
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ManualModeInterface:Lcom/htc/camera/manualcapture/IManualModeInterface;

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Cannot find IManualModeInterface interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/manualcapture/ManualCaptureController$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/manualcapture/ManualCaptureController$1;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 436
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/manualcapture/ManualCaptureController$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/manualcapture/ManualCaptureController$2;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 477
    :cond_2
    return-void
.end method
