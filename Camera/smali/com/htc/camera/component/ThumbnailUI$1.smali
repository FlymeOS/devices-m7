.class Lcom/htc/camera/component/ThumbnailUI$1;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailUI;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI$1;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 98
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$1;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$000(Lcom/htc/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 101
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 102
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailUI$1;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_SecondThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Lcom/htc/camera/component/ThumbnailUI;->access$100(Lcom/htc/camera/component/ThumbnailUI;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 104
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 105
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailUI$1;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # setter for: Lcom/htc/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v1, v0}, Lcom/htc/camera/component/ThumbnailUI;->access$202(Lcom/htc/camera/component/ThumbnailUI;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 106
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
