.class Lcom/htc/camera/splitcapture/SplitPhotoUI$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SplitPhotoUI.java"


# instance fields
.field private scrolled:Z

.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 1

    .prologue
    .line 258
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->scrolled:Z

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->scrolled:Z

    .line 323
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->findPanelInfoFromLocation(FF)Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;
    invoke-static {v1, v2, v3}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$500(Lcom/htc/camera/splitcapture/SplitPhotoUI;FF)Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 324
    const/4 v0, 0x1

    .line 325
    :cond_0
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .prologue
    const/high16 v6, 0x43160000    # 150.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 265
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->scrolled:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 309
    :goto_0
    return v0

    .line 268
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v3, v0, v3

    .line 269
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v0, v4

    .line 273
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x43480000    # 200.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 275
    iput-boolean v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->scrolled:Z

    move v0, v1

    .line 276
    goto :goto_0

    .line 279
    :cond_1
    sget-object v4, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v5, Lcom/htc/camera/splitcapture/ISplitPhotoController;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v5}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    move v0, v1

    .line 309
    goto :goto_0

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)I

    move-result v0

    if-nez v0, :cond_3

    cmpl-float v0, v3, v6

    if-gtz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)I

    move-result v0

    if-ne v0, v2, :cond_5

    const/high16 v0, -0x3cea0000    # -150.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_5

    .line 285
    :cond_4
    iput-boolean v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->scrolled:Z

    .line 286
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->swipePanelInfo(JJ)V
    invoke-static {v0, v3, v4, v5, v6}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$300(Lcom/htc/camera/splitcapture/SplitPhotoUI;JJ)V

    move v0, v2

    .line 287
    goto :goto_0

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)I

    move-result v0

    if-nez v0, :cond_6

    const/high16 v0, -0x3d600000    # -80.0f

    cmpg-float v0, v3, v0

    if-ltz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)I

    move-result v0

    if-ne v0, v2, :cond_2

    const/high16 v0, 0x42a00000    # 80.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    .line 292
    :cond_7
    iput-boolean v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->scrolled:Z

    move v0, v1

    .line 293
    goto :goto_0

    .line 300
    :pswitch_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    .line 302
    iput-boolean v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->scrolled:Z

    .line 303
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->onSwipingPanelWhenReviewing()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$400(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    move v0, v2

    .line 304
    goto/16 :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
