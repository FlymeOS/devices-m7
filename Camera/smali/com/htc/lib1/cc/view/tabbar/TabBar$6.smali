.class Lcom/htc/lib1/cc/view/tabbar/TabBar$6;
.super Ljava/lang/Object;
.source "TabBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/tabbar/TabBar;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$6;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$6;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBar;->mPageController:Lcom/htc/lib1/cc/view/tabbar/b;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$400(Lcom/htc/lib1/cc/view/tabbar/TabBar;)Lcom/htc/lib1/cc/view/tabbar/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/lib1/cc/view/tabbar/b;->onLongClick()Z

    move-result v0

    return v0
.end method
