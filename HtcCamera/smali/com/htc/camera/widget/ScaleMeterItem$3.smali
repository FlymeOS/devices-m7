.class Lcom/htc/camera/widget/ScaleMeterItem$3;
.super Ljava/lang/Object;
.source "ScaleMeterItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/ScaleMeterItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/ScaleMeterItem;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/camera/widget/ScaleMeterItem$3;->this$0:Lcom/htc/camera/widget/ScaleMeterItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 150
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem$3;->this$0:Lcom/htc/camera/widget/ScaleMeterItem;

    # getter for: Lcom/htc/camera/widget/ScaleMeterItem;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/camera/widget/ScaleMeterItem;->access$300(Lcom/htc/camera/widget/ScaleMeterItem;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/widget/ScaleMeterItem$3;->this$0:Lcom/htc/camera/widget/ScaleMeterItem;

    # getter for: Lcom/htc/camera/widget/ScaleMeterItem;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/camera/widget/ScaleMeterItem;->access$300(Lcom/htc/camera/widget/ScaleMeterItem;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
