.class final Lcom/htc/camera/component/g;
.super Lcom/htc/camera/component/t;
.source "AutoFocusControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/component/AutoFocusController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "Auto-Focus Controller"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/AutoFocusController;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/camera/component/AutoFocusController;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/AutoFocusController;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/g;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/AutoFocusController;

    move-result-object v0

    return-object v0
.end method
