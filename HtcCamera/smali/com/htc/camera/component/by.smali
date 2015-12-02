.class final Lcom/htc/camera/component/by;
.super Lcom/htc/camera/component/t;
.source "SettingsManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/component/bx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 80
    const-string v0, "Settings Manager (Proxy)"

    const-class v1, Lcom/htc/camera/component/bx;

    sget-object v2, Lcom/htc/camera/component/ComponentCategory;->Launch:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/htc/camera/component/ComponentCategory;)V

    .line 81
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/bx;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/htc/camera/component/bx;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/bx;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/by;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/bx;

    move-result-object v0

    return-object v0
.end method
