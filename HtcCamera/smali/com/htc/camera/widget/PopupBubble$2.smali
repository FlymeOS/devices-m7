.class Lcom/htc/camera/widget/PopupBubble$2;
.super Ljava/lang/Object;
.source "PopupBubble.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/PopupBubble;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/PopupBubble;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/htc/camera/widget/PopupBubble$2;->this$0:Lcom/htc/camera/widget/PopupBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 207
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$2;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_OnOutsideTouchListener:Lcom/htc/camera/widget/j;
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$700(Lcom/htc/camera/widget/PopupBubble;)Lcom/htc/camera/widget/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 211
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 215
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 216
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 217
    aget v3, v2, v5

    .line 218
    const/4 v4, 0x1

    aget v2, v2, v4

    .line 220
    add-int/2addr v3, v0

    .line 221
    add-int/2addr v2, v1

    .line 224
    int-to-float v3, v3

    int-to-float v2, v2

    invoke-virtual {p2, v3, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 225
    iget-object v2, p0, Lcom/htc/camera/widget/PopupBubble$2;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_OnOutsideTouchListener:Lcom/htc/camera/widget/j;
    invoke-static {v2}, Lcom/htc/camera/widget/PopupBubble;->access$700(Lcom/htc/camera/widget/PopupBubble;)Lcom/htc/camera/widget/j;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/htc/camera/widget/j;->onOutsideTouch(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 228
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 231
    :cond_0
    return v5
.end method
