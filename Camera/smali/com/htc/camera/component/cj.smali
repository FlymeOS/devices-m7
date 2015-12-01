.class public final Lcom/htc/camera/component/cj;
.super Lcom/htc/camera/component/cn;
.source "ThumbnailUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/component/ThumbnailUI;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "Thumbnail UI"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/ThumbnailUI;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/camera/component/ThumbnailUI;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/ThumbnailUI;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/cj;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/ThumbnailUI;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 21
    invoke-static {p1}, Lcom/htc/camera/component/ThumbnailController;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
