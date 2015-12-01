.class Lcom/htc/lib1/cc/view/tabbar/TabBar$5;
.super Ljava/lang/Object;
.source "TabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/tabbar/TabBar;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$5;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$5;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBar;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$800(Lcom/htc/lib1/cc/view/tabbar/TabBar;)Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$5;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    iget-object v2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$5;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBar;->mPageController:Lcom/htc/lib1/cc/view/tabbar/b;
    invoke-static {v2}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$400(Lcom/htc/lib1/cc/view/tabbar/TabBar;)Lcom/htc/lib1/cc/view/tabbar/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/lib1/cc/view/tabbar/b;->getPrimaryItemIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$5;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    # invokes: Lcom/htc/lib1/cc/view/tabbar/TabBar;->getTabSelector()Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$900(Lcom/htc/lib1/cc/view/tabbar/TabBar;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->show()V

    .line 311
    return-void
.end method
