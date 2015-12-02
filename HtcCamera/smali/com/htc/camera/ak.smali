.class public abstract Lcom/htc/camera/ak;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IToastManager.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 13
    return-void
.end method


# virtual methods
.method public abstract cancelToast(Lcom/htc/camera/Handle;)V
.end method

.method public final showToast(I)Lcom/htc/camera/Handle;
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/htc/camera/ak;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/ak;->showToast(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public abstract showToast(Ljava/lang/String;)Lcom/htc/camera/Handle;
.end method

.method public abstract showToast(Ljava/lang/String;I)Lcom/htc/camera/Handle;
.end method
