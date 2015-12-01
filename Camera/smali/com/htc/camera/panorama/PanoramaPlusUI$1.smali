.class Lcom/htc/camera/panorama/PanoramaPlusUI$1;
.super Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;
.source "PanoramaPlusUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-direct {p0}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 264
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 267
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NativeUIRenderer:J
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$000(Lcom/htc/camera/panorama/PanoramaPlusUI;)J

    move-result-wide v0

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->ClosePanoramaUIRenderer(J)V
    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$400(J)V

    .line 268
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const-wide/16 v1, 0x0

    # setter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NativeUIRenderer:J
    invoke-static {v0, v1, v2}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$002(Lcom/htc/camera/panorama/PanoramaPlusUI;J)J

    .line 270
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$500(Lcom/htc/camera/panorama/PanoramaPlusUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDeinitialize() - Renderer stop"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public onDrawFrame(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 10

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$600(Lcom/htc/camera/panorama/PanoramaPlusUI;)Lcom/htc/camera/panorama/PanoramaPlusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getGLEngineLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NativeEngine:J
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$700(Lcom/htc/camera/panorama/PanoramaPlusUI;)J

    move-result-wide v2

    .line 279
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$600(Lcom/htc/camera/panorama/PanoramaPlusUI;)Lcom/htc/camera/panorama/PanoramaPlusController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/panorama/PanoramaPlusController;->checkEngine(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$800(Lcom/htc/camera/panorama/PanoramaPlusUI;)Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    move-result-object v0

    sget-object v4, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Ready:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-virtual {v0, v4}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$800(Lcom/htc/camera/panorama/PanoramaPlusUI;)Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    move-result-object v0

    sget-object v4, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Capturing:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-virtual {v0, v4}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    invoke-static {}, Lcom/htc/camera/gl/DrawingTransaction;->currentTransaction()Lcom/htc/camera/gl/DrawingTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/gl/DrawingTransaction;->commit()V

    .line 287
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NativeUIRenderer:J
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$000(Lcom/htc/camera/panorama/PanoramaPlusUI;)J

    move-result-wide v4

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->DrawFrame(JJ)V
    invoke-static {v4, v5, v2, v3}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$900(JJ)V

    .line 290
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 291
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeOnDraw:J
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$200(Lcom/htc/camera/panorama/PanoramaPlusUI;)J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide v8, 0xb2d05e00L

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # setter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeOnDraw:J
    invoke-static {v0, v4, v5}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$202(Lcom/htc/camera/panorama/PanoramaPlusUI;J)J

    .line 294
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$1000(Lcom/htc/camera/panorama/PanoramaPlusUI;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "onDrawFrame() - Renderer: "

    iget-object v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NativeUIRenderer:J
    invoke-static {v5}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$000(Lcom/htc/camera/panorama/PanoramaPlusUI;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, ", Engine: "

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v4, v5, v6, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    :cond_1
    monitor-exit v1

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onInitialize(Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 4

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusUI$14;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    iget-object v2, p1, Lcom/htc/camera/PreviewFilterEventArgs;->rotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v2}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 253
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    iget-object v2, p1, Lcom/htc/camera/PreviewFilterEventArgs;->size:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v3, p1, Lcom/htc/camera/PreviewFilterEventArgs;->size:Lcom/htc/camera/imaging/Size;

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->CreatePanoramaUIRenderer(III)J
    invoke-static {v2, v3, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$100(III)J

    move-result-wide v2

    # setter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NativeUIRenderer:J
    invoke-static {v1, v2, v3}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$002(Lcom/htc/camera/panorama/PanoramaPlusUI;J)J

    .line 254
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const-wide/16 v1, 0x0

    # setter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeOnDraw:J
    invoke-static {v0, v1, v2}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$202(Lcom/htc/camera/panorama/PanoramaPlusUI;J)J

    .line 256
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$300(Lcom/htc/camera/panorama/PanoramaPlusUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInitialize() - Renderer="

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NativeUIRenderer:J
    invoke-static {v2}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$000(Lcom/htc/camera/panorama/PanoramaPlusUI;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    return-void

    .line 239
    :pswitch_0
    const/4 v0, 0x1

    .line 240
    goto :goto_0

    .line 242
    :pswitch_1
    const/4 v0, 0x3

    .line 243
    goto :goto_0

    .line 245
    :pswitch_2
    const/4 v0, 0x2

    .line 246
    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
