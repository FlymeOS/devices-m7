.class final Lcom/htc/camera/component/ch;
.super Lcom/htc/camera/component/cn;
.source "SystemNotificationWatcherBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/component/SystemNotificationWatcher;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "Notification Watcher"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/SystemNotificationWatcher;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/htc/camera/component/SystemNotificationWatcher;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/SystemNotificationWatcher;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/ch;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/SystemNotificationWatcher;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isHtcDevice()Z

    move-result v0

    return v0
.end method
