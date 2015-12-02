.class public final Lcom/htc/camera/effect/au;
.super Lcom/htc/camera/component/cn;
.source "SceneControllerProxyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/effect/SceneControllerProxy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "Scene Controller Proxy (UI)"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/SceneControllerProxy;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/htc/camera/effect/SceneControllerProxy;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/SceneControllerProxy;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/au;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/SceneControllerProxy;

    move-result-object v0

    return-object v0
.end method

.method public isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportScene()Z

    move-result v0

    return v0
.end method
