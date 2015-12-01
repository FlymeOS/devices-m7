.class public abstract Lcom/htc/camera/ai;
.super Lcom/htc/camera/component/cm;
.source "ISwitchCameraSlidingUI.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public disableSliding()Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/ai;->disableSliding(I)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public abstract disableSliding(I)Lcom/htc/camera/Handle;
.end method

.method public enableSliding(Lcom/htc/camera/Handle;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/ai;->enableSliding(Lcom/htc/camera/Handle;I)V

    .line 29
    return-void
.end method

.method public abstract enableSliding(Lcom/htc/camera/Handle;I)V
.end method

.method public abstract isTouchOnEdge()Z
.end method
