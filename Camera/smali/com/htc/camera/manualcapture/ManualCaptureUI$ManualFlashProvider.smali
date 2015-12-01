.class Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;
.super Lcom/htc/camera/FlashProvider;
.source "ManualCaptureUI.java"


# instance fields
.field private originalFlashMode:Lcom/htc/camera/FlashMode;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 1761
    invoke-direct {p0, p1}, Lcom/htc/camera/FlashProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 1762
    return-void
.end method

.method private backupOriginalFlashMode(Lcom/htc/camera/FlashMode;)V
    .locals 1

    .prologue
    .line 1766
    sget-object v0, Lcom/htc/camera/FlashMode;->Auto:Lcom/htc/camera/FlashMode;

    if-ne p1, v0, :cond_0

    .line 1767
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->originalFlashMode:Lcom/htc/camera/FlashMode;

    .line 1768
    :cond_0
    return-void
.end method

.method private resetOriginalFlashMode()V
    .locals 2

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->originalFlashMode:Lcom/htc/camera/FlashMode;

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->TAG:Ljava/lang/String;

    const-string v1, "resetOriginalFlashMode()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->originalFlashMode:Lcom/htc/camera/FlashMode;

    .line 1817
    :cond_0
    return-void
.end method

.method private restoreOriginalFlashMode()V
    .locals 2

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->originalFlashMode:Lcom/htc/camera/FlashMode;

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->TAG:Ljava/lang/String;

    const-string v1, "restoreOriginalFlashMode()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 1827
    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->flashMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->originalFlashMode:Lcom/htc/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 1830
    :cond_0
    return-void
.end method


# virtual methods
.method public getNextFlashMode()Lcom/htc/camera/FlashMode;
    .locals 2

    .prologue
    .line 1774
    sget-object v0, Lcom/htc/camera/FlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    if-ne v0, v1, :cond_0

    .line 1775
    sget-object v0, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    .line 1779
    :goto_0
    return-object v0

    .line 1777
    :cond_0
    sget-object v0, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    goto :goto_0
.end method

.method protected onActivated(Lcom/htc/camera/FlashProvider;)Z
    .locals 2

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->flashMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    .line 1786
    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->backupOriginalFlashMode(Lcom/htc/camera/FlashMode;)V

    .line 1788
    invoke-super {p0, p1}, Lcom/htc/camera/FlashProvider;->onActivated(Lcom/htc/camera/FlashProvider;)Z

    move-result v0

    return v0
.end method

.method protected onDeactivated()V
    .locals 0

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->restoreOriginalFlashMode()V

    .line 1795
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->resetOriginalFlashMode()V

    .line 1797
    invoke-super {p0}, Lcom/htc/camera/FlashProvider;->onDeactivated()V

    .line 1798
    return-void
.end method

.method protected onSetFlashMode(Lcom/htc/camera/FlashMode;)Z
    .locals 1

    .prologue
    .line 1804
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;->resetOriginalFlashMode()V

    .line 1806
    invoke-super {p0, p1}, Lcom/htc/camera/FlashProvider;->onSetFlashMode(Lcom/htc/camera/FlashMode;)Z

    move-result v0

    return v0
.end method

.method protected toValidFlashMode(Lcom/htc/camera/FlashMode;)Lcom/htc/camera/FlashMode;
    .locals 1

    .prologue
    .line 1835
    sget-object v0, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/htc/camera/FlashMode;->Torch:Lcom/htc/camera/FlashMode;

    if-ne p1, v0, :cond_1

    .line 1836
    :cond_0
    sget-object v0, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    .line 1838
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    goto :goto_0
.end method
