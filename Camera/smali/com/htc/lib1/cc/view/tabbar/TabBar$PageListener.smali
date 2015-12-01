.class public Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;
.super Landroid/database/DataSetObserver;
.source "TabBar.java"

# interfaces
.implements Lcom/htc/lib1/cc/view/viewpager/d;
.implements Lcom/htc/lib1/cc/view/viewpager/e;


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/view/tabbar/TabBar;)V
    .locals 0

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;)V
    .locals 3

    .prologue
    .line 1094
    instance-of v0, p2, Lcom/htc/lib1/cc/view/tabbar/c;

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    invoke-virtual {v0, p2}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->setAdapter(Lcom/htc/lib1/cc/view/tabbar/c;)V

    .line 1099
    return-void

    .line 1097
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The adapter of view pager must implement TabAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onChanged()V
    .locals 3

    .prologue
    .line 1104
    iget-object v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    # invokes: Lcom/htc/lib1/cc/view/tabbar/TabBar;->getActualParent()Landroid/view/ViewParent;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$1200(Lcom/htc/lib1/cc/view/tabbar/TabBar;)Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v2

    iget v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->mScrollState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/htc/lib1/cc/view/tabbar/TabBar;->onPageSelected(IZ)V
    invoke-static {v1, v2, v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$200(Lcom/htc/lib1/cc/view/tabbar/TabBar;IZ)V

    .line 1106
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->getAdapter()Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;

    move-result-object v1

    # invokes: Lcom/htc/lib1/cc/view/tabbar/TabBar;->setAdapter(Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;)V
    invoke-static {v0, v1}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$1300(Lcom/htc/lib1/cc/view/tabbar/TabBar;Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;)V

    .line 1107
    return-void

    .line 1104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 1088
    iput p1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->mScrollState:I

    .line 1089
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    # invokes: Lcom/htc/lib1/cc/view/tabbar/TabBar;->onPageScrollStateChanged(I)V
    invoke-static {v0, p1}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$1100(Lcom/htc/lib1/cc/view/tabbar/TabBar;I)V

    .line 1090
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1072
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    # invokes: Lcom/htc/lib1/cc/view/tabbar/TabBar;->onPageScrolled(IFI)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$1000(Lcom/htc/lib1/cc/view/tabbar/TabBar;IFI)V

    .line 1073
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->onLayout(ZIIII)V

    .line 1074
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->invalidate()V

    .line 1075
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    iget v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;->mScrollState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/htc/lib1/cc/view/tabbar/TabBar;->onPageSelected(IZ)V
    invoke-static {v1, p1, v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$200(Lcom/htc/lib1/cc/view/tabbar/TabBar;IZ)V

    .line 1084
    return-void

    .line 1083
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
