.class Lcom/htc/lib1/cc/view/tabbar/TabBar$3;
.super Ljava/lang/Object;
.source "TabBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/tabbar/TabBar;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$3;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$3;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBar;->mTabSelector:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$000(Lcom/htc/lib1/cc/view/tabbar/TabBar;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 219
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$3;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBar;->mPageController:Lcom/htc/lib1/cc/view/tabbar/b;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$400(Lcom/htc/lib1/cc/view/tabbar/TabBar;)Lcom/htc/lib1/cc/view/tabbar/b;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/htc/lib1/cc/view/tabbar/b;->onPopupBubbleItemClick(I)V

    .line 220
    return-void
.end method
