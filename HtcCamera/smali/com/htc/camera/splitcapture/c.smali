.class Lcom/htc/camera/splitcapture/c;
.super Lcom/htc/camera/DefaultPhotoFlashProvider;
.source "SplitPhotoUI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const-string v0, "pref_split_photo_front_flash_mode"

    invoke-static {v0}, Lcom/htc/camera/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/htc/camera/DefaultPhotoFlashProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 123
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_PAUSING:Lcom/htc/camera/base/EventKey;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPhotoFlashProvider$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPhotoFlashProvider$1;-><init>(Lcom/htc/camera/splitcapture/c;)V

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/htc/camera/splitcapture/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/camera/splitcapture/c;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/htc/camera/splitcapture/c;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/c;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
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
    .line 141
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/c;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 142
    sget-object v1, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    .line 143
    sget-object v3, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$CameraType:[I

    iget-object v0, p1, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 156
    :goto_0
    sget-object v1, Lcom/htc/camera/splitcapture/c;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/splitcapture/c;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/htc/camera/splitcapture/c;->TAG:Ljava/lang/String;

    const-string v2, "onCameraTypeChanged() - Set new flash mode: "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    :cond_0
    return-void

    .line 146
    :pswitch_0
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v2, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->flashMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    .line 147
    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/c;->convertFromSettingsFlashMode(Lcom/htc/camera/FlashMode;)Lcom/htc/camera/FlashMode;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_1
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v2, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 152
    const-string v1, "pref_split_photo_front_flash_mode"

    const-class v2, Lcom/htc/camera/FlashMode;

    sget-object v3, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/CameraSettings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSetFlashMode(Lcom/htc/camera/FlashMode;)Z
    .locals 5

    .prologue
    .line 164
    const/4 v1, 0x1

    .line 165
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/c;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 166
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    .line 167
    sget-object v3, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v1

    .line 191
    :goto_1
    return v0

    .line 170
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/camera/DefaultPhotoFlashProvider;->onSetFlashMode(Lcom/htc/camera/FlashMode;)Z

    move-result v0

    goto :goto_1

    .line 175
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/camera/splitcapture/c;->toValidFlashMode(Lcom/htc/camera/FlashMode;)Lcom/htc/camera/FlashMode;

    move-result-object v3

    .line 177
    iget-object v0, p0, Lcom/htc/camera/splitcapture/c;->TAG:Ljava/lang/String;

    const-string v4, "onSetFlashMode() - Set flash mode: "

    invoke-static {v0, v4, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    sget-object v0, Lcom/htc/camera/splitcapture/c;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0, v3}, Lcom/htc/camera/splitcapture/c;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v2, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 184
    if-eqz v0, :cond_0

    .line 185
    const-string v2, "pref_split_photo_front_flash_mode"

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/c;->TAG:Ljava/lang/String;

    const-string v2, "onSetFlashMode() - No camera settings"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
