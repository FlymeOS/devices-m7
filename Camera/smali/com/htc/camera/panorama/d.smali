.class public final Lcom/htc/camera/panorama/d;
.super Lcom/htc/camera/component/cn;
.source "PanoramaPlusUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/panorama/PanoramaPlusUI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "Panorama+ UI"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/panorama/PanoramaPlusUI;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-direct {v0, p1}, Lcom/htc/camera/panorama/PanoramaPlusUI;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/htc/camera/panorama/d;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/panorama/PanoramaPlusUI;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 23
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportPanoramaPlus()Z

    move-result v0

    goto :goto_0
.end method
