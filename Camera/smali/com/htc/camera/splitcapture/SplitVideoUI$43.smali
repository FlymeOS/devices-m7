.class Lcom/htc/camera/splitcapture/SplitVideoUI$43;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

.field final synthetic val$brushType:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$isForcePrepare:Z

.field final synthetic val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;ZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 3222
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    iput-object p3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$brushType:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    iput-boolean p4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$isForcePrepare:Z

    iput-object p5, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 3227
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepareNewQuadrangle() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    const/4 v0, 0x0

    .line 3232
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;->FULL:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    if-ne v1, v2, :cond_4

    .line 3233
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullRegion:Lcom/htc/camera/gl/Quadrangle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/Quadrangle;

    move-result-object v0

    .line 3238
    :cond_0
    :goto_0
    if-nez v0, :cond_a

    .line 3240
    new-instance v0, Lcom/htc/camera/gl/Quadrangle;

    invoke-direct {v0}, Lcom/htc/camera/gl/Quadrangle;-><init>()V

    move-object v6, v0

    move v7, v8

    .line 3244
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$brushType:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->FULL_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    if-ne v0, v1, :cond_6

    .line 3245
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullBufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/BufferBrush;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 3250
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/splitcapture/SplitVideoController;

    move-result-object v1

    const/16 v2, 0x2714

    iget-boolean v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$isForcePrepare:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move v4, v3

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9300(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 3251
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlayerPrepared:Z
    invoke-static {v0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9402(Lcom/htc/camera/splitcapture/SplitVideoUI;Z)Z

    .line 3254
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareNewQuadrangle() - quadrangle type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    invoke-virtual {v2}, Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", brush type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$brushType:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    invoke-virtual {v2}, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", has callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_7

    :goto_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3255
    if-eqz v7, :cond_2

    .line 3257
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;->FULL:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    if-ne v0, v1, :cond_8

    .line 3258
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullRegion:Lcom/htc/camera/gl/Quadrangle;
    invoke-static {v0, v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9002(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/Quadrangle;)Lcom/htc/camera/gl/Quadrangle;

    .line 3266
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 3267
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3269
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepareNewQuadrangle() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3270
    return-void

    .line 3234
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;->LEFT:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    if-ne v1, v2, :cond_5

    .line 3235
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftMaskRegion:Lcom/htc/camera/gl/Quadrangle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/Quadrangle;

    move-result-object v0

    goto/16 :goto_0

    .line 3236
    :cond_5
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;->RIGHT:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    if-ne v1, v2, :cond_0

    .line 3237
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/Quadrangle;

    move-result-object v0

    goto/16 :goto_0

    .line 3246
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$brushType:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->HALF_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    if-ne v0, v1, :cond_1

    .line 3247
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$8500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/BufferBrush;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    goto/16 :goto_2

    :cond_7
    move v8, v3

    .line 3254
    goto :goto_3

    .line 3259
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;->LEFT:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    if-ne v0, v1, :cond_9

    .line 3260
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftMaskRegion:Lcom/htc/camera/gl/Quadrangle;
    invoke-static {v0, v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9102(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/Quadrangle;)Lcom/htc/camera/gl/Quadrangle;

    goto :goto_4

    .line 3261
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->val$type:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;->RIGHT:Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;

    if-ne v0, v1, :cond_2

    .line 3262
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;
    invoke-static {v0, v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$9202(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/Quadrangle;)Lcom/htc/camera/gl/Quadrangle;

    goto :goto_4

    :cond_a
    move-object v6, v0

    move v7, v3

    goto/16 :goto_1
.end method
