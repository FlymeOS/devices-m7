.class Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;
.super Lcom/htc/lib1/cc/widget/AbsCrabWalkView$WindowRunnnable;
.source "AbsCrabWalkView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;


# direct methods
.method private constructor <init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)V
    .locals 1

    .prologue
    .line 2208
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$WindowRunnnable;-><init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Lcom/htc/lib1/cc/widget/AbsCrabWalkView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Lcom/htc/lib1/cc/widget/AbsCrabWalkView$1;)V
    .locals 0

    .prologue
    .line 2208
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;-><init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2214
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v2, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int/2addr v0, v2

    .line 2216
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v2, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2218
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDataChanged:Z

    if-nez v0, :cond_1

    .line 2220
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->sameWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2221
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v3, v3, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-wide v4, v4, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedRowId:J

    # invokes: Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v0, v2, v3, v4, v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->access$500(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Landroid/view/View;IJ)Z

    move-result v0

    .line 2223
    :goto_0
    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setPressed(Z)V

    .line 2225
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2232
    :cond_0
    :goto_1
    return-void

    .line 2228
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setPressed(Z)V

    .line 2229
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
