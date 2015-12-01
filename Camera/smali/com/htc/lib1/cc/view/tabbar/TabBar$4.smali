.class Lcom/htc/lib1/cc/view/tabbar/TabBar$4;
.super Ljava/lang/Object;
.source "TabBar.java"

# interfaces
.implements Lcom/htc/lib1/cc/view/tabbar/b;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

.field final synthetic val$pager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/tabbar/TabBar;Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    iput-object p2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->val$pager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canShowPopupBubbleWindow()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public getPrimaryItemIndex()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->val$pager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBar;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$500(Lcom/htc/lib1/cc/view/tabbar/TabBar;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBar;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$500(Lcom/htc/lib1/cc/view/tabbar/TabBar;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 261
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPopupBubbleItemClick(I)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 284
    iget-object v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBar;->mIsWindowGetFocus:Z
    invoke-static {v1}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$600(Lcom/htc/lib1/cc/view/tabbar/TabBar;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->this$0:Lcom/htc/lib1/cc/view/tabbar/TabBar;

    new-instance v2, Lcom/htc/lib1/cc/view/tabbar/TabBar$4$1;

    invoke-direct {v2, p0, p1}, Lcom/htc/lib1/cc/view/tabbar/TabBar$4$1;-><init>(Lcom/htc/lib1/cc/view/tabbar/TabBar$4;I)V

    # setter for: Lcom/htc/lib1/cc/view/tabbar/TabBar;->mSetCurrentItemCallback:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->access$702(Lcom/htc/lib1/cc/view/tabbar/TabBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/tabbar/TabBar;->post(Ljava/lang/Runnable;)Z

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->val$pager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public toNext()Z
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->val$pager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->arrowScroll(I)Z

    move-result v0

    return v0
.end method

.method public toPrevious()Z
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$4;->val$pager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->arrowScroll(I)Z

    move-result v0

    return v0
.end method
