.class public Lcom/htc/camera/capturemode/UserCaptureMode;
.super Lcom/htc/camera/capturemode/CaptureMode;
.source "UserCaptureMode.java"


# instance fields
.field private m_CameraMode:Lcom/htc/camera/CameraMode;

.field private m_CameraType:Lcom/htc/camera/CameraType;

.field private m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

.field private m_DefaultSplitCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

.field private m_EffectContext:Lcom/htc/camera/effect/EffectContext;

.field private m_EffectContextHandle:Lcom/htc/camera/CloseableHandle;

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private final m_Id:Ljava/lang/String;

.field private final m_IsCameraOpenCallback:Lcom/htc/camera/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/f",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_IsPreviewStartedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Settings:Lcom/htc/camera/capturemode/f;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;Lcom/htc/camera/capturemode/CaptureMode;)V
    .locals 12

    .prologue
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User Capture Mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 55
    sget-object v1, Lcom/htc/camera/CloseableHandle;->INVALID:Lcom/htc/camera/CloseableHandle;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContextHandle:Lcom/htc/camera/CloseableHandle;

    .line 56
    new-instance v1, Lcom/htc/camera/effect/EffectContext;

    invoke-direct {v1}, Lcom/htc/camera/effect/EffectContext;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    .line 64
    new-instance v1, Lcom/htc/camera/capturemode/UserCaptureMode$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/capturemode/UserCaptureMode$1;-><init>(Lcom/htc/camera/capturemode/UserCaptureMode;)V

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_IsCameraOpenCallback:Lcom/htc/camera/base/f;

    .line 73
    new-instance v1, Lcom/htc/camera/capturemode/UserCaptureMode$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/capturemode/UserCaptureMode$2;-><init>(Lcom/htc/camera/capturemode/UserCaptureMode;)V

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_IsPreviewStartedCallback:Lcom/htc/camera/property/c;

    .line 126
    iput-object p2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Id:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->canChangeDefaultSettings:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getCustomSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/f;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    .line 133
    if-eqz p3, :cond_9

    const/4 v1, 0x1

    move v8, v1

    .line 134
    :goto_0
    if-eqz v8, :cond_0

    .line 135
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p1, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Settings;

    invoke-virtual {v2, v1}, Lcom/htc/camera/capturemode/f;->copyFrom(Lcom/htc/camera/Settings;)V

    .line 139
    :cond_0
    if-eqz v8, :cond_b

    .line 141
    instance-of v1, p3, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v1, :cond_a

    .line 142
    check-cast p3, Lcom/htc/camera/capturemode/UserCaptureMode;

    iget-object v1, p3, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-direct {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getSettingsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/capturemode/CaptureMode;->clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v1

    move-object v2, v1

    .line 145
    :goto_1
    iget-object v1, p1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraType:Lcom/htc/camera/CameraType;

    .line 146
    iget-object v1, p1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraMode;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;

    .line 153
    :goto_2
    const/4 v4, 0x0

    .line 154
    if-nez v8, :cond_c

    .line 156
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v3, "is-zoe-mode"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lcom/htc/camera/capturemode/f;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 157
    if-eqz v1, :cond_25

    .line 159
    new-instance v2, Lcom/htc/camera/zoe/ZoeCaptureMode;

    invoke-direct {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getSettingsName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/htc/camera/zoe/ZoeCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 160
    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iput-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraType:Lcom/htc/camera/CameraType;

    .line 161
    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    iput-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;

    move v7, v1

    .line 166
    :goto_3
    if-eqz v7, :cond_1

    .line 168
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v3, "This is Zoe capture mode"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v4, 0x1

    .line 173
    :cond_1
    if-nez v4, :cond_e

    .line 175
    if-nez v8, :cond_d

    .line 177
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v3, "default-split-capture-type"

    const-class v5, Lcom/htc/camera/splitcapture/SplitCaptureType;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v5, v6}, Lcom/htc/camera/capturemode/f;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 178
    if-eqz v1, :cond_2

    .line 180
    sget-object v2, Lcom/htc/camera/capturemode/UserCaptureMode$4;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 188
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    :goto_4
    new-instance v2, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-direct {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getSettingsName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    move-object v1, v2

    .line 193
    check-cast v1, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v1, v3}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    .line 194
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/splitcapture/SplitCaptureType;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultSplitCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 195
    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraType:Lcom/htc/camera/CameraType;

    .line 196
    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;

    :cond_2
    move-object v3, v2

    .line 223
    :goto_5
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    move v6, v1

    .line 224
    :goto_6
    if-eqz v6, :cond_3

    .line 226
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "This is split-capture mode"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v4, 0x1

    .line 231
    :cond_3
    if-nez v4, :cond_12

    .line 233
    if-nez v8, :cond_11

    .line 235
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v2, "defaut-photo-booth-pattern"

    invoke-virtual {v1, v2}, Lcom/htc/camera/capturemode/f;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 236
    if-eqz v9, :cond_12

    .line 240
    const/4 v2, 0x0

    .line 241
    :try_start_0
    invoke-static {}, Lcom/htc/camera/photopattern/IPhotoBoothController;->getSupportedPattern()Ljava/util/ArrayList;

    move-result-object v10

    .line 242
    const/4 v1, 0x0

    move v5, v1

    :goto_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_24

    .line 244
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v9, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_10

    .line 247
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    .line 248
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "photobooth pattern :"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_8
    if-eqz v1, :cond_12

    .line 254
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    iget-object v5, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v5, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    new-instance v2, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    invoke-direct {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getSettingsName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    move-object v1, v0

    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v3}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->setCapturePattern(Ljava/lang/String;Z)V

    .line 257
    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraType:Lcom/htc/camera/CameraType;

    .line 258
    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    :goto_9
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    .line 283
    :goto_a
    if-eqz v1, :cond_23

    .line 285
    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is photobooth mode "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v1, v2

    check-cast v1, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    iget-object v1, v1, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v1, 0x1

    .line 291
    :goto_b
    if-nez v1, :cond_16

    .line 293
    if-nez v8, :cond_15

    .line 295
    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v4, "is-human-joint-mode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/camera/capturemode/f;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 296
    if-eqz v3, :cond_22

    .line 298
    new-instance v2, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    invoke-direct {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getSettingsName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v4}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 299
    sget-object v4, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iput-object v4, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraType:Lcom/htc/camera/CameraType;

    .line 300
    sget-object v4, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    iput-object v4, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;

    move v11, v3

    move-object v3, v2

    move v2, v11

    .line 308
    :goto_c
    if-eqz v2, :cond_21

    .line 310
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "This is human-joint mode"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v2, 0x1

    .line 316
    :goto_d
    if-nez v2, :cond_18

    .line 318
    if-nez v8, :cond_17

    .line 320
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v4, "is-dual-camera-mode"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/htc/camera/capturemode/f;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 321
    if-eqz v1, :cond_20

    .line 323
    new-instance v3, Lcom/htc/camera/dualcamera/DualCaptureMode;

    invoke-direct {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getSettingsName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/htc/camera/dualcamera/DualCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 324
    sget-object v4, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iput-object v4, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraType:Lcom/htc/camera/CameraType;

    .line 325
    sget-object v4, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    iput-object v4, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;

    move v11, v1

    move-object v1, v3

    move v3, v11

    .line 333
    :goto_e
    if-eqz v3, :cond_4

    .line 335
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v4, "This is dual-camera mode"

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v2, 0x1

    .line 340
    :cond_4
    if-nez v2, :cond_6

    .line 342
    if-nez v8, :cond_5

    .line 344
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v2, "camera-type"

    const-class v4, Lcom/htc/camera/CameraType;

    sget-object v5, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v2, v4, v5}, Lcom/htc/camera/capturemode/f;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraType:Lcom/htc/camera/CameraType;

    .line 345
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v2, "camera-mode"

    const-class v4, Lcom/htc/camera/CameraMode;

    sget-object v5, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1, v2, v4, v5}, Lcom/htc/camera/capturemode/f;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraMode;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;

    .line 347
    :cond_5
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 349
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "This is main camera mode"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v1, Lcom/htc/camera/capturemode/c;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;

    invoke-direct {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getSettingsName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v2, v4}, Lcom/htc/camera/capturemode/c;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraMode;Ljava/lang/String;)V

    .line 360
    :cond_6
    :goto_f
    if-eqz v1, :cond_1a

    .line 362
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v4, "Default capture mode : "

    invoke-static {v2, v4, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    invoke-direct {p0, v1}, Lcom/htc/camera/capturemode/UserCaptureMode;->bindToInternalCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)V

    .line 364
    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 370
    :goto_10
    if-eqz v7, :cond_1b

    .line 428
    :cond_7
    :goto_11
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v1, v1, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/capturemode/UserCaptureMode$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/capturemode/UserCaptureMode$3;-><init>(Lcom/htc/camera/capturemode/UserCaptureMode;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 439
    if-eqz v8, :cond_8

    .line 440
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->saveStates()V

    .line 443
    :cond_8
    iget-object v1, p1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_IsPreviewStartedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 445
    return-void

    .line 133
    :cond_9
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_0

    .line 144
    :cond_a
    invoke-direct {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getSettingsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/htc/camera/capturemode/CaptureMode;->clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_1

    .line 149
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 165
    :cond_c
    instance-of v1, v2, Lcom/htc/camera/zoe/ZoeCaptureMode;

    move v7, v1

    goto/16 :goto_3

    .line 184
    :pswitch_0
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 199
    :cond_d
    if-eqz v2, :cond_e

    .line 201
    iget-object v1, v2, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 202
    if-eqz v1, :cond_e

    .line 204
    sget-object v3, Lcom/htc/camera/capturemode/UserCaptureMode$4;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_1

    .line 212
    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    iget-object v5, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v3, v5, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_12
    move-object v1, v2

    .line 216
    check-cast v1, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v1, v3}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    .line 217
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/splitcapture/SplitCaptureType;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultSplitCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 218
    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraType:Lcom/htc/camera/CameraType;

    .line 219
    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;

    :cond_e
    move-object v3, v2

    goto/16 :goto_5

    .line 208
    :pswitch_1
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v1, v3, v5}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_12

    .line 223
    :cond_f
    const/4 v1, 0x0

    move v6, v1

    goto/16 :goto_6

    .line 242
    :cond_10
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_7

    .line 261
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 263
    :goto_13
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/htc/camera/photopattern/IPhotoBoothController;->DEFAULTPATTERN:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v1, v3, v5}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown photoBooth Pattern : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 268
    :cond_11
    if-eqz v3, :cond_12

    iget-object v1, v3, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v1

    if-nez v1, :cond_12

    .line 270
    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v1

    const-class v2, Lcom/htc/camera/photopattern/IPhotoBoothController;

    invoke-virtual {v1, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/photopattern/IPhotoBoothController;

    .line 272
    if-eqz v1, :cond_13

    .line 273
    iget-object v1, v1, Lcom/htc/camera/photopattern/IPhotoBoothController;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    .line 278
    :goto_14
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    iget-object v5, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v5, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    iget-object v2, v3, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    iget-object v5, v3, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v5, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_12
    move-object v2, v3

    goto/16 :goto_9

    .line 276
    :cond_13
    sget-object v1, Lcom/htc/camera/photopattern/IPhotoBoothController;->DEFAULTPATTERN:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    goto :goto_14

    .line 282
    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 304
    :cond_15
    instance-of v3, v2, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    move v11, v3

    move-object v3, v2

    move v2, v11

    goto/16 :goto_c

    .line 307
    :cond_16
    const/4 v3, 0x0

    move v11, v3

    move-object v3, v2

    move v2, v11

    goto/16 :goto_c

    .line 329
    :cond_17
    instance-of v1, v3, Lcom/htc/camera/dualcamera/DualCaptureMode;

    move v11, v1

    move-object v1, v3

    move v3, v11

    goto/16 :goto_e

    .line 332
    :cond_18
    const/4 v1, 0x0

    move v11, v1

    move-object v1, v3

    move v3, v11

    goto/16 :goto_e

    .line 354
    :cond_19
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "This is Selfie mode"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v1, Lcom/htc/camera/capturemode/b;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;

    invoke-direct {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getSettingsName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v2, v4}, Lcom/htc/camera/capturemode/b;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraMode;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 367
    :cond_1a
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "Cannot find default capture mode"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 375
    :cond_1b
    if-eqz v6, :cond_1c

    .line 377
    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v1

    const-class v2, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v1, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/IEffectManager;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 378
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitCaptureType;->DualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 379
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v2, Lcom/htc/camera/effect/EffectContext;->defaultEffectClass:Ljava/lang/Class;

    goto/16 :goto_11

    .line 384
    :cond_1c
    if-nez v3, :cond_7

    .line 389
    if-nez v8, :cond_1f

    .line 391
    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v1

    const-class v2, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v1, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/IEffectManager;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 392
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v2, "default-effect"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/capturemode/f;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v3, "default-scene"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/camera/capturemode/f;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v4, "default-video-scene"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/camera/capturemode/f;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 395
    iget-object v4, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v4, :cond_7

    .line 397
    iget-object v4, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v4, v2}, Lcom/htc/camera/effect/IEffectManager;->findEffectClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 398
    iget-object v5, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v6, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v6, v1}, Lcom/htc/camera/effect/IEffectManager;->findEffectClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v5, Lcom/htc/camera/effect/EffectContext;->defaultEffectClass:Ljava/lang/Class;

    .line 399
    if-eqz v4, :cond_1d

    const-class v1, Lcom/htc/camera/effect/VideoSceneBase;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 401
    :cond_1d
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v4, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v4, v2}, Lcom/htc/camera/effect/IEffectManager;->findEffectClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/camera/effect/EffectContext;->defaultSceneClass:Ljava/lang/Class;

    .line 402
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v2, v3}, Lcom/htc/camera/effect/IEffectManager;->findEffectClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/camera/effect/EffectContext;->defaultVideoSceneClass:Ljava/lang/Class;

    goto/16 :goto_11

    .line 407
    :cond_1e
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v3, v2}, Lcom/htc/camera/effect/IEffectManager;->findEffectClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/camera/effect/EffectContext;->defaultVideoSceneClass:Ljava/lang/Class;

    goto/16 :goto_11

    .line 413
    :cond_1f
    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v1

    const-class v2, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v1, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/IEffectManager;

    iput-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 414
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v1, :cond_7

    .line 416
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v2, Lcom/htc/camera/effect/EffectContext;->defaultEffectClass:Ljava/lang/Class;

    .line 417
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v2, Lcom/htc/camera/effect/EffectContext;->defaultSceneClass:Ljava/lang/Class;

    .line 418
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v2, Lcom/htc/camera/effect/EffectContext;->defaultVideoSceneClass:Ljava/lang/Class;

    goto/16 :goto_11

    .line 261
    :catch_1
    move-exception v1

    goto/16 :goto_13

    :cond_20
    move v11, v1

    move-object v1, v3

    move v3, v11

    goto/16 :goto_e

    :cond_21
    move v2, v1

    goto/16 :goto_d

    :cond_22
    move v11, v3

    move-object v3, v2

    move v2, v11

    goto/16 :goto_c

    :cond_23
    move v1, v4

    goto/16 :goto_b

    :cond_24
    move-object v1, v2

    goto/16 :goto_8

    :cond_25
    move v7, v1

    goto/16 :goto_3

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 204
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/htc/camera/capturemode/UserCaptureMode;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/camera/capturemode/UserCaptureMode;->setupDefaultEffectScene(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/capturemode/UserCaptureMode;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->onDefaultCaptureModeReleased()V

    return-void
.end method

.method private bindToInternalCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    iget-object v1, p1, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    iget-object v1, p1, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->isDualCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p1, Lcom/htc/camera/capturemode/CaptureMode;->isDualCameraMode:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p1, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->isPhotoSceneSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p1, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoSceneSupported:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 457
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p1, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->isVideoSceneSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p1, Lcom/htc/camera/capturemode/CaptureMode;->isVideoSceneSupported:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->needRestartPreviewAfterEntering:Lcom/htc/camera/property/Property;

    iget-object v1, p1, Lcom/htc/camera/capturemode/CaptureMode;->needRestartPreviewAfterEntering:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 460
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->use3DPreviewRendering:Lcom/htc/camera/property/Property;

    iget-object v1, p1, Lcom/htc/camera/capturemode/CaptureMode;->use3DPreviewRendering:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    iget-object v1, p1, Lcom/htc/camera/capturemode/CaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 462
    return-void
.end method

.method private getSettingsName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user-mode-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onDefaultCaptureModeReleased()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Released:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Releasing:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onDefaultCaptureModeReleased() - Release capture mode because default capture mode is released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->release()V

    .line 548
    :cond_0
    return-void
.end method

.method private restoreDefaultEffectScene(I)V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContextHandle:Lcom/htc/camera/CloseableHandle;

    invoke-static {v0, p1}, Lcom/htc/camera/CloseableHandle;->close(Lcom/htc/camera/CloseableHandle;I)Lcom/htc/camera/CloseableHandle;

    .line 816
    return-void
.end method

.method private setupDefaultEffectScene(I)V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->isDualCameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    :cond_0
    or-int/lit8 p1, p1, 0xa

    .line 923
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-nez v0, :cond_2

    .line 924
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContextHandle:Lcom/htc/camera/CloseableHandle;

    invoke-static {v0}, Lcom/htc/camera/CloseableHandle;->isValid(Lcom/htc/camera/CloseableHandle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 927
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectContext;->clearEffectsAndScenes()V

    .line 928
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/effect/IEffectManager;->setEffectContext(Lcom/htc/camera/effect/EffectContext;I)Lcom/htc/camera/CloseableHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContextHandle:Lcom/htc/camera/CloseableHandle;

    .line 944
    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/htc/camera/capturemode/UserCaptureMode;->clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/UserCaptureMode;

    move-result-object v0

    return-object v0
.end method

.method public clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/UserCaptureMode;
    .locals 2

    .prologue
    .line 470
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDefaultCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v1, "display-name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/capturemode/f;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getSmallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserDefined()Z
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/htc/camera/CameraSettings;
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getCustomSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    .line 533
    :goto_0
    if-eqz v0, :cond_1

    .line 535
    :goto_1
    return-object v0

    .line 532
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 535
    :cond_1
    new-instance v0, Lcom/htc/camera/capturemode/f;

    invoke-virtual {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getSettingsName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/capturemode/f;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onEnter(Lcom/htc/camera/capturemode/CaptureMode;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 676
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v0, :cond_5

    .line 679
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;->enter(Lcom/htc/camera/capturemode/CaptureMode;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onEnter() - Fail to enter default capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 708
    :goto_0
    return v0

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultSplitCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    if-eqz v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    check-cast v0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->setCapturePattern(Ljava/lang/String;)V

    .line 693
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;

    if-eqz v0, :cond_3

    .line 694
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    iput-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;

    .line 704
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_OPEN:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 705
    invoke-direct {p0, v2}, Lcom/htc/camera/capturemode/UserCaptureMode;->setupDefaultEffectScene(I)V

    .line 708
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 698
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onEnter() - No default capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 699
    goto :goto_0
.end method

.method protected onExit(Lcom/htc/camera/capturemode/CaptureMode;I)V
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;->exit(Lcom/htc/camera/capturemode/CaptureMode;I)V

    .line 765
    :cond_0
    const/4 v0, 0x0

    .line 766
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 767
    const/4 v0, 0x2

    .line 768
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/camera/capturemode/UserCaptureMode;->restoreDefaultEffectScene(I)V

    .line 769
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_IsPreviewStartedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 782
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->release()V

    .line 785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 789
    :cond_0
    invoke-super {p0}, Lcom/htc/camera/capturemode/CaptureMode;->onRelease()V

    .line 790
    return-void
.end method

.method final saveStates()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 823
    .line 826
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-nez v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_6

    .line 830
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v2, v2, Lcom/htc/camera/effect/EffectContext;->defaultEffectClass:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/htc/camera/effect/IEffectManager;->findEffect(Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    .line 831
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v3, v3, Lcom/htc/camera/effect/EffectContext;->defaultSceneClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/htc/camera/effect/IEffectManager;->findEffect(Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v2

    .line 832
    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v4, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v4, v4, Lcom/htc/camera/effect/EffectContext;->defaultVideoSceneClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lcom/htc/camera/effect/IEffectManager;->findEffect(Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v4

    .line 833
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v3

    .line 834
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    .line 835
    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v2

    move-object v2, v3

    .line 837
    :goto_3
    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v4, "camera-mode"

    iget-object v5, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v3, v4, v5}, Lcom/htc/camera/capturemode/f;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 838
    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v4, "camera-type"

    iget-object v5, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v3, v4, v5}, Lcom/htc/camera/capturemode/f;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 839
    iget-object v3, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v4, "default-effect"

    invoke-virtual {v3, v4, v2}, Lcom/htc/camera/capturemode/f;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 840
    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v3, "default-scene"

    invoke-virtual {v2, v3, v1}, Lcom/htc/camera/capturemode/f;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 841
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v2, "default-video-scene"

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/capturemode/f;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 842
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v1, "is-dual-camera-mode"

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v2, v2, Lcom/htc/camera/dualcamera/DualCaptureMode;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/capturemode/f;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 843
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v1, "is-human-joint-mode"

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v2, v2, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/capturemode/f;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 844
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v1, "is-zoe-mode"

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/capturemode/f;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 845
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultSplitCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v1, "default-split-capture-type"

    iget-object v2, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultSplitCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/capturemode/f;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 847
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_2

    .line 848
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v2, "defaut-photo-booth-pattern"

    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/capturemode/f;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 849
    :cond_2
    return-void

    :cond_3
    move-object v3, v1

    .line 833
    goto/16 :goto_0

    :cond_4
    move-object v2, v1

    .line 834
    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    .line 835
    goto/16 :goto_2

    :cond_6
    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_3
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_Settings:Lcom/htc/camera/capturemode/f;

    const-string v1, "display-name"

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/capturemode/f;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 857
    return-void
.end method

.method protected setEffectContextOnEnter(Lcom/htc/camera/effect/EffectContext;)V
    .locals 0

    .prologue
    .line 865
    return-void
.end method

.method public final setPhotoBoothPattern(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 897
    if-nez p1, :cond_0

    .line 899
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "setPhotoBoothPattern() - No pattern type"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :goto_0
    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "setPhotoBoothPattern() - Not a photoBooth mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    if-nez v0, :cond_2

    .line 909
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "setPhotoBoothPattern() - No inner photoBooth mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 913
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    check-cast v0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    invoke-virtual {v0, p1}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->setCapturePattern(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setSplitCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V
    .locals 2

    .prologue
    .line 872
    if-nez p1, :cond_0

    .line 874
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "setSplitCaptureType() - No capture type"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "setSplitCaptureType() - Not a split-capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    if-eqz v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "setSplitCaptureType() - No inner split-capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 887
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->threadAccessCheck()V

    .line 890
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-virtual {v0, p1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    goto :goto_0
.end method

.method public updateDefaultSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 953
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "updateDefaultSettings() - No need to update default effect/scene for Zoe mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    iput-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultSplitCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 962
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_3

    .line 965
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;

    if-eqz v0, :cond_1

    .line 967
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    iput-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;

    .line 968
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    check-cast v0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;

    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_CameraMode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->setDefaultCameraMode(Lcom/htc/camera/CameraMode;)Z

    .line 972
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lcom/htc/camera/effect/EffectContext;->defaultEffectClass:Ljava/lang/Class;

    .line 973
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lcom/htc/camera/effect/EffectContext;->defaultSceneClass:Ljava/lang/Class;

    .line 974
    iget-object v1, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lcom/htc/camera/effect/EffectContext;->defaultVideoSceneClass:Ljava/lang/Class;

    .line 977
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 979
    invoke-direct {p0, v2}, Lcom/htc/camera/capturemode/UserCaptureMode;->restoreDefaultEffectScene(I)V

    .line 980
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    invoke-direct {p0, v2}, Lcom/htc/camera/capturemode/UserCaptureMode;->setupDefaultEffectScene(I)V

    .line 991
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/UserCaptureMode;->saveStates()V

    goto/16 :goto_0

    .line 986
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/capturemode/UserCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "updateDefaultSettings() - No IEffectManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
