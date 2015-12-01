.class public Lcom/htc/camera/component/FlashController;
.super Lcom/htc/camera/component/CameraComponent;
.source "FlashController.java"

# interfaces
.implements Lcom/htc/camera/IFlashController;


# instance fields
.field private m_DefaultPhotoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

.field private m_DefaultVideoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

.field private m_DisabledHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_FlashModeChangedCallback:Lcom/htc/camera/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/f",
            "<",
            "Lcom/htc/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field private m_ProviderHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/component/FlashController$FlashProviderHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_SettingsManager:Lcom/htc/camera/ISettingsManager;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 82
    const-string v0, "Flash Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DisabledHandles:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/htc/camera/component/FlashController$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/FlashController$1;-><init>(Lcom/htc/camera/component/FlashController;)V

    iput-object v0, p0, Lcom/htc/camera/component/FlashController;->m_FlashModeChangedCallback:Lcom/htc/camera/base/f;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/FlashController;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->applyFlashMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/FlashController;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->checkFlash()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/FlashController;)Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->getTopMostFlashProviderHandle()Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/FlashController;Lcom/htc/camera/FlashProvider;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/camera/component/FlashController;->deactivateProvider(Lcom/htc/camera/FlashProvider;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/component/FlashController;Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/FlashController;->activateProvider(Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/component/FlashController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/FlashController;)Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DefaultVideoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/FlashController;)Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DefaultPhotoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    return-object v0
.end method

.method private activateProvider(Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V
    .locals 2

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1, p2}, Lcom/htc/camera/FlashProvider;->activate(Lcom/htc/camera/FlashProvider;)Z

    .line 90
    sget-object v0, Lcom/htc/camera/FlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    iget-object v1, p0, Lcom/htc/camera/component/FlashController;->m_FlashModeChangedCallback:Lcom/htc/camera/base/f;

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/FlashProvider;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 92
    :cond_0
    return-void
.end method

.method private applyFlashMode()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 111
    sget-object v0, Lcom/htc/camera/component/FlashController;->PROPERTY_FLASH_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FlashController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/SupportState;

    .line 112
    sget-object v1, Lcom/htc/camera/component/FlashController;->PROPERTY_IS_FLASH_DISABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/FlashController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 113
    sget-object v1, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    if-ne v0, v1, :cond_4

    .line 116
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->getTopMostFlashProvider()Lcom/htc/camera/FlashProvider;

    move-result-object v1

    .line 117
    if-nez v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->TAG:Ljava/lang/String;

    const-string v1, "applyFlashMode() - No flash provider"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/FlashProvider;->isActive()Z

    move-result v5

    if-nez v5, :cond_3

    .line 124
    sget-object v1, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    .line 140
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/camera/component/FlashController;->TAG:Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "applyFlashMode() - FlashSupportState:"

    aput-object v7, v6, v3

    aput-object v0, v6, v2

    const/4 v0, 0x2

    const-string v7, ", FlashEnabled:"

    aput-object v7, v6, v0

    const/4 v7, 0x3

    if-nez v4, :cond_5

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x4

    const-string v2, ", FlashMode:"

    aput-object v2, v6, v0

    const/4 v0, 0x5

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    sget-object v0, Lcom/htc/camera/component/FlashController;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/FlashController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->setFlashMode(Lcom/htc/camera/FlashMode;)V

    goto :goto_0

    .line 128
    :cond_3
    sget-object v5, Lcom/htc/camera/FlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v5}, Lcom/htc/camera/FlashProvider;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/FlashMode;

    .line 131
    if-eqz v4, :cond_2

    .line 132
    sget-object v1, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    goto :goto_1

    .line 138
    :cond_4
    sget-object v1, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    goto :goto_1

    :cond_5
    move v0, v3

    .line 140
    goto :goto_2
.end method

.method private checkFlash()V
    .locals 4

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 159
    const/4 v0, 0x0

    .line 160
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->supportFlashLight()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v0, 0x1

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/FlashController;->TAG:Ljava/lang/String;

    const-string v2, "checkFlash() - Has flash: "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    sget-object v1, Lcom/htc/camera/component/FlashController;->PROPERTY_FLASH_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/component/FlashController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->applyFlashMode()V

    .line 176
    :cond_1
    return-void

    .line 173
    :cond_2
    sget-object v0, Lcom/htc/camera/SupportState;->NOT_SUPPORT:Lcom/htc/camera/SupportState;

    goto :goto_0
.end method

.method private deactivateProvider(Lcom/htc/camera/FlashProvider;)V
    .locals 2

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 98
    sget-object v0, Lcom/htc/camera/FlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    iget-object v1, p0, Lcom/htc/camera/component/FlashController;->m_FlashModeChangedCallback:Lcom/htc/camera/base/f;

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/FlashProvider;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 99
    invoke-virtual {p1}, Lcom/htc/camera/FlashProvider;->deactivate()V

    .line 101
    :cond_0
    return-void
.end method

.method private getTopMostFlashProvider()Lcom/htc/camera/FlashProvider;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 258
    if-ltz v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    iget-object v0, v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTopMostFlashProviderHandle()Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 266
    if-ltz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    .line 269
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DefaultPhotoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DefaultPhotoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    iget-object v0, v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    invoke-virtual {v0}, Lcom/htc/camera/FlashProvider;->release()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DefaultVideoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DefaultVideoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    iget-object v0, v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    invoke-virtual {v0}, Lcom/htc/camera/FlashProvider;->release()V

    .line 190
    :cond_1
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->deinitializeOverride()V

    .line 191
    return-void
.end method

.method public disableFlash()Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FlashController;->disableFlash(I)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public disableFlash(I)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 205
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashController;->threadAccessCheck()V

    .line 207
    new-instance v0, Lcom/htc/camera/SessionHandle;

    invoke-direct {v0}, Lcom/htc/camera/SessionHandle;-><init>()V

    .line 208
    iget-object v1, p0, Lcom/htc/camera/component/FlashController;->m_DisabledHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/htc/camera/component/FlashController;->m_DisabledHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 213
    sget-object v1, Lcom/htc/camera/component/FlashController;->PROPERTY_IS_FLASH_DISABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/component/FlashController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 214
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->applyFlashMode()V

    .line 217
    :cond_0
    return-object v0
.end method

.method public enableFlash(Lcom/htc/camera/Handle;)V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/component/FlashController;->enableFlash(Lcom/htc/camera/Handle;I)V

    .line 227
    return-void
.end method

.method public enableFlash(Lcom/htc/camera/Handle;I)V
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashController;->threadAccessCheck()V

    .line 233
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DisabledHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DisabledHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DisabledHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lcom/htc/camera/component/FlashController;->PROPERTY_IS_FLASH_DISABLED:Lcom/htc/camera/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/FlashController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 244
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->applyFlashMode()V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->TAG:Ljava/lang/String;

    const-string v1, "enableFlash() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 281
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->getTopMostFlashProviderHandle()Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    .line 284
    iget-object v0, v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/FlashController;->activateProvider(Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V

    .line 285
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->applyFlashMode()V

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 298
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 300
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 303
    const-class v0, Lcom/htc/camera/ISettingsManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FlashController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ISettingsManager;

    iput-object v0, p0, Lcom/htc/camera/component/FlashController;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    .line 306
    new-instance v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    new-instance v2, Lcom/htc/camera/DefaultPhotoFlashProvider;

    invoke-direct {v2, v1}, Lcom/htc/camera/DefaultPhotoFlashProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-direct {v0, v2, v3}, Lcom/htc/camera/component/FlashController$FlashProviderHandle;-><init>(Lcom/htc/camera/FlashProvider;I)V

    iput-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DefaultPhotoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    .line 307
    new-instance v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    new-instance v2, Lcom/htc/camera/DefaultVideoFlashProvider;

    invoke-direct {v2, v1}, Lcom/htc/camera/DefaultVideoFlashProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-direct {v0, v2, v3}, Lcom/htc/camera/component/FlashController$FlashProviderHandle;-><init>(Lcom/htc/camera/FlashProvider;I)V

    iput-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DefaultVideoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    .line 308
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DefaultVideoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    iget-object v0, v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    invoke-direct {p0, v0, v4}, Lcom/htc/camera/component/FlashController;->activateProvider(Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V

    .line 311
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/htc/camera/component/FlashController;->m_DefaultVideoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 318
    :goto_0
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->applyFlashMode()V

    .line 321
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->triggers:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/component/FlashController$2;

    sget-object v3, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_OPEN:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/htc/camera/component/FlashController$2;-><init>(Lcom/htc/camera/component/FlashController;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 331
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/FlashController$3;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/FlashController$3;-><init>(Lcom/htc/camera/component/FlashController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isSwitchingCamera:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/FlashController$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FlashController$4;-><init>(Lcom/htc/camera/component/FlashController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 362
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/FlashController$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FlashController$5;-><init>(Lcom/htc/camera/component/FlashController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 403
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    sget-object v2, Lcom/htc/camera/ISettingsManager;->EVENT_SETTINGS_CHANGING:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/component/FlashController$6;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/FlashController$6;-><init>(Lcom/htc/camera/component/FlashController;)V

    invoke-interface {v0, v2, v3}, Lcom/htc/camera/ISettingsManager;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 421
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/component/FlashController$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FlashController$7;-><init>(Lcom/htc/camera/component/FlashController;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 430
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_DefaultPhotoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    iget-object v0, v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    invoke-direct {p0, v0, v4}, Lcom/htc/camera/component/FlashController;->activateProvider(Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V

    .line 316
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/htc/camera/component/FlashController;->m_DefaultPhotoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public nextFlashMode()Lcom/htc/camera/FlashMode;
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashController;->threadAccessCheck()V

    .line 442
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->getTopMostFlashProvider()Lcom/htc/camera/FlashProvider;

    move-result-object v1

    .line 443
    if-nez v1, :cond_0

    .line 445
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->TAG:Ljava/lang/String;

    const-string v1, "nextFlashMode() - No flash provider"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x0

    .line 452
    :goto_0
    return-object v0

    .line 449
    :cond_0
    invoke-virtual {v1}, Lcom/htc/camera/FlashProvider;->getNextFlashMode()Lcom/htc/camera/FlashMode;

    move-result-object v0

    .line 450
    invoke-virtual {v1, v0}, Lcom/htc/camera/FlashProvider;->setFlashMode(Lcom/htc/camera/FlashMode;)Z

    goto :goto_0
.end method

.method public restoreFlashProvider(Lcom/htc/camera/Handle;I)V
    .locals 5

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashController;->threadAccessCheck()V

    .line 463
    if-nez p1, :cond_1

    .line 465
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->TAG:Ljava/lang/String;

    const-string v1, "restoreFlashProvider() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    instance-of v0, p1, Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    if-eqz v0, :cond_2

    .line 470
    check-cast p1, Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    .line 476
    iget-object v1, p1, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    .line 477
    if-nez v1, :cond_3

    .line 479
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->TAG:Ljava/lang/String;

    const-string v1, "restoreFlashProvider() - No flash provider"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->TAG:Ljava/lang/String;

    const-string v1, "restoreFlashProvider() - Not flash handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 485
    if-gez v2, :cond_4

    .line 487
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->TAG:Ljava/lang/String;

    const-string v1, "restoreFlashProvider() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_5

    const/4 v0, 0x1

    .line 492
    :goto_1
    iget-object v3, p0, Lcom/htc/camera/component/FlashController;->TAG:Ljava/lang/String;

    const-string v4, "restoreFlashProvider()"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v3, p0, Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 496
    if-eqz v0, :cond_0

    .line 499
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FlashController;->removeMessages(I)V

    .line 502
    invoke-direct {p0, v1}, Lcom/htc/camera/component/FlashController;->deactivateProvider(Lcom/htc/camera/FlashProvider;)V

    .line 505
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->getTopMostFlashProvider()Lcom/htc/camera/FlashProvider;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/FlashController;->activateProvider(Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V

    .line 509
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->applyFlashMode()V

    goto :goto_0

    .line 490
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setFlashProvider(Lcom/htc/camera/FlashProvider;I)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashController;->threadAccessCheck()V

    .line 545
    if-nez p1, :cond_0

    .line 547
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->TAG:Ljava/lang/String;

    const-string v1, "setFlashProvider() - Flash provider is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const/4 v0, 0x0

    .line 571
    :goto_0
    return-object v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/FlashController;->TAG:Ljava/lang/String;

    const-string v1, "setFlashProvider()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FlashController;->removeMessages(I)V

    .line 557
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->getTopMostFlashProvider()Lcom/htc/camera/FlashProvider;

    move-result-object v1

    .line 558
    if-eqz v1, :cond_1

    .line 560
    invoke-direct {p0, v1}, Lcom/htc/camera/component/FlashController;->deactivateProvider(Lcom/htc/camera/FlashProvider;)V

    .line 564
    :cond_1
    new-instance v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/htc/camera/component/FlashController$FlashProviderHandle;-><init>(Lcom/htc/camera/FlashProvider;I)V

    .line 565
    iget-object v2, p0, Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-direct {p0, p1, v1}, Lcom/htc/camera/component/FlashController;->activateProvider(Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V

    .line 569
    invoke-direct {p0}, Lcom/htc/camera/component/FlashController;->applyFlashMode()V

    goto :goto_0
.end method
