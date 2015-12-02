.class Lcom/htc/camera/splitcapture/SplitVideoUI$42;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$sourceRect:Landroid/graphics/RectF;

.field final synthetic val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;Landroid/graphics/RectF;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 3159
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    iput-object p3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$sourceRect:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 3163
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepareNewBufferBrush() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    const/4 v0, 0x0

    .line 3168
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->FULL_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    if-ne v1, v2, :cond_4

    .line 3169
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullBufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/BufferBrush;

    move-result-object v0

    .line 3177
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/camera/gl/BufferBrush;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3179
    :cond_1
    new-instance v0, Lcom/htc/camera/gl/BufferBrush;

    invoke-direct {v0}, Lcom/htc/camera/gl/BufferBrush;-><init>()V

    move-object v6, v0

    move v7, v8

    .line 3183
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$sourceRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v0}, Lcom/htc/camera/gl/BufferBrush;->setSourceRect(Landroid/graphics/RectF;)V

    .line 3184
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/splitcapture/SplitVideoController;

    move-result-object v1

    const/16 v2, 0x2712

    invoke-virtual {v6}, Lcom/htc/camera/gl/BufferBrush;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move v4, v3

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8600(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 3187
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8700(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareNewBufferBrush() - brush type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    invoke-virtual {v2}, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", has callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_7

    :goto_2
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    if-eqz v7, :cond_2

    .line 3190
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->FULL_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    if-ne v0, v1, :cond_8

    .line 3191
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullBufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v0, v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8302(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/BufferBrush;)Lcom/htc/camera/gl/BufferBrush;

    .line 3197
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 3198
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3200
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8800(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepareNewBufferBrush() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    return-void

    .line 3170
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->HALF_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    if-ne v1, v2, :cond_0

    .line 3172
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsHidingPlaybackSurfaceWhilePreparingRetake:Z
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$sourceRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentBufferBrushSourceRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/graphics/RectF;

    move-result-object v2

    if-eq v1, v2, :cond_6

    .line 3173
    :cond_5
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$sourceRect:Landroid/graphics/RectF;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentBufferBrushSourceRect:Landroid/graphics/RectF;
    invoke-static {v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8402(Lcom/htc/camera/splitcapture/SplitVideoUI;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    goto/16 :goto_0

    .line 3175
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/BufferBrush;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move v8, v3

    .line 3187
    goto :goto_2

    .line 3192
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->HALF_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    if-ne v0, v1, :cond_2

    .line 3193
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v0, v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8502(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/BufferBrush;)Lcom/htc/camera/gl/BufferBrush;

    goto :goto_3

    :cond_9
    move-object v6, v0

    move v7, v3

    goto/16 :goto_1
.end method
