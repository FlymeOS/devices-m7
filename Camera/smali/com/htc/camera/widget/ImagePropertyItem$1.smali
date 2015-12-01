.class Lcom/htc/camera/widget/ImagePropertyItem$1;
.super Ljava/lang/Object;
.source "ImagePropertyItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/ImagePropertyItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/ImagePropertyItem;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/camera/widget/ImagePropertyItem$1;->this$0:Lcom/htc/camera/widget/ImagePropertyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 126
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem$1;->this$0:Lcom/htc/camera/widget/ImagePropertyItem;

    # getter for: Lcom/htc/camera/widget/ImagePropertyItem;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/camera/widget/ImagePropertyItem;->access$000(Lcom/htc/camera/widget/ImagePropertyItem;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem$1;->this$0:Lcom/htc/camera/widget/ImagePropertyItem;

    # getter for: Lcom/htc/camera/widget/ImagePropertyItem;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/camera/widget/ImagePropertyItem;->access$000(Lcom/htc/camera/widget/ImagePropertyItem;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
