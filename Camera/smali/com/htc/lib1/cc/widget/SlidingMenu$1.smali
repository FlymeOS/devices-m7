.class Lcom/htc/lib1/cc/widget/SlidingMenu$1;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Lcom/htc/lib1/cc/widget/bb;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/SlidingMenu;


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 218
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingMenu$1;->this$0:Lcom/htc/lib1/cc/widget/SlidingMenu;

    # getter for: Lcom/htc/lib1/cc/widget/SlidingMenu;->mOpenListener:Lcom/htc/lib1/cc/widget/ax;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/SlidingMenu;->access$000(Lcom/htc/lib1/cc/widget/SlidingMenu;)Lcom/htc/lib1/cc/widget/ax;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingMenu$1;->this$0:Lcom/htc/lib1/cc/widget/SlidingMenu;

    # getter for: Lcom/htc/lib1/cc/widget/SlidingMenu;->mOpenListener:Lcom/htc/lib1/cc/widget/ax;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/SlidingMenu;->access$000(Lcom/htc/lib1/cc/widget/SlidingMenu;)Lcom/htc/lib1/cc/widget/ax;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ax;->a()V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingMenu$1;->this$0:Lcom/htc/lib1/cc/widget/SlidingMenu;

    # getter for: Lcom/htc/lib1/cc/widget/SlidingMenu;->mCloseListener:Lcom/htc/lib1/cc/widget/av;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/SlidingMenu;->access$100(Lcom/htc/lib1/cc/widget/SlidingMenu;)Lcom/htc/lib1/cc/widget/av;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingMenu$1;->this$0:Lcom/htc/lib1/cc/widget/SlidingMenu;

    # getter for: Lcom/htc/lib1/cc/widget/SlidingMenu;->mCloseListener:Lcom/htc/lib1/cc/widget/av;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/SlidingMenu;->access$100(Lcom/htc/lib1/cc/widget/SlidingMenu;)Lcom/htc/lib1/cc/widget/av;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/av;->a()V

    goto :goto_0
.end method
