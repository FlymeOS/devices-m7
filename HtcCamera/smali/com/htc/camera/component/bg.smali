.class public final Lcom/htc/camera/component/bg;
.super Lcom/htc/camera/component/cn;
.source "PanoramaUI2Builder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/component/PanoramaUI2;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 9
    const-string v0, "Panorama UI2"

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->OnDemand:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/PanoramaUI2;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/camera/component/PanoramaUI2;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/PanoramaUI2;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/bg;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/PanoramaUI2;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 21
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/htc/camera/component/PanoramaController2;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    goto :goto_0
.end method
