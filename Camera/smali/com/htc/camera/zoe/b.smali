.class public final Lcom/htc/camera/zoe/b;
.super Lcom/htc/camera/component/t;
.source "ZoeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/zoe/ZoeController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    const-string v0, "Zoe Controller"

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Realtime:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/zoe/ZoeController;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/htc/camera/zoe/ZoeController;

    invoke-direct {v0, p1}, Lcom/htc/camera/zoe/ZoeController;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/htc/camera/zoe/b;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/zoe/ZoeController;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canEnableZoe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
