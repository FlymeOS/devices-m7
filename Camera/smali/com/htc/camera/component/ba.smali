.class public final Lcom/htc/camera/component/ba;
.super Lcom/htc/camera/component/cn;
.source "MediaScannerWatcherBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/component/az;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    const-string v0, "Media Scanner Watcher"

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Realtime:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/az;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/camera/component/az;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/az;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/ba;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/az;

    move-result-object v0

    return-object v0
.end method
