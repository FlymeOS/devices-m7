.class public abstract Lcom/htc/camera/effect/EffectBase;
.super Lcom/htc/camera/ThreadDependencyObject;
.source "EffectBase.java"


# instance fields
.field private m_BackupImageSettings:Lcom/htc/camera/ImageSettings;

.field private final m_CameraActivity:Lcom/htc/camera/HTCCamera;

.field private final m_CameraThread:Lcom/htc/camera/CameraThread;

.field private m_EffectController:Lcom/htc/camera/effect/aa;

.field private m_Flags:I

.field private final m_Name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/camera/ThreadDependencyObject;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 57
    const-string v0, "name"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 60
    :cond_0
    if-nez p2, :cond_1

    .line 62
    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_1
    iput-object p1, p0, Lcom/htc/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/htc/camera/effect/EffectBase;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    .line 69
    invoke-virtual {p2}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectBase;->m_CameraThread:Lcom/htc/camera/CameraThread;

    .line 72
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->m_CameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    const-string v1, "There is no camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 77
    :cond_2
    return-void
.end method


# virtual methods
.method final apply(Lcom/htc/camera/effect/EffectBase;)V
    .locals 5

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->threadAccessCheck()V

    .line 88
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    const-string v1, "Effect is released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has already been applied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/effect/EffectBase;->prepareApplyEffect(Lcom/htc/camera/effect/EffectBase;I)V

    .line 103
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    .line 107
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/EffectBase;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 108
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    .line 111
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v1

    .line 112
    if-eqz p1, :cond_5

    if-eq p1, p0, :cond_5

    .line 114
    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v0

    .line 115
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v0

    .line 116
    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->getBackupImageSettings()Lcom/htc/camera/ImageSettings;

    move-result-object v3

    .line 117
    if-eqz v3, :cond_5

    .line 119
    if-eqz v2, :cond_4

    .line 121
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 123
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    const-string v4, "Restore image settings"

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v3, v2}, Lcom/htc/camera/ImageSettings;->apply(I)V

    .line 129
    :cond_4
    :goto_1
    new-instance v0, Lcom/htc/camera/ImageSettings;

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    const v4, 0x7fffffff

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/ImageSettings;I)V

    iput-object v0, p0, Lcom/htc/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/htc/camera/ImageSettings;

    .line 134
    :cond_5
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->getAppliedImageSettings()Lcom/htc/camera/ImageSettings;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    const-string v2, "Apply special image settings"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Lcom/htc/camera/ImageSettings;->apply()V

    goto/16 :goto_0

    .line 127
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    const-string v2, "Resetting to default, no need to restore image settings"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    const-string v1, "Resetting to default, no need to apply special image settings"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected abstract applyEffect(Lcom/htc/camera/effect/EffectBase;)V
.end method

.method final cancel(Lcom/htc/camera/effect/EffectBase;)V
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->threadAccessCheck()V

    .line 159
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    const-string v1, "Effect is released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 164
    :cond_0
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/effect/EffectBase;->prepareCancelEffect(Lcom/htc/camera/effect/EffectBase;I)V

    .line 167
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    .line 171
    :cond_1
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has already been canceled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    if-eqz p1, :cond_4

    if-eq p1, p0, :cond_4

    .line 180
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v0

    .line 181
    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v1

    .line 182
    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    .line 183
    if-eqz v0, :cond_4

    .line 185
    iget-object v1, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    const-string v2, "Backup current image settings"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/htc/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/htc/camera/ImageSettings;

    if-nez v1, :cond_3

    .line 187
    new-instance v1, Lcom/htc/camera/ImageSettings;

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v1, p0, Lcom/htc/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/htc/camera/ImageSettings;

    .line 188
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/htc/camera/ImageSettings;

    invoke-virtual {v1, v0}, Lcom/htc/camera/ImageSettings;->backup(I)V

    .line 193
    :cond_4
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/EffectBase;->cancelEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 194
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->cancelImplicitly()V

    goto :goto_0
.end method

.method protected abstract cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
.end method

.method protected cancelImplicitly()V
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->threadAccessCheck()V

    .line 207
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    .line 208
    return-void
.end method

.method public getAppliedImageSettings()Lcom/htc/camera/ImageSettings;
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/camera/ImageSettings;->getDefaultSettings(Lcom/htc/camera/HTCCamera;I)Lcom/htc/camera/ImageSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getBackupImageSettings()Lcom/htc/camera/ImageSettings;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/htc/camera/ImageSettings;

    return-object v0
.end method

.method public final getCameraActivity()Lcom/htc/camera/HTCCamera;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    return-object v0
.end method

.method public abstract getCapabilities()I
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 252
    sget v0, Lcom/htc/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    return v0
.end method

.method protected final getEffectController()Lcom/htc/camera/effect/aa;
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/aa;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectBase;->m_EffectController:Lcom/htc/camera/effect/aa;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->m_EffectController:Lcom/htc/camera/effect/aa;

    return-object v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public final isApplied()Z
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraModeSupported(Lcom/htc/camera/CameraMode;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->getCapabilities()I

    move-result v2

    .line 303
    sget-object v3, Lcom/htc/camera/effect/EffectBase$1;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {p1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 306
    :pswitch_0
    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 308
    :pswitch_1
    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isCameraTypeSupported(Lcom/htc/camera/CameraType;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->getCapabilities()I

    move-result v2

    .line 320
    sget-object v3, Lcom/htc/camera/effect/EffectBase$1;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 323
    :pswitch_0
    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 325
    :pswitch_1
    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 327
    :pswitch_2
    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 329
    :pswitch_3
    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isFastShotToShotMode()Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method public isFixedResolution()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public isSelfTimerSupported()Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method public isServiceModeSupported()Z
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final prepareApply(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->threadAccessCheck()V

    .line 396
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    const-string v1, "Effect is released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_0
    return-void

    .line 401
    :cond_0
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has already been prepared or applied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/effect/EffectBase;->prepareApplyEffect(Lcom/htc/camera/effect/EffectBase;I)V

    .line 409
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    goto :goto_0
.end method

.method protected prepareApplyEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method final prepareCancel(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 3

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->threadAccessCheck()V

    .line 423
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    const-string v1, "Effect is released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :goto_0
    return-void

    .line 428
    :cond_0
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has already been prepared for canceling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/effect/EffectBase;->prepareCancelEffect(Lcom/htc/camera/effect/EffectBase;I)V

    .line 436
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    goto :goto_0
.end method

.method protected prepareCancelEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public final release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 447
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->threadAccessCheck()V

    .line 450
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 454
    :cond_0
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    .line 457
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {p0, v1}, Lcom/htc/camera/effect/EffectBase;->cancel(Lcom/htc/camera/effect/EffectBase;)V

    .line 463
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->releaseOverride()V

    .line 464
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, -0x5

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    goto :goto_0

    .line 459
    :cond_2
    iget v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/effect/EffectBase;->prepareCancel(Lcom/htc/camera/effect/EffectBase;I)V

    goto :goto_1
.end method

.method public releaseCachedResources()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectBase;->m_EffectController:Lcom/htc/camera/effect/aa;

    .line 485
    return-void
.end method

.method protected releaseOverride()V
    .locals 0

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectBase;->releaseCachedResources()V

    .line 469
    return-void
.end method

.method public final resetBackupImageSettings()V
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/htc/camera/ImageSettings;

    .line 477
    return-void
.end method

.method protected resetParametersOverride()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/htc/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public use3DPreviewRendering()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public willRestartPreviewAfterApplying()Z
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method
