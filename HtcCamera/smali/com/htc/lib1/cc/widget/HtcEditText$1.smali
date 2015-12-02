.class Lcom/htc/lib1/cc/widget/HtcEditText$1;
.super Ljava/lang/Object;
.source "HtcEditText.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcEditText;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcEditText;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcEditText$1;->this$0:Lcom/htc/lib1/cc/widget/HtcEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcEditText$1;->this$0:Lcom/htc/lib1/cc/widget/HtcEditText;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcEditText;->onDownAnimationCancel()V

    .line 249
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcEditText$1;->this$0:Lcom/htc/lib1/cc/widget/HtcEditText;

    # invokes: Lcom/htc/lib1/cc/widget/HtcEditText;->onDownAnimationEnd()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcEditText;->access$100(Lcom/htc/lib1/cc/widget/HtcEditText;)V

    .line 245
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcEditText$1;->this$0:Lcom/htc/lib1/cc/widget/HtcEditText;

    # invokes: Lcom/htc/lib1/cc/widget/HtcEditText;->onDownAnimationStart()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcEditText;->access$000(Lcom/htc/lib1/cc/widget/HtcEditText;)V

    .line 239
    return-void
.end method
