.class Lcom/htc/lib1/cc/widget/HtcListView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HtcListView.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcListView;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcListView;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListView$4;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 526
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$4;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # setter for: Lcom/htc/lib1/cc/widget/HtcListView;->mEndDelAniEarly:Z
    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListView;->access$1602(Lcom/htc/lib1/cc/widget/HtcListView;Z)Z

    .line 527
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$4;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # setter for: Lcom/htc/lib1/cc/widget/HtcListView;->mAnimRunning:Z
    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListView;->access$902(Lcom/htc/lib1/cc/widget/HtcListView;Z)Z

    .line 528
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$4;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # setter for: Lcom/htc/lib1/cc/widget/HtcListView;->mInDeleteAnimation:Z
    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListView;->access$1002(Lcom/htc/lib1/cc/widget/HtcListView;Z)Z

    .line 529
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$4;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # setter for: Lcom/htc/lib1/cc/widget/HtcListView;->mDisableTouchEvent:Z
    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListView;->access$1102(Lcom/htc/lib1/cc/widget/HtcListView;Z)Z

    .line 531
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$4;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # getter for: Lcom/htc/lib1/cc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListView;->access$1200(Lcom/htc/lib1/cc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 532
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$4;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # getter for: Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListView;->access$1300(Lcom/htc/lib1/cc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 533
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$4;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # getter for: Lcom/htc/lib1/cc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListView;->access$800(Lcom/htc/lib1/cc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 534
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$4;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # getter for: Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListView;->access$1700(Lcom/htc/lib1/cc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 535
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$4;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcListView;->invalidate()V

    .line 537
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$4;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # getter for: Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListView;->access$1400(Lcom/htc/lib1/cc/widget/HtcListView;)Lcom/htc/lib1/cc/widget/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView$4;->this$0:Lcom/htc/lib1/cc/widget/HtcListView;

    # getter for: Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListView;->access$1400(Lcom/htc/lib1/cc/widget/HtcListView;)Lcom/htc/lib1/cc/widget/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ac;->b()V

    .line 540
    :cond_0
    return-void
.end method
