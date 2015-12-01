.class public final Lcom/htc/camera/component/FaceDetectionUI;
.super Lcom/htc/camera/component/cm;
.source "FaceDetectionUI.java"


# instance fields
.field private m_IsStarted:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 28
    const-string v0, "Face Detection UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 29
    return-void
.end method

.method private onFaceUpdated([Lcom/htc/camera/FaceInfo;)V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/camera/component/FaceDetectionUI;->m_IsStarted:Z

    if-nez v0, :cond_0

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 43
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 46
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/htc/camera/FaceInfo;

    check-cast v0, [Lcom/htc/camera/FaceInfo;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/FaceDetectionUI;->onFaceUpdated([Lcom/htc/camera/FaceInfo;)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 58
    return-void
.end method
