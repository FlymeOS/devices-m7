.class public Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;
.super Ljava/lang/Object;
.source "PanoSEGLSurfaceView.java"

# interfaces
.implements Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;


# instance fields
.field private isReady_:Z

.field final synthetic this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;


# direct methods
.method protected constructor <init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)V
    .locals 1

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->isReady_:Z

    return-void
.end method


# virtual methods
.method public onDestroySurface()V
    .locals 3

    .prologue
    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->isReady_:Z

    .line 452
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J
    invoke-static {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)J

    move-result-wide v1

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onGLDestroySurface(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1000(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;J)V

    .line 453
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 464
    iget-boolean v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->isReady_:Z

    if-eqz v0, :cond_7

    .line 465
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->loadImageLock_:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 466
    sget-object v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$8;->$SwitchMap$com$htc$lib1$panoviewer$PanoSEGLSurfaceView$LOAD_PANORAMA:[I

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v1, v1, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->loadPanorama_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$LOAD_PANORAMA;

    invoke-virtual {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$LOAD_PANORAMA;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 484
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->loadImageLock_:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 487
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->viewerCallback_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->issuePictureTaking(I)I
    invoke-static {v0, v4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1500(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;I)I

    move-result v0

    .line 489
    if-eqz v0, :cond_1

    .line 490
    const-string v1, "PanoSEGLSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "developing image:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureWidth_:I
    invoke-static {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$600(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureHeight_:I
    invoke-static {v2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$700(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 493
    iget-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J
    invoke-static {v3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)J

    move-result-wide v3

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->getCaptureFrame(JLandroid/graphics/Bitmap;)Z
    invoke-static {v2, v3, v4, v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1600(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JLandroid/graphics/Bitmap;)Z

    move-result v2

    .line 494
    if-eqz v2, :cond_5

    .line 495
    iget-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->viewerCallback_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;
    invoke-static {v2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;->onCaptureFrameEnd(ILandroid/graphics/Bitmap;)V

    .line 504
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->issuePictureTaking(I)I
    invoke-static {v0, v5}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1500(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;I)I

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J
    invoke-static {v2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)J

    move-result-wide v2

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onGLDrawFrame(JI)Z
    invoke-static {v1, v2, v3, v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1700(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JI)Z

    move-result v1

    .line 506
    if-eqz v0, :cond_6

    .line 508
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->requestRender()V

    .line 515
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->request_1st_render:Z
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$000(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # setter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->request_1st_render:Z
    invoke-static {v0, v5}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$002(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;Z)Z

    .line 529
    :cond_3
    :goto_3
    return-void

    .line 469
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J
    invoke-static {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->fd_:Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1200(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onLoadPanoramaFD(JLjava/io/FileDescriptor;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1300(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JLjava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 470
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    sget-object v1, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$LOAD_PANORAMA;->LOADED:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$LOAD_PANORAMA;

    iput-object v1, v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->loadPanorama_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$LOAD_PANORAMA;

    .line 471
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    const/4 v1, 0x0

    # setter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->fd_:Landroid/os/ParcelFileDescriptor;
    invoke-static {v0, v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1202(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    goto/16 :goto_0

    .line 474
    :cond_4
    const-string v0, "PanoSEGLSurfaceView"

    const-string v1, "failed to load panorama from FD"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->viewerCallback_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->viewerCallback_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;->onLoadFail(I)V

    goto/16 :goto_0

    .line 498
    :cond_5
    const-string v0, "PanoSEGLSurfaceView"

    const-string v1, "bitmap factory fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 510
    :cond_6
    if-eqz v1, :cond_2

    .line 511
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->requestRender()V

    goto :goto_2

    .line 526
    :cond_7
    const-string v0, "PanoSEGLSurfaceView"

    const-string v1, "onDrawFrame()... Not Ready!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->requestRender()V

    goto :goto_3

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # setter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureWidth_:I
    invoke-static {v0, p2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$602(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;I)I

    .line 442
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # setter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureHeight_:I
    invoke-static {v0, p3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$702(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;I)I

    .line 443
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J
    invoke-static {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureWidth_:I
    invoke-static {v3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$600(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureHeight_:I
    invoke-static {v4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$700(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)I

    move-result v4

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onGLSurfaceChanged(JII)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$800(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JII)V

    .line 444
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureWidth_:I
    invoke-static {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$600(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureHeight_:I
    invoke-static {v2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$700(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->setScreenWH(II)V

    .line 445
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J
    invoke-static {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)J

    move-result-wide v1

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onTouchCancelled(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$900(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;J)V

    .line 446
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 408
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J
    invoke-static {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)J

    move-result-wide v1

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onGLSurfaceCreated(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$200(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;J)V

    .line 410
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->drawableResourceContext_:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$300(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 411
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->drawableResourceContext_:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$300(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 413
    const/4 v0, 0x4

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 414
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 415
    iget-object v3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;
    invoke-static {v3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->drawableId:[I

    aget v4, v2, v0

    aget v3, v3, v4

    if-eqz v3, :cond_0

    .line 416
    iget-object v3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;
    invoke-static {v3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->drawableId:[I

    aget v4, v2, v0

    aget v3, v3, v4

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 417
    iget-object v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;
    invoke-static {v4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->margin:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;

    aget v5, v2, v0

    aget-object v4, v4, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->setWH(II)V

    .line 418
    iget-object v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J
    invoke-static {v5}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)J

    move-result-wide v5

    aget v7, v2, v0

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onLoadButtonImage(JILandroid/graphics/Bitmap;)Z
    invoke-static {v4, v5, v6, v7, v3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$500(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JILandroid/graphics/Bitmap;)Z

    .line 414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v0, v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorMode_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    sget-object v2, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->GYROSCOPE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    if-ne v0, v2, :cond_3

    .line 423
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->drawableId:[I

    aget v0, v0, v8

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->drawableId:[I

    aget v0, v0, v8

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    iget-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;
    invoke-static {v2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->margin:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;

    aget-object v2, v2, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->setWH(II)V

    .line 426
    iget-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J
    invoke-static {v3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)J

    move-result-wide v3

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onLoadButtonImage(JILandroid/graphics/Bitmap;)Z
    invoke-static {v2, v3, v4, v8, v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$500(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JILandroid/graphics/Bitmap;)Z

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->drawableId:[I

    aget v0, v0, v9

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->drawableId:[I

    aget v0, v0, v9

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;
    invoke-static {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->margin:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;

    aget-object v1, v1, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->setWH(II)V

    .line 431
    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J
    invoke-static {v2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)J

    move-result-wide v2

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onLoadButtonImage(JILandroid/graphics/Bitmap;)Z
    invoke-static {v1, v2, v3, v9, v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$500(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JILandroid/graphics/Bitmap;)Z

    .line 435
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->isReady_:Z

    .line 436
    return-void

    .line 413
    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x5
    .end array-data
.end method

.method public onSurfaceLost()V
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;->isReady_:Z

    .line 459
    return-void
.end method
