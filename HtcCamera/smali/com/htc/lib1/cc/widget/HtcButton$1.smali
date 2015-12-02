.class Lcom/htc/lib1/cc/widget/HtcButton$1;
.super Ljava/lang/Object;
.source "HtcButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcButton;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcButton;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcButton$1;->this$0:Lcom/htc/lib1/cc/widget/HtcButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton$1;->this$0:Lcom/htc/lib1/cc/widget/HtcButton;

    # invokes: Lcom/htc/lib1/cc/widget/HtcButton;->onUpAnimationCancel()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcButton;->access$200(Lcom/htc/lib1/cc/widget/HtcButton;)V

    .line 349
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton$1;->this$0:Lcom/htc/lib1/cc/widget/HtcButton;

    # invokes: Lcom/htc/lib1/cc/widget/HtcButton;->onUpAnimationEnd()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcButton;->access$100(Lcom/htc/lib1/cc/widget/HtcButton;)V

    .line 345
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton$1;->this$0:Lcom/htc/lib1/cc/widget/HtcButton;

    # invokes: Lcom/htc/lib1/cc/widget/HtcButton;->onUpAnimationStart()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcButton;->access$000(Lcom/htc/lib1/cc/widget/HtcButton;)V

    .line 339
    return-void
.end method
