.class Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;
.super Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;
.source "HtcViewPager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)V
    .locals 0

    .prologue
    .line 3259
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-direct {p0}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 3263
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3264
    const-class v0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3265
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3269
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 3270
    const-class v1, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3271
    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mAdapter:Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
    invoke-static {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$400(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mAdapter:Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
    invoke-static {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$400(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p2, v0}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3272
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mAdapter:Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$400(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mCurItem:I
    invoke-static {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$500(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mCurItem:I
    invoke-static {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$500(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mAdapter:Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
    invoke-static {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$400(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 3273
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3275
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mAdapter:Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$400(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mCurItem:I
    invoke-static {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$500(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mCurItem:I
    invoke-static {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$500(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mAdapter:Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
    invoke-static {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$400(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3276
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3278
    :cond_1
    return-void

    .line 3271
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3282
    invoke-super {p0, p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3299
    :goto_0
    return v0

    .line 3285
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 3299
    goto :goto_0

    .line 3287
    :sswitch_0
    iget-object v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mAdapter:Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
    invoke-static {v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$400(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mCurItem:I
    invoke-static {v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$500(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mCurItem:I
    invoke-static {v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$500(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mAdapter:Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
    invoke-static {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$400(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 3288
    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    iget-object v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mCurItem:I
    invoke-static {v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$500(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3291
    goto :goto_0

    .line 3293
    :sswitch_1
    iget-object v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mAdapter:Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
    invoke-static {v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$400(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mCurItem:I
    invoke-static {v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$500(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mCurItem:I
    invoke-static {v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$500(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mAdapter:Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
    invoke-static {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$400(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3294
    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    iget-object v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$MyAccessibilityDelegate;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mCurItem:I
    invoke-static {v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$500(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3297
    goto :goto_0

    .line 3285
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
