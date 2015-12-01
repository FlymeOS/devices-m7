.class public abstract Lcom/htc/camera/bi/MediaStatisticController;
.super Lcom/htc/camera/component/cm;
.source "MediaStatisticController.java"


# instance fields
.field protected mComposeKey:Ljava/lang/String;

.field protected mComposeKeysTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashController:Lcom/htc/camera/IFlashController;

.field protected mIsResetToDefault:Z

.field protected mResetToDefaultCompleted:Z

.field protected m_mediaTaken:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    .line 51
    iput-boolean v1, p0, Lcom/htc/camera/bi/MediaStatisticController;->mIsResetToDefault:Z

    .line 52
    iput-boolean v1, p0, Lcom/htc/camera/bi/MediaStatisticController;->mResetToDefaultCompleted:Z

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/bi/MediaStatisticController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/bi/MediaStatisticController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/bi/MediaStatisticController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 250
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 254
    return-void
.end method

.method protected getCameraTypeKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    sget-object v0, Lcom/htc/camera/bi/MediaStatisticController$10;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-virtual {p0}, Lcom/htc/camera/bi/MediaStatisticController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 282
    const-string v0, "0"

    :goto_0
    return-object v0

    .line 278
    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    .line 279
    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    .line 280
    :pswitch_2
    const-string v0, "1"

    goto :goto_0

    .line 281
    :pswitch_3
    const-string v0, "3"

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getEffectKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/htc/camera/bi/MediaStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 289
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 290
    instance-of v1, v0, Lcom/htc/camera/effect/am;

    if-eqz v1, :cond_0

    .line 291
    const-string v0, "0"

    .line 323
    :goto_0
    return-object v0

    .line 292
    :cond_0
    instance-of v1, v0, Lcom/htc/camera/effect/DistortionEffect;

    if-eqz v1, :cond_1

    .line 293
    const-string v0, "21"

    goto :goto_0

    .line 294
    :cond_1
    instance-of v1, v0, Lcom/htc/camera/effect/VignetteEffect;

    if-eqz v1, :cond_2

    .line 295
    const-string v0, "22"

    goto :goto_0

    .line 296
    :cond_2
    instance-of v1, v0, Lcom/htc/camera/effect/DepthOfFieldEffect;

    if-eqz v1, :cond_3

    .line 297
    const-string v0, "23"

    goto :goto_0

    .line 298
    :cond_3
    instance-of v1, v0, Lcom/htc/camera/effect/DotsEffect;

    if-eqz v1, :cond_4

    .line 299
    const-string v0, "24"

    goto :goto_0

    .line 300
    :cond_4
    instance-of v1, v0, Lcom/htc/camera/effect/SplitToningMonoEffect;

    if-eqz v1, :cond_5

    .line 301
    const-string v0, "25"

    goto :goto_0

    .line 302
    :cond_5
    instance-of v1, v0, Lcom/htc/camera/effect/ai;

    if-eqz v1, :cond_6

    .line 303
    const-string v0, "26"

    goto :goto_0

    .line 304
    :cond_6
    instance-of v1, v0, Lcom/htc/camera/effect/bk;

    if-eqz v1, :cond_7

    .line 305
    const-string v0, "27"

    goto :goto_0

    .line 306
    :cond_7
    instance-of v1, v0, Lcom/htc/camera/effect/bm;

    if-eqz v1, :cond_8

    .line 307
    const-string v0, "28"

    goto :goto_0

    .line 308
    :cond_8
    instance-of v1, v0, Lcom/htc/camera/effect/bi;

    if-eqz v1, :cond_9

    .line 309
    const-string v0, "29"

    goto :goto_0

    .line 310
    :cond_9
    instance-of v1, v0, Lcom/htc/camera/effect/v;

    if-eqz v1, :cond_a

    .line 311
    const-string v0, "1"

    goto :goto_0

    .line 312
    :cond_a
    instance-of v1, v0, Lcom/htc/camera/effect/aw;

    if-eqz v1, :cond_b

    .line 313
    const-string v0, "2"

    goto :goto_0

    .line 314
    :cond_b
    instance-of v1, v0, Lcom/htc/camera/effect/ak;

    if-eqz v1, :cond_c

    .line 315
    const-string v0, "3"

    goto :goto_0

    .line 316
    :cond_c
    instance-of v1, v0, Lcom/htc/camera/effect/az;

    if-eqz v1, :cond_d

    .line 317
    const-string v0, "4"

    goto :goto_0

    .line 318
    :cond_d
    instance-of v1, v0, Lcom/htc/camera/effect/ar;

    if-eqz v1, :cond_e

    .line 319
    const-string v0, "5"

    goto :goto_0

    .line 320
    :cond_e
    instance-of v0, v0, Lcom/htc/camera/effect/a;

    if-eqz v0, :cond_f

    .line 321
    const-string v0, "6"

    goto :goto_0

    .line 323
    :cond_f
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getMediaCountInComposeKeyTable(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 258
    if-nez p1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 263
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected getReviewDurationKeyValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    const/4 v0, -0x1

    .line 330
    sget-object v1, Lcom/htc/camera/bi/MediaStatisticController$10;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-virtual {p0}, Lcom/htc/camera/bi/MediaStatisticController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 341
    :goto_0
    :pswitch_0
    sparse-switch v0, :sswitch_data_0

    .line 346
    const-string v0, "*"

    :goto_1
    return-object v0

    .line 333
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/bi/MediaStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->mainReviewDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    long-to-int v0, v0

    .line 334
    goto :goto_0

    .line 337
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/camera/bi/MediaStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->frontReviewDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 343
    :sswitch_0
    const-string v0, "0"

    goto :goto_1

    .line 344
    :sswitch_1
    const-string v0, "5"

    goto :goto_1

    .line 345
    :sswitch_2
    const-string v0, "10"

    goto :goto_1

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 70
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 73
    invoke-virtual {p0}, Lcom/htc/camera/bi/MediaStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 75
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/MediaStatisticController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController;->mFlashController:Lcom/htc/camera/IFlashController;

    .line 77
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/bi/MediaStatisticController$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/MediaStatisticController$1;-><init>(Lcom/htc/camera/bi/MediaStatisticController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 87
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/bi/MediaStatisticController$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/MediaStatisticController$2;-><init>(Lcom/htc/camera/bi/MediaStatisticController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 103
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/bi/MediaStatisticController$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/MediaStatisticController$3;-><init>(Lcom/htc/camera/bi/MediaStatisticController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 121
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/bi/MediaStatisticController$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/MediaStatisticController$4;-><init>(Lcom/htc/camera/bi/MediaStatisticController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 137
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/bi/MediaStatisticController$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/MediaStatisticController$5;-><init>(Lcom/htc/camera/bi/MediaStatisticController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 155
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/MediaStatisticController$6;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/MediaStatisticController$6;-><init>(Lcom/htc/camera/bi/MediaStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 204
    invoke-virtual {p0}, Lcom/htc/camera/bi/MediaStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 205
    if-eqz v0, :cond_0

    .line 207
    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/MediaStatisticController$7;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/MediaStatisticController$7;-><init>(Lcom/htc/camera/bi/MediaStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController;->mFlashController:Lcom/htc/camera/IFlashController;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController;->mFlashController:Lcom/htc/camera/IFlashController;

    sget-object v1, Lcom/htc/camera/IFlashController;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/bi/MediaStatisticController$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/MediaStatisticController$8;-><init>(Lcom/htc/camera/bi/MediaStatisticController;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/IFlashController;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v1, Lcom/htc/camera/bi/MediaStatisticController$9;

    invoke-virtual {p0}, Lcom/htc/camera/bi/MediaStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    const-string v3, "Settings.StorageSlot"

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/camera/bi/MediaStatisticController$9;-><init>(Lcom/htc/camera/bi/MediaStatisticController;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 243
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No IFlashController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract rebuildComposeKey()Ljava/lang/String;
.end method

.method protected rebuildComposeKeyTable(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/htc/camera/bi/MediaStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_0

    .line 355
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 362
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v2, p0, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 369
    :cond_0
    return-void
.end method

.method protected setMediaCountInComposeKeyTable(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 271
    iget-object v1, p0, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    return-void
.end method

.method protected abstract writeBehaviorData(Ljava/lang/String;)V
.end method
