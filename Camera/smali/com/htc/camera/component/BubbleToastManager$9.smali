.class Lcom/htc/camera/component/BubbleToastManager$9;
.super Ljava/lang/Object;
.source "BubbleToastManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/BubbleToastManager;

.field final synthetic val$rotation:Lcom/htc/camera/rotate/UIRotation;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/BubbleToastManager;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/htc/camera/component/BubbleToastManager$9;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    iput-object p2, p0, Lcom/htc/camera/component/BubbleToastManager$9;->val$rotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager$9;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/BubbleToastManager;->m_RotateAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/htc/camera/component/BubbleToastManager;->access$602(Lcom/htc/camera/component/BubbleToastManager;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 372
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager$9;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    # getter for: Lcom/htc/camera/component/BubbleToastManager;->m_Handles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/BubbleToastManager;->access$400(Lcom/htc/camera/component/BubbleToastManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager$9;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager$9;->val$rotation:Lcom/htc/camera/rotate/UIRotation;

    # invokes: Lcom/htc/camera/component/BubbleToastManager;->updateBubbleToastRotation(Lcom/htc/camera/rotate/UIRotation;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/BubbleToastManager;->access$500(Lcom/htc/camera/component/BubbleToastManager;Lcom/htc/camera/rotate/UIRotation;)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager$9;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    # getter for: Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/htc/camera/component/BubbleToastManager;->access$700(Lcom/htc/camera/component/BubbleToastManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 375
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 362
    return-void
.end method
