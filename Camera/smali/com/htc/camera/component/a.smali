.class final Lcom/htc/camera/component/a;
.super Ljava/lang/Object;
.source "AudioManagerBuilder.java"

# interfaces
.implements Lcom/htc/camera/component/at;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/component/at",
        "<",
        "Lcom/htc/camera/component/AudioManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Lcom/htc/camera/component/AudioManager;
    .locals 3

    .prologue
    .line 14
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 16
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 17
    instance-of v0, v1, Lcom/htc/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 18
    new-instance v2, Lcom/htc/camera/component/AudioManager;

    move-object v0, v1

    check-cast v0, Lcom/htc/camera/HTCCamera;

    check-cast v1, Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/htc/camera/component/AudioManager;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;)V

    move-object v0, v2

    .line 22
    :goto_0
    return-object v0

    .line 19
    :cond_0
    instance-of v0, v1, Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_1

    .line 20
    new-instance v2, Lcom/htc/camera/component/AudioManager;

    move-object v0, v1

    check-cast v0, Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    check-cast v1, Lcom/htc/camera/CameraThread;

    invoke-direct {v2, v0, v1}, Lcom/htc/camera/component/AudioManager;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;)V

    move-object v0, v2

    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b([Ljava/lang/Object;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/a;->a([Ljava/lang/Object;)Lcom/htc/camera/component/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method public getComponentCategory()Lcom/htc/camera/component/ComponentCategory;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/htc/camera/component/ComponentCategory;->Realtime:Lcom/htc/camera/component/ComponentCategory;

    return-object v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "Audio Manager"

    return-object v0
.end method

.method public varargs isSupported([Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedComponentType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/htc/camera/component/AudioManager;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method
