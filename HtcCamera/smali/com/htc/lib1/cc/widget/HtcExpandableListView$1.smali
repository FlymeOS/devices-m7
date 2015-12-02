.class Lcom/htc/lib1/cc/widget/HtcExpandableListView$1;
.super Ljava/lang/Object;
.source "HtcExpandableListView.java"

# interfaces
.implements Lcom/htc/lib1/cc/widget/aq;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcExpandableListView;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcExpandableListView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcExpandableListView;

    # invokes: Landroid/widget/ExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->access$601(Lcom/htc/lib1/cc/widget/HtcExpandableListView;Landroid/graphics/Canvas;)V

    .line 87
    return-void
.end method

.method public superInvalidate()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcExpandableListView;

    # invokes: Landroid/view/View;->invalidate()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->access$501(Lcom/htc/lib1/cc/widget/HtcExpandableListView;)V

    .line 82
    return-void
.end method

.method public superOnDetachedFromWindow()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcExpandableListView;

    # invokes: Landroid/widget/AbsListView;->onDetachedFromWindow()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->access$301(Lcom/htc/lib1/cc/widget/HtcExpandableListView;)V

    .line 72
    return-void
.end method

.method public superOnInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcExpandableListView;

    # invokes: Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->access$001(Lcom/htc/lib1/cc/widget/HtcExpandableListView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superOnOverScrolled(IIZZ)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcExpandableListView;

    # invokes: Landroid/widget/AbsListView;->onOverScrolled(IIZZ)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->access$201(Lcom/htc/lib1/cc/widget/HtcExpandableListView;IIZZ)V

    .line 67
    return-void
.end method

.method public superOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcExpandableListView;

    # invokes: Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->access$101(Lcom/htc/lib1/cc/widget/HtcExpandableListView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superOnWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcExpandableListView;

    # invokes: Landroid/widget/AbsListView;->onWindowFocusChanged(Z)V
    invoke-static {v0, p1}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->access$401(Lcom/htc/lib1/cc/widget/HtcExpandableListView;Z)V

    .line 77
    return-void
.end method

.method public superRequestLayout()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcExpandableListView;

    # invokes: Landroid/widget/AbsListView;->requestLayout()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->access$701(Lcom/htc/lib1/cc/widget/HtcExpandableListView;)V

    .line 92
    return-void
.end method
