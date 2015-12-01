.class public abstract Lcom/htc/camera/io/e;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ISDCardUI.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 19
    return-void
.end method


# virtual methods
.method public notifySDCardPerformanceLow()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/e;->notifySDCardPerformanceLow(Landroid/content/DialogInterface$OnDismissListener;)Z

    move-result v0

    return v0
.end method

.method public abstract notifySDCardPerformanceLow(Landroid/content/DialogInterface$OnDismissListener;)Z
.end method
