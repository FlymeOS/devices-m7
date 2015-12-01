.class Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl$1;
.super Landroid/database/DataSetObserver;
.source "TabBar.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;

.field final synthetic val$observer:Landroid/database/DataSetObserver;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl$1;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;

    iput-object p2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl$1;->val$observer:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl$1;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->reset()V

    .line 1321
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl$1;->val$observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 1322
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl$1;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->reset()V

    .line 1326
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl$1;->val$observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1327
    return-void
.end method
