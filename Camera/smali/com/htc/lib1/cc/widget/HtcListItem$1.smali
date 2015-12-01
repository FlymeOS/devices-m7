.class Lcom/htc/lib1/cc/widget/HtcListItem$1;
.super Ljava/lang/Object;
.source "HtcListItem.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcListItem;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcListItem;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListItem;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/HtcListItem;->mChildOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListItem;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/HtcListItem;->mChildOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListItem;

    # invokes: Lcom/htc/lib1/cc/widget/HtcListItem;->onChildAdded(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/htc/lib1/cc/widget/HtcListItem;->access$000(Lcom/htc/lib1/cc/widget/HtcListItem;Landroid/view/View;)V

    .line 533
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListItem;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/HtcListItem;->mChildOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem$1;->this$0:Lcom/htc/lib1/cc/widget/HtcListItem;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/HtcListItem;->mChildOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 541
    :cond_0
    return-void
.end method
