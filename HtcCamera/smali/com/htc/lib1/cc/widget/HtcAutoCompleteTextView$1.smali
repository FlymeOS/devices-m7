.class Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "HtcAutoCompleteTextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->onDownAnimationCancel()V

    .line 275
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;

    # invokes: Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->onDownAnimationEnd()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->access$100(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)V

    .line 271
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$1;->this$0:Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;

    # invokes: Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->onDownAnimationStart()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->access$000(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)V

    .line 265
    return-void
.end method
