.class public abstract Lcom/htc/camera/effect/ColorEffectBase;
.super Lcom/htc/camera/effect/EffectBase;
.source "ColorEffectBase.java"


# static fields
.field private static m_FrontCameraEffectSupportedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_MainCameraEffectSupportedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_ColorEffect:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p1}, Lcom/htc/camera/effect/ColorEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 28
    iput-object p3, p0, Lcom/htc/camera/effect/ColorEffectBase;->m_ColorEffect:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method protected applyEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/htc/camera/effect/ColorEffectBase;->getEffectController()Lcom/htc/camera/effect/aa;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/htc/camera/effect/ColorEffectBase;->TAG:Ljava/lang/String;

    const-string v1, "Cannot find effect controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    instance-of v1, p1, Lcom/htc/camera/effect/GpuEffectBase;

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    .line 47
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/effect/ColorEffectBase;->m_ColorEffect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/aa;->setColorEffect(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public getCapabilities()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/htc/camera/effect/ColorEffectBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v3

    .line 69
    if-nez v3, :cond_3

    .line 71
    sget-object v0, Lcom/htc/camera/effect/ColorEffectBase;->m_MainCameraEffectSupportedList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/htc/camera/effect/ColorEffectBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 74
    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/htc/camera/effect/ColorEffectBase;->TAG:Ljava/lang/String;

    const-string v2, "getCapabilities() - Cannot get camera controller"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getSupportedEffects()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/effect/ColorEffectBase;->m_MainCameraEffectSupportedList:Ljava/util/List;

    .line 81
    :cond_2
    sget-object v0, Lcom/htc/camera/effect/ColorEffectBase;->m_MainCameraEffectSupportedList:Ljava/util/List;

    move-object v2, v0

    .line 97
    :goto_1
    if-nez v2, :cond_6

    .line 99
    iget-object v0, p0, Lcom/htc/camera/effect/ColorEffectBase;->TAG:Ljava/lang/String;

    const-string v2, "getCapabilities() - Cannot get effect supported list"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 100
    goto :goto_0

    .line 85
    :cond_3
    sget-object v0, Lcom/htc/camera/effect/ColorEffectBase;->m_FrontCameraEffectSupportedList:Ljava/util/List;

    if-nez v0, :cond_5

    .line 87
    invoke-virtual {p0}, Lcom/htc/camera/effect/ColorEffectBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 88
    if-nez v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/htc/camera/effect/ColorEffectBase;->TAG:Ljava/lang/String;

    const-string v2, "getCapabilities() - Cannot get camera controller"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getSupportedEffects()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/effect/ColorEffectBase;->m_FrontCameraEffectSupportedList:Ljava/util/List;

    .line 95
    :cond_5
    sget-object v0, Lcom/htc/camera/effect/ColorEffectBase;->m_FrontCameraEffectSupportedList:Ljava/util/List;

    move-object v2, v0

    goto :goto_1

    .line 104
    :cond_6
    const v0, 0x7fffffff

    .line 105
    iget-object v1, p0, Lcom/htc/camera/effect/ColorEffectBase;->m_ColorEffect:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    if-nez v3, :cond_7

    .line 109
    const v0, 0x7fffff8c

    goto :goto_0

    .line 111
    :cond_7
    const v0, 0x7fffff83

    goto :goto_0
.end method
