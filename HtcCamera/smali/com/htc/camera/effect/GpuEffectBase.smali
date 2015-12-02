.class public abstract Lcom/htc/camera/effect/GpuEffectBase;
.super Lcom/htc/camera/effect/EffectBase;
.source "GpuEffectBase.java"


# instance fields
.field private final m_ColorEffectName:Ljava/lang/String;

.field private final m_EffectInfo:Lcom/htc/camera/effect/GpuEffectInfo;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 24
    const-string v0, "none"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 25
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/effect/GpuEffectInfo;)V
    .locals 1

    .prologue
    .line 28
    const-string v0, "none"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/htc/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;Lcom/htc/camera/effect/GpuEffectInfo;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 33
    iput-object p3, p0, Lcom/htc/camera/effect/GpuEffectBase;->m_ColorEffectName:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/htc/camera/effect/GpuEffectBase;->m_EffectInfo:Lcom/htc/camera/effect/GpuEffectInfo;

    .line 35
    return-void
.end method


# virtual methods
.method protected applyEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/camera/effect/GpuEffectBase;->getEffectController()Lcom/htc/camera/effect/aa;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/htc/camera/effect/GpuEffectBase;->m_ColorEffectName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/aa;->setColorEffect(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {p0}, Lcom/htc/camera/effect/GpuEffectBase;->getAppliedGpuEffectInfo()Lcom/htc/camera/effect/GpuEffectInfo;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method protected getAppliedGpuEffectInfo()Lcom/htc/camera/effect/GpuEffectInfo;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/camera/effect/GpuEffectBase;->m_EffectInfo:Lcom/htc/camera/effect/GpuEffectInfo;

    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isHtcDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffd5

    goto :goto_0
.end method

.method protected prepareApplyEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 0

    .prologue
    .line 89
    if-eq p1, p0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/htc/camera/effect/GpuEffectBase;->resetParametersOverride()V

    .line 91
    :cond_0
    return-void
.end method

.method protected prepareCancelEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 3

    .prologue
    .line 99
    if-eq p1, p0, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/htc/camera/effect/GpuEffectBase;->getEffectController()Lcom/htc/camera/effect/aa;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;Z)V

    .line 105
    :cond_0
    return-void
.end method

.method protected final setGpuEffectParameters(Lcom/htc/camera/effect/GpuEffectParameters;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 112
    if-nez p1, :cond_0

    .line 114
    const-string v1, "parameters"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 129
    :goto_0
    return v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/GpuEffectBase;->isApplied()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/htc/camera/effect/GpuEffectBase;->getEffectController()Lcom/htc/camera/effect/aa;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1, p1}, Lcom/htc/camera/effect/aa;->setGpuEffectParameters(Lcom/htc/camera/effect/GpuEffectParameters;)V

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/effect/GpuEffectBase;->TAG:Ljava/lang/String;

    const-string v2, "setGpuEffectParameters() - No effect controller"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/effect/GpuEffectBase;->TAG:Ljava/lang/String;

    const-string v2, "setGpuEffectParameters() - Effect is not applied"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
