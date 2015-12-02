.class public Lcom/htc/camera/DefaultVideoFlashProvider;
.super Lcom/htc/camera/FlashProvider;
.source "DefaultVideoFlashProvider.java"


# instance fields
.field private m_OriginalFlashMode:Lcom/htc/camera/FlashMode;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/camera/FlashProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 22
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/DefaultVideoFlashProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/DefaultVideoFlashProvider$1;-><init>(Lcom/htc/camera/DefaultVideoFlashProvider;Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/DefaultVideoFlashProvider;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/DefaultVideoFlashProvider;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private backupOriginalFlashMode(Lcom/htc/camera/FlashMode;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/camera/FlashMode;->Auto:Lcom/htc/camera/FlashMode;

    if-ne p1, v0, :cond_0

    .line 36
    iput-object p1, p0, Lcom/htc/camera/DefaultVideoFlashProvider;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    .line 37
    :cond_0
    return-void
.end method

.method private resetOriginalFlashMode()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/camera/DefaultVideoFlashProvider;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/camera/DefaultVideoFlashProvider;->TAG:Ljava/lang/String;

    const-string v1, "resetOriginalFlashMode()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/DefaultVideoFlashProvider;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    .line 86
    :cond_0
    return-void
.end method

.method private restoreOriginalFlashMode()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/camera/DefaultVideoFlashProvider;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/camera/DefaultVideoFlashProvider;->TAG:Ljava/lang/String;

    const-string v1, "restoreOriginalFlashMode()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/camera/DefaultVideoFlashProvider;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 96
    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->flashMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/DefaultVideoFlashProvider;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public getNextFlashMode()Lcom/htc/camera/FlashMode;
    .locals 2

    .prologue
    .line 42
    .line 43
    sget-object v0, Lcom/htc/camera/DefaultVideoFlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/DefaultVideoFlashProvider;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    if-ne v0, v1, :cond_0

    .line 44
    sget-object v0, Lcom/htc/camera/FlashMode;->Torch:Lcom/htc/camera/FlashMode;

    .line 48
    :goto_0
    return-object v0

    .line 46
    :cond_0
    sget-object v0, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    goto :goto_0
.end method

.method protected onActivated(Lcom/htc/camera/FlashProvider;)Z
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/htc/camera/DefaultVideoFlashProvider;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->flashMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    .line 55
    invoke-direct {p0, v0}, Lcom/htc/camera/DefaultVideoFlashProvider;->backupOriginalFlashMode(Lcom/htc/camera/FlashMode;)V

    .line 57
    invoke-super {p0, p1}, Lcom/htc/camera/FlashProvider;->onActivated(Lcom/htc/camera/FlashProvider;)Z

    move-result v0

    return v0
.end method

.method protected onDeactivated()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/camera/DefaultVideoFlashProvider;->restoreOriginalFlashMode()V

    .line 64
    invoke-direct {p0}, Lcom/htc/camera/DefaultVideoFlashProvider;->resetOriginalFlashMode()V

    .line 66
    invoke-super {p0}, Lcom/htc/camera/FlashProvider;->onDeactivated()V

    .line 67
    return-void
.end method

.method protected onSetFlashMode(Lcom/htc/camera/FlashMode;)Z
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/camera/DefaultVideoFlashProvider;->resetOriginalFlashMode()V

    .line 75
    invoke-super {p0, p1}, Lcom/htc/camera/FlashProvider;->onSetFlashMode(Lcom/htc/camera/FlashMode;)Z

    move-result v0

    return v0
.end method

.method protected toValidFlashMode(Lcom/htc/camera/FlashMode;)Lcom/htc/camera/FlashMode;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/htc/camera/FlashMode;->Torch:Lcom/htc/camera/FlashMode;

    if-ne p1, v0, :cond_1

    .line 105
    :cond_0
    sget-object v0, Lcom/htc/camera/FlashMode;->Torch:Lcom/htc/camera/FlashMode;

    .line 107
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    goto :goto_0
.end method
