.class Lcom/htc/lib1/cc/widget/HtcListView$1;
.super Ljava/lang/Object;
.source "HtcListView.java"

# interfaces
.implements Lcom/htc/lib1/cc/widget/aq;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcListView;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcListView;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # invokes: Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/htc/lib1/cc/widget/HtcListView;->access$501(Lcom/htc/lib1/cc/widget/HtcListView;Landroid/graphics/Canvas;)V

    .line 145
    return-void
.end method

.method public superInvalidate()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # invokes: Landroid/view/View;->invalidate()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListView;->access$601(Lcom/htc/lib1/cc/widget/HtcListView;)V

    .line 150
    return-void
.end method

.method public superOnDetachedFromWindow()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # invokes: Landroid/widget/AbsListView;->onDetachedFromWindow()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListView;->access$301(Lcom/htc/lib1/cc/widget/HtcListView;)V

    .line 135
    return-void
.end method

.method public superOnInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # invokes: Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lcom/htc/lib1/cc/widget/HtcListView;->access$001(Lcom/htc/lib1/cc/widget/HtcListView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superOnOverScrolled(IIZZ)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # invokes: Landroid/widget/AbsListView;->onOverScrolled(IIZZ)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/HtcListView;->access$201(Lcom/htc/lib1/cc/widget/HtcListView;IIZZ)V

    .line 130
    return-void
.end method

.method public superOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # invokes: Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lcom/htc/lib1/cc/widget/HtcListView;->access$101(Lcom/htc/lib1/cc/widget/HtcListView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superOnWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # invokes: Landroid/widget/AbsListView;->onWindowFocusChanged(Z)V
    invoke-static {v0, p1}, Lcom/htc/lib1/cc/widget/HtcListView;->access$401(Lcom/htc/lib1/cc/widget/HtcListView;Z)V

    .line 140
    return-void
.end method

.method public superRequestLayout()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # invokes: Landroid/widget/AbsListView;->requestLayout()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListView;->access$701(Lcom/htc/lib1/cc/widget/HtcListView;)V

    .line 155
    return-void
.end method
