.class Lcom/htc/camera/component/ZoomBar$2;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ZoomBar;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/htc/camera/component/ZoomBar$2;->this$0:Lcom/htc/camera/component/ZoomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$2;->this$0:Lcom/htc/camera/component/ZoomBar;

    # getter for: Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$300(Lcom/htc/camera/component/ZoomBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/htc/camera/component/ZoomBar$2;->this$0:Lcom/htc/camera/component/ZoomBar;

    # getter for: Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/htc/camera/component/ZoomBar;->access$400(Lcom/htc/camera/component/ZoomBar;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getHeight()I

    move-result v1

    .line 204
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 205
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 206
    const/4 v1, 0x0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 207
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$2;->this$0:Lcom/htc/camera/component/ZoomBar;

    # getter for: Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$400(Lcom/htc/camera/component/ZoomBar;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
