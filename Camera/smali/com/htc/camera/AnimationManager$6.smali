.class final Lcom/htc/camera/AnimationManager$6;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic val$callback:Lcom/htc/camera/b;

.field final synthetic val$orientation:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/camera/b;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/htc/camera/AnimationManager$6;->val$callback:Lcom/htc/camera/b;

    iput-object p2, p0, Lcom/htc/camera/AnimationManager$6;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/htc/camera/AnimationManager$6;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/camera/AnimationManager$6;->val$callback:Lcom/htc/camera/b;

    iget-object v1, p0, Lcom/htc/camera/AnimationManager$6;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/htc/camera/AnimationManager$6;->val$orientation:I

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/b;->updateOrientation(Landroid/view/View;I)V

    .line 220
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method
