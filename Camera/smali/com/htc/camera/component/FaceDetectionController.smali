.class public final Lcom/htc/camera/component/FaceDetectionController;
.super Lcom/htc/camera/component/s;
.source "FaceDetectionController.java"


# instance fields
.field private m_IsStarted:Z

.field private m_UI:Lcom/htc/camera/component/FaceDetectionUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    .line 28
    const-string v0, "Face Detection Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/s;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 29
    return-void
.end method

.method private startFaceDetection()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/camera/component/FaceDetectionController;->m_IsStarted:Z

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/FaceDetectionController;->m_IsStarted:Z

    goto :goto_0
.end method

.method private stopFaceDetection()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/camera/component/FaceDetectionController;->m_IsStarted:Z

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/FaceDetectionController;->m_IsStarted:Z

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    invoke-super {p0, p1}, Lcom/htc/camera/component/s;->handleMessage(Landroid/os/Message;)V

    .line 55
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/FaceDetectionUI;

    iput-object v0, p0, Lcom/htc/camera/component/FaceDetectionController;->m_UI:Lcom/htc/camera/component/FaceDetectionUI;

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/FaceDetectionController;->startFaceDetection()V

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/component/FaceDetectionController;->stopFaceDetection()V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
