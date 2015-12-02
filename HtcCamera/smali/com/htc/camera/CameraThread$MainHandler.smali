.class final Lcom/htc/camera/CameraThread$MainHandler;
.super Landroid/os/Handler;
.source "CameraThread.java"


# instance fields
.field private m_CameraThread:Lcom/htc/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 607
    iput-object p1, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    .line 608
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 618
    iget-object v0, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_0

    .line 620
    const-string v0, "CameraThread"

    const-string v1, "handleMessage() - Handler is released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :goto_0
    return-void

    .line 626
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 640
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 641
    iget-object v2, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/Handle;

    aget-object v0, v0, v4

    check-cast v0, Lcom/htc/camera/CameraType;

    # invokes: Lcom/htc/camera/CameraThread;->openCameraInternal(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Z
    invoke-static {v2, v1, v0}, Lcom/htc/camera/CameraThread;->access$900(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Z

    goto :goto_0

    .line 629
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 630
    iget-object v2, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/Handle;

    aget-object v0, v0, v4

    check-cast v0, Lcom/htc/camera/CameraType;

    # invokes: Lcom/htc/camera/CameraThread;->startPreviewInternal(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraPreviewStartResult;
    invoke-static {v2, v1, v0}, Lcom/htc/camera/CameraThread;->access$700(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraPreviewStartResult;

    goto :goto_0

    .line 635
    :sswitch_2
    iget-object v1, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Handle;

    # invokes: Lcom/htc/camera/CameraThread;->startPreviewDirectlyInternal(Lcom/htc/camera/Handle;)Lcom/htc/camera/CameraPreviewStartResult;
    invoke-static {v1, v0}, Lcom/htc/camera/CameraThread;->access$800(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)Lcom/htc/camera/CameraPreviewStartResult;

    goto :goto_0

    .line 646
    :sswitch_3
    iget-object v0, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->closeCamera()V

    goto :goto_0

    .line 650
    :sswitch_4
    iget-object v0, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->exit()V

    goto :goto_0

    .line 655
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 656
    iget-object v2, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/CaptureHandle;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/htc/camera/CameraThread;->startVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;Z)V
    invoke-static {v2, v1, v0}, Lcom/htc/camera/CameraThread;->access$1000(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;Z)V

    goto :goto_0

    .line 662
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 663
    iget-object v3, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/CaptureHandle;

    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x2

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/htc/camera/CameraThread;->stopVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;ZZ)V
    invoke-static {v3, v1, v2, v0}, Lcom/htc/camera/CameraThread;->access$1100(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;ZZ)V

    goto :goto_0

    .line 668
    :sswitch_7
    iget-object v1, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/FlashMode;

    # invokes: Lcom/htc/camera/CameraThread;->setFlashModeInternal(Lcom/htc/camera/FlashMode;)V
    invoke-static {v1, v0}, Lcom/htc/camera/CameraThread;->access$1200(Lcom/htc/camera/CameraThread;Lcom/htc/camera/FlashMode;)V

    goto/16 :goto_0

    .line 672
    :sswitch_8
    iget-object v1, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/htc/camera/CameraThread;->resetZoomInternal(Z)V
    invoke-static {v1, v0}, Lcom/htc/camera/CameraThread;->access$1300(Lcom/htc/camera/CameraThread;Z)V

    goto/16 :goto_0

    .line 677
    :sswitch_9
    iget-object v0, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->changeZoom(I)V

    goto/16 :goto_0

    .line 681
    :sswitch_a
    iget-object v1, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    # invokes: Lcom/htc/camera/CameraThread;->setCaptureRotationInternal(Lcom/htc/camera/rotate/UIRotation;)V
    invoke-static {v1, v0}, Lcom/htc/camera/CameraThread;->access$1400(Lcom/htc/camera/CameraThread;Lcom/htc/camera/rotate/UIRotation;)V

    goto/16 :goto_0

    .line 686
    :sswitch_b
    iget-object v0, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    # invokes: Lcom/htc/camera/CameraThread;->playStopVideoRecordShutter()V
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$1500(Lcom/htc/camera/CameraThread;)V

    goto/16 :goto_0

    .line 689
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 626
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_2
        0x2713 -> :sswitch_3
        0x2718 -> :sswitch_4
        0x2725 -> :sswitch_7
        0x273c -> :sswitch_b
        0x273d -> :sswitch_5
        0x273e -> :sswitch_6
        0x2740 -> :sswitch_8
        0x2742 -> :sswitch_a
        0x2756 -> :sswitch_9
        0x2774 -> :sswitch_c
    .end sparse-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/htc/camera/CameraThread;

    .line 613
    return-void
.end method
