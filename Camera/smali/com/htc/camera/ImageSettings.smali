.class public final Lcom/htc/camera/ImageSettings;
.super Ljava/lang/Object;
.source "ImageSettings.java"


# static fields
.field public static final SETTING_IMAGE_PROPERTIES:I


# instance fields
.field public brightness:Ljava/lang/Float;

.field public final cameraActivity:Lcom/htc/camera/HTCCamera;

.field public contrast:Ljava/lang/Float;

.field public isoFront:Ljava/lang/String;

.field public isoMain:Ljava/lang/String;

.field public saturation:Ljava/lang/Float;

.field public sharpness:Ljava/lang/Float;

.field public whiteBalanceFront:Ljava/lang/String;

.field public whiteBalanceMain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x1b

    sput v0, Lcom/htc/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/htc/camera/ImageSettings;->cameraActivity:Lcom/htc/camera/HTCCamera;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/ImageSettings;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 53
    invoke-virtual {p0, p2, p3}, Lcom/htc/camera/ImageSettings;->copyFrom(Lcom/htc/camera/ImageSettings;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/ImageSettings;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 59
    const-string v0, "template"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->cameraActivity:Lcom/htc/camera/HTCCamera;

    .line 63
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 64
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 65
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 68
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 69
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static backup(Lcom/htc/camera/HTCCamera;I)Lcom/htc/camera/ImageSettings;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/htc/camera/ImageSettings;

    invoke-direct {v0, p0}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 136
    invoke-virtual {v0, p1}, Lcom/htc/camera/ImageSettings;->backup(I)V

    .line 137
    return-object v0
.end method

.method public static createFromSettings(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/ImageSettings;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    invoke-static {p0, v0}, Lcom/htc/camera/ImageSettings;->createFromSettings(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraSettings;)Lcom/htc/camera/ImageSettings;

    move-result-object v0

    return-object v0
.end method

.method public static createFromSettings(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraSettings;)Lcom/htc/camera/ImageSettings;
    .locals 2

    .prologue
    .line 247
    new-instance v1, Lcom/htc/camera/ImageSettings;

    invoke-direct {v1, p0}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 248
    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_BRIGHTNESS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 249
    iget-object v0, p1, Lcom/htc/camera/CameraSettings;->contrast:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 250
    iget-object v0, p1, Lcom/htc/camera/CameraSettings;->saturation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 251
    iget-object v0, p1, Lcom/htc/camera/CameraSettings;->sharpness:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 252
    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    .line 253
    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 254
    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    .line 255
    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    .line 256
    return-object v1
.end method

.method public static getDefaultSettings(Lcom/htc/camera/HTCCamera;I)Lcom/htc/camera/ImageSettings;
    .locals 3

    .prologue
    .line 311
    new-instance v2, Lcom/htc/camera/ImageSettings;

    invoke-direct {v2, p0}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 312
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Settings;

    .line 313
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 315
    if-nez v1, :cond_0

    .line 317
    const-string v0, "ImageSettings"

    const-string v1, "getDefaultSettings error because there is no camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 352
    :goto_0
    return-object v0

    .line 322
    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 323
    const-string v1, "pref_camera_brightness"

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, v2, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 326
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    .line 327
    const-string v1, "pref_camera_contrast"

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, v2, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 330
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 332
    const-string v1, "auto"

    iput-object v1, v2, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    .line 333
    const-string v1, "auto"

    iput-object v1, v2, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    .line 337
    :cond_3
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_4

    .line 338
    const-string v1, "pref_camera_saturation"

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, v2, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 341
    :cond_4
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_5

    .line 342
    const-string v1, "pref_camera_shaprness"

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 345
    :cond_5
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_6

    .line 347
    const-string v0, "auto"

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 348
    const-string v0, "auto"

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    :cond_6
    move-object v0, v2

    .line 352
    goto :goto_0
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/htc/camera/ImageSettings;->apply(I)V

    .line 79
    return-void
.end method

.method public apply(I)V
    .locals 3

    .prologue
    .line 82
    const-string v0, "ImageSettings"

    const-string v1, "apply image settings"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v1, Lcom/htc/camera/ImageSettings;

    iget-object v0, p0, Lcom/htc/camera/ImageSettings;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {v1, v0}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 92
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 96
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 100
    :cond_2
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    .line 106
    :cond_3
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 110
    :cond_4
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_5

    .line 111
    iget-object v0, p0, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 114
    :cond_5
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_6

    .line 116
    iget-object v0, p0, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/ImageSettings;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    .line 122
    if-nez v0, :cond_7

    .line 124
    const-string v0, "ImageSettings"

    const-string v1, "Cannot apply image settings because there is no IImageSettingsController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_7
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    goto :goto_0
.end method

.method public backup(I)V
    .locals 2

    .prologue
    .line 141
    const-string v0, "ImageSettings"

    const-string v1, "backup current image settings"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/htc/camera/ImageSettings;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 145
    if-nez v0, :cond_1

    .line 147
    const-string v0, "ImageSettings"

    const-string v1, "Cannot backup image settings because there is no camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 151
    if-nez v0, :cond_2

    .line 153
    const-string v0, "ImageSettings"

    const-string v1, "Cannot backup image settings because there is no camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/ImageSettings;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 161
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    .line 162
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_BRIGHTNESS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, p0, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 165
    :cond_3
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_4

    .line 166
    iget-object v1, v0, Lcom/htc/camera/CameraSettings;->contrast:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, p0, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 169
    :cond_4
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_5

    .line 170
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    .line 171
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    .line 175
    :cond_5
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_6

    .line 176
    iget-object v1, v0, Lcom/htc/camera/CameraSettings;->saturation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, p0, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 179
    :cond_6
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_7

    .line 180
    iget-object v1, v0, Lcom/htc/camera/CameraSettings;->sharpness:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, p0, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 183
    :cond_7
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_0

    .line 185
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 186
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public copyFrom(Lcom/htc/camera/ImageSettings;I)V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/camera/ImageSettings;->copyFrom(Lcom/htc/camera/ImageSettings;IZ)V

    .line 196
    return-void
.end method

.method public copyFrom(Lcom/htc/camera/ImageSettings;IZ)V
    .locals 1

    .prologue
    .line 200
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 205
    :cond_2
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 208
    :cond_3
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_5

    if-nez p3, :cond_4

    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 209
    :cond_4
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 212
    :cond_5
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_9

    .line 214
    if-nez p3, :cond_6

    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 215
    :cond_6
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    .line 216
    :cond_7
    if-nez p3, :cond_8

    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 217
    :cond_8
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    .line 221
    :cond_9
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_b

    if-nez p3, :cond_a

    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    if-eqz v0, :cond_b

    .line 222
    :cond_a
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 225
    :cond_b
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_d

    if-nez p3, :cond_c

    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    if-eqz v0, :cond_d

    .line 226
    :cond_c
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 229
    :cond_d
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_0

    .line 231
    if-nez p3, :cond_e

    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 232
    :cond_e
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 233
    :cond_f
    if-nez p3, :cond_10

    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 234
    :cond_10
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    goto :goto_0
.end method
