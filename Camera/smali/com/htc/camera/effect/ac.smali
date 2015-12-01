.class public abstract Lcom/htc/camera/effect/ac;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ISceneController.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 19
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 15
    return-void
.end method


# virtual methods
.method public final setScene(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    .line 27
    return-void
.end method

.method public abstract setScene(Ljava/lang/String;Z)V
.end method
