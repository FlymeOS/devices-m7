.class final Lcom/htc/camera/component/SettingsManager;
.super Lcom/htc/camera/component/CameraComponent;
.source "SettingsManager.java"

# interfaces
.implements Lcom/htc/camera/ISettingsManager;


# instance fields
.field private final m_DefaultSettings:Lcom/htc/camera/CameraSettings;

.field private m_Settings:Lcom/htc/camera/CameraSettings;

.field private final m_SettingsHandles:Lcom/htc/camera/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/s",
            "<",
            "Lcom/htc/camera/component/SettingsManager$SettingsHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 55
    const-string v0, "Settings Manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 47
    new-instance v0, Lcom/htc/camera/s;

    invoke-direct {v0}, Lcom/htc/camera/s;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/SettingsManager;->m_SettingsHandles:Lcom/htc/camera/s;

    .line 58
    new-instance v0, Lcom/htc/camera/CameraSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/camera/CameraSettings;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/component/SettingsManager;->m_DefaultSettings:Lcom/htc/camera/CameraSettings;

    .line 59
    sget-object v0, Lcom/htc/camera/component/SettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    iget-object v1, p0, Lcom/htc/camera/component/SettingsManager;->m_DefaultSettings:Lcom/htc/camera/CameraSettings;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/SettingsManager;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/Handle;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/SettingsManager;->restoreSettings(Lcom/htc/camera/Handle;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/SettingsManager;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->m_DefaultSettings:Lcom/htc/camera/CameraSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/SettingsManager;->restoreSettingsInternal(Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)Z
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/SettingsManager;->setSettingsInternal(Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)Z

    move-result v0

    return v0
.end method

.method private restoreSettings(Lcom/htc/camera/Handle;I)V
    .locals 2

    .prologue
    .line 121
    if-nez p1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreSettings() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    instance-of v0, p1, Lcom/htc/camera/component/SettingsManager$SettingsHandle;

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreSettings() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsManager;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    check-cast p1, Lcom/htc/camera/component/SettingsManager$SettingsHandle;

    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/SettingsManager;->restoreSettingsInternal(Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)V

    goto :goto_0

    .line 137
    :cond_3
    new-instance v0, Lcom/htc/camera/component/SettingsManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/camera/component/SettingsManager$2;-><init>(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/Handle;I)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SettingsManager;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreSettings() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreSettingsInternal(Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "restoreSettingsInternal() - Handle : "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, ", settings : "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/htc/camera/component/SettingsManager$SettingsHandle;->settings:Lcom/htc/camera/CameraSettings;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ", flags : "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->m_SettingsHandles:Lcom/htc/camera/s;

    invoke-virtual {v0, p1}, Lcom/htc/camera/s;->a(Lcom/htc/camera/Handle;)Z

    move-result v0

    .line 156
    iget-object v1, p0, Lcom/htc/camera/component/SettingsManager;->m_SettingsHandles:Lcom/htc/camera/s;

    invoke-virtual {v1, p1}, Lcom/htc/camera/s;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreSettingsInternal() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->m_SettingsHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreSettingsInternal() - Restore to default settings"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->m_DefaultSettings:Lcom/htc/camera/CameraSettings;

    .line 180
    :goto_1
    sget-object v1, Lcom/htc/camera/component/SettingsManager;->EVENT_SETTINGS_CHANGING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/SettingsEventArgs;

    invoke-direct {v2, v0}, Lcom/htc/camera/SettingsEventArgs;-><init>(Lcom/htc/camera/Settings;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/component/SettingsManager;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 181
    sget-object v1, Lcom/htc/camera/component/SettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/component/SettingsManager;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 184
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/SettingsManager$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/SettingsManager$3;-><init>(Lcom/htc/camera/component/SettingsManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->m_SettingsHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/SettingsManager$SettingsHandle;

    .line 177
    iget-object v1, p0, Lcom/htc/camera/component/SettingsManager;->TAG:Ljava/lang/String;

    const-string v2, "restoreSettingsInternal() - Restore to previous settings, handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    iget-object v0, v0, Lcom/htc/camera/component/SettingsManager$SettingsHandle;->settings:Lcom/htc/camera/CameraSettings;

    goto :goto_1
.end method

.method private setSettingsInternal(Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsManager;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    iget-object v1, p0, Lcom/htc/camera/component/SettingsManager;->TAG:Ljava/lang/String;

    const-string v2, "setSettingsInternal() - Component is not running"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_0
    return v0

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/component/SettingsManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "setSettingsInternal() - Handle : "

    aput-object v4, v3, v0

    aput-object p1, v3, v1

    const/4 v0, 0x2

    const-string v4, ", settings : "

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p1, Lcom/htc/camera/component/SettingsManager$SettingsHandle;->settings:Lcom/htc/camera/CameraSettings;

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, ", flags : "

    aput-object v4, v3, v0

    const/4 v0, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->m_SettingsHandles:Lcom/htc/camera/s;

    invoke-virtual {v0, p1}, Lcom/htc/camera/s;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/htc/camera/component/SettingsManager;->EVENT_SETTINGS_CHANGING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/SettingsEventArgs;

    iget-object v3, p1, Lcom/htc/camera/component/SettingsManager$SettingsHandle;->settings:Lcom/htc/camera/CameraSettings;

    invoke-direct {v2, v3}, Lcom/htc/camera/SettingsEventArgs;-><init>(Lcom/htc/camera/Settings;)V

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/component/SettingsManager;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 273
    sget-object v0, Lcom/htc/camera/component/SettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p1, Lcom/htc/camera/component/SettingsManager$SettingsHandle;->settings:Lcom/htc/camera/CameraSettings;

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/component/SettingsManager;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 276
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    new-instance v2, Lcom/htc/camera/component/SettingsManager$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SettingsManager$5;-><init>(Lcom/htc/camera/component/SettingsManager;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    :cond_1
    move v0, v1

    .line 290
    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->m_DefaultSettings:Lcom/htc/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/htc/camera/CameraSettings;->release()V

    .line 69
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->m_SettingsHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->clear()V

    .line 70
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->deinitializeOverride()V

    .line 71
    return-void
.end method

.method public getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/htc/camera/component/SettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->m_Settings:Lcom/htc/camera/CameraSettings;

    .line 91
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/component/CameraComponent;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 101
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 104
    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/htc/camera/component/SettingsManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/SettingsManager$1;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/component/SettingsManager$1;-><init>(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method protected setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 205
    sget-object v0, Lcom/htc/camera/component/SettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager;->m_Settings:Lcom/htc/camera/CameraSettings;

    .line 208
    check-cast p2, Lcom/htc/camera/CameraSettings;

    iput-object p2, p0, Lcom/htc/camera/component/SettingsManager;->m_Settings:Lcom/htc/camera/CameraSettings;

    .line 209
    iget-object v1, p0, Lcom/htc/camera/component/SettingsManager;->m_Settings:Lcom/htc/camera/CameraSettings;

    if-eq v0, v1, :cond_0

    .line 211
    sget-object v1, Lcom/htc/camera/component/SettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/component/SettingsManager;->m_Settings:Lcom/htc/camera/CameraSettings;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/camera/component/SettingsManager;->notifyPropertyChanged(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/camera/component/CameraComponent;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setSettings(Lcom/htc/camera/CameraSettings;I)Lcom/htc/camera/CloseableHandle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 226
    if-nez p1, :cond_0

    .line 228
    const-string v0, "settings"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 233
    :cond_0
    new-instance v1, Lcom/htc/camera/component/SettingsManager$SettingsHandle;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/component/SettingsManager$SettingsHandle;-><init>(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/CameraSettings;)V

    .line 234
    iget-object v2, p0, Lcom/htc/camera/component/SettingsManager;->TAG:Ljava/lang/String;

    const-string v3, "setSettings() - Create handle : "

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsManager;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    invoke-direct {p0, v1, p2}, Lcom/htc/camera/component/SettingsManager;->setSettingsInternal(Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 257
    :goto_0
    return-object v0

    .line 244
    :cond_1
    new-instance v2, Lcom/htc/camera/component/SettingsManager$4;

    invoke-direct {v2, p0, v1, p2}, Lcom/htc/camera/component/SettingsManager$4;-><init>(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)V

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/SettingsManager;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 253
    iget-object v1, p0, Lcom/htc/camera/component/SettingsManager;->TAG:Ljava/lang/String;

    const-string v2, "setSettings() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 257
    goto :goto_0
.end method
