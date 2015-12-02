.class public Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;
.super Lcom/htc/lib1/cc/widget/AbsCrabWalkView$WindowRunnnable;
.source "AbsCrabWalkView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mChild:Landroid/view/View;

.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;


# direct methods
.method protected constructor <init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)V
    .locals 1

    .prologue
    .line 2159
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$WindowRunnnable;-><init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Lcom/htc/lib1/cc/widget/AbsCrabWalkView$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 2177
    :cond_0
    :goto_0
    return-void

    .line 2172
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->mClickMotionPosition:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v1, v1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->sameWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2174
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->mClickMotionPosition:I

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    iget v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->mClickMotionPosition:I

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
