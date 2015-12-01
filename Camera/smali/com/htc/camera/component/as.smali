.class final Lcom/htc/camera/component/as;
.super Lcom/htc/camera/component/t;
.source "HtcCallbackControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/component/HtcCallbackController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 9
    const-string v0, "HTC Call-back Controller"

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Realtime:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/HtcCallbackController;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/camera/component/HtcCallbackController;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/HtcCallbackController;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/as;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/HtcCallbackController;

    move-result-object v0

    return-object v0
.end method
