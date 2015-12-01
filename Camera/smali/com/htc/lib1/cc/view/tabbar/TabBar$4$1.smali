.class Lcom/htc/lib1/cc/view/tabbar/TabBar$4$1;
.super Ljava/lang/Object;
.source "TabBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/lib1/cc/view/tabbar/TabBar$4;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/tabbar/TabBar$4;I)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4$1;->this$1:Lcom/htc/lib1/cc/view/tabbar/TabBar$4;

    iput p2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4$1;->this$1:Lcom/htc/lib1/cc/view/tabbar/TabBar$4;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->val$pager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    iget v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4$1;->val$position:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setCurrentItem(IZ)V

    .line 289
    return-void
.end method
