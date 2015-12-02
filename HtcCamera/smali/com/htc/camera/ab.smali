.class public abstract Lcom/htc/camera/ab;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IProcessingDialogManager.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 18
    return-void
.end method


# virtual methods
.method public abstract closeProcessingDialog(Lcom/htc/camera/Handle;)V
.end method

.method public final showProcessingDialog(I)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/ab;->showProcessingDialog(II)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public final showProcessingDialog(II)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/htc/camera/ab;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/ab;->showProcessingDialog(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public abstract showProcessingDialog(Ljava/lang/String;I)Lcom/htc/camera/Handle;
.end method
