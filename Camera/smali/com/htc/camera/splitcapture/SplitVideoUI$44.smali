.class Lcom/htc/camera/splitcapture/SplitVideoUI$44;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 3350
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$44;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3354
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$44;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/BufferBrush;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3355
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$44;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/BufferBrush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/gl/BufferBrush;->release()V

    .line 3356
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$44;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8502(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/BufferBrush;)Lcom/htc/camera/gl/BufferBrush;

    .line 3358
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$44;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullBufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/BufferBrush;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3360
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$44;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullBufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/BufferBrush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/gl/BufferBrush;->release()V

    .line 3361
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$44;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullBufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8302(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/BufferBrush;)Lcom/htc/camera/gl/BufferBrush;

    .line 3365
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$44;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsPreviewRendererInitialized:Z
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9700(Lcom/htc/camera/splitcapture/SplitVideoUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3367
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$44;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    new-instance v1, Lcom/htc/camera/gl/BufferBrush;

    invoke-direct {v1}, Lcom/htc/camera/gl/BufferBrush;-><init>()V

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8502(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/BufferBrush;)Lcom/htc/camera/gl/BufferBrush;

    .line 3370
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$44;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$44;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/splitcapture/SplitVideoController;

    move-result-object v1

    const/16 v2, 0x2712

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$44;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v4}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/BufferBrush;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/camera/gl/BufferBrush;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move v4, v3

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9800(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 3372
    :cond_2
    return-void
.end method
