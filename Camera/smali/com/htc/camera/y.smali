.class public abstract Lcom/htc/camera/y;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IFloatingMenuHint.java"


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
.method public abstract hideFloatingHint(Lcom/htc/camera/Handle;)V
.end method

.method public abstract showFloatingHint(Landroid/graphics/Rect;Ljava/lang/String;)Lcom/htc/camera/Handle;
.end method

.method public abstract showFloatingHint(Ljava/lang/String;)Lcom/htc/camera/Handle;
.end method
