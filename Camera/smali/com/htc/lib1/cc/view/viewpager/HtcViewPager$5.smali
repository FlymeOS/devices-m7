.class Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$5;
.super Ljava/lang/Object;
.source "HtcViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)V
    .locals 0

    .prologue
    .line 3971
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$5;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3974
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$5;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 3975
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$5;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3976
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3978
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$LayoutParams;

    .line 3980
    iget-boolean v0, v0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$LayoutParams;->isDecor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$5;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->infoForChild(Landroid/view/View;)Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3981
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3974
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3985
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$5;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    const/4 v1, 0x0

    # setter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mPartialHideRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$1302(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3986
    const-string v0, "HtcViewPager rotate end"

    invoke-static {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$trace;->label(Ljava/lang/String;)V

    .line 3987
    return-void
.end method
