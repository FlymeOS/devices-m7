.class public final Lcom/htc/camera/photopattern/c;
.super Lcom/htc/camera/component/t;
.source "PhotoBoothController2Builder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/photopattern/PhotoBoothController2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "PhotoBooth Controller"

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Realtime:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/photopattern/PhotoBoothController2;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/htc/camera/photopattern/PhotoBoothController2;

    invoke-direct {v0, p1}, Lcom/htc/camera/photopattern/PhotoBoothController2;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/htc/camera/photopattern/c;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/photopattern/PhotoBoothController2;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 24
    invoke-static {p1}, Lcom/htc/camera/photopattern/PhotoBoothController2;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
