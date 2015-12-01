.class public Lcom/htc/camera/DefaultPhotoFlashProvider;
.super Lcom/htc/camera/FlashProvider;
.source "DefaultPhotoFlashProvider.java"


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/camera/FlashProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 14
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/DefaultPhotoFlashProvider$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/DefaultPhotoFlashProvider$1;-><init>(Lcom/htc/camera/DefaultPhotoFlashProvider;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 23
    return-void
.end method

.method private a()Lcom/htc/camera/FlashMode;
    .locals 2

    .prologue
    .line 40
    .line 41
    sget-object v1, Lcom/htc/camera/DefaultPhotoFlashProvider$2;->$SwitchMap$com$htc$camera$FlashMode:[I

    sget-object v0, Lcom/htc/camera/DefaultPhotoFlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/DefaultPhotoFlashProvider;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    invoke-virtual {v0}, Lcom/htc/camera/FlashMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 50
    sget-object v0, Lcom/htc/camera/FlashMode;->Auto:Lcom/htc/camera/FlashMode;

    .line 54
    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    sget-object v0, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    goto :goto_0

    .line 47
    :pswitch_1
    sget-object v0, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b()Lcom/htc/camera/FlashMode;
    .locals 2

    .prologue
    .line 59
    .line 60
    sget-object v1, Lcom/htc/camera/DefaultPhotoFlashProvider$2;->$SwitchMap$com$htc$camera$FlashMode:[I

    sget-object v0, Lcom/htc/camera/DefaultPhotoFlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/DefaultPhotoFlashProvider;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    invoke-virtual {v0}, Lcom/htc/camera/FlashMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 69
    sget-object v0, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    .line 73
    :goto_0
    return-object v0

    .line 63
    :pswitch_0
    sget-object v0, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    goto :goto_0

    .line 66
    :pswitch_1
    sget-object v0, Lcom/htc/camera/FlashMode;->Torch:Lcom/htc/camera/FlashMode;

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected a(Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lcom/htc/camera/DefaultPhotoFlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/DefaultPhotoFlashProvider;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    .line 80
    invoke-virtual {p0, v0}, Lcom/htc/camera/DefaultPhotoFlashProvider;->toValidFlashMode(Lcom/htc/camera/FlashMode;)Lcom/htc/camera/FlashMode;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/htc/camera/DefaultPhotoFlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/DefaultPhotoFlashProvider;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/htc/camera/DefaultPhotoFlashProvider;->TAG:Ljava/lang/String;

    const-string v2, "onCameraTypeChanged() - Map to new flash mode: "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    :cond_0
    return-void
.end method

.method public getNextFlashMode()Lcom/htc/camera/FlashMode;
    .locals 1

    .prologue
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/htc/camera/DefaultPhotoFlashProvider;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    .line 30
    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/htc/camera/DefaultPhotoFlashProvider;->a()Lcom/htc/camera/FlashMode;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/DefaultPhotoFlashProvider;->b()Lcom/htc/camera/FlashMode;

    move-result-object v0

    goto :goto_0
.end method

.method protected toValidFlashMode(Lcom/htc/camera/FlashMode;)Lcom/htc/camera/FlashMode;
    .locals 2

    .prologue
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/htc/camera/DefaultPhotoFlashProvider;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    .line 91
    sget-object v1, Lcom/htc/camera/DefaultPhotoFlashProvider$2;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    return-object p1

    .line 94
    :pswitch_0
    sget-object v0, Lcom/htc/camera/FlashMode;->Torch:Lcom/htc/camera/FlashMode;

    if-ne p1, v0, :cond_0

    .line 95
    sget-object p1, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    goto :goto_0

    .line 99
    :pswitch_1
    sget-object v0, Lcom/htc/camera/FlashMode;->Auto:Lcom/htc/camera/FlashMode;

    if-ne p1, v0, :cond_0

    .line 100
    sget-object p1, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
