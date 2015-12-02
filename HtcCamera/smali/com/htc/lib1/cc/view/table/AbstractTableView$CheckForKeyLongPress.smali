.class Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;
.super Lcom/htc/lib1/cc/view/table/AbstractTableView$WindowRunnnable;
.source "AbstractTableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;


# direct methods
.method private constructor <init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;)V
    .locals 1

    .prologue
    .line 1722
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$WindowRunnnable;-><init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;Lcom/htc/lib1/cc/view/table/AbstractTableView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;Lcom/htc/lib1/cc/view/table/AbstractTableView$1;)V
    .locals 0

    .prologue
    .line 1722
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;-><init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1728
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget v2, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int/2addr v0, v2

    .line 1730
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v2, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1732
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDataChanged:Z

    if-nez v0, :cond_1

    .line 1734
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->sameWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1735
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget v3, v3, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget-wide v4, v4, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedRowId:J

    # invokes: Lcom/htc/lib1/cc/view/table/AbstractTableView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v0, v2, v3, v4, v5}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->access$600(Lcom/htc/lib1/cc/view/table/AbstractTableView;Landroid/view/View;IJ)Z

    move-result v0

    .line 1737
    :goto_0
    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setPressed(Z)V

    .line 1739
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1746
    :cond_0
    :goto_1
    return-void

    .line 1742
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setPressed(Z)V

    .line 1743
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
