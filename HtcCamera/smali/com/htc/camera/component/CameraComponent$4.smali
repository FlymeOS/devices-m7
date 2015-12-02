.class Lcom/htc/camera/component/CameraComponent$4;
.super Ljava/lang/Object;
.source "CameraComponent.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraComponent;

.field final synthetic val$callback:Lcom/htc/camera/component/n;

.field final synthetic val$rotation:Lcom/htc/camera/rotate/UIRotation;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraComponent;Lcom/htc/camera/component/n;Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 884
    iput-object p1, p0, Lcom/htc/camera/component/CameraComponent$4;->this$0:Lcom/htc/camera/component/CameraComponent;

    iput-object p2, p0, Lcom/htc/camera/component/CameraComponent$4;->val$callback:Lcom/htc/camera/component/n;

    iput-object p3, p0, Lcom/htc/camera/component/CameraComponent$4;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/htc/camera/component/CameraComponent$4;->val$rotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 893
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent$4;->val$callback:Lcom/htc/camera/component/n;

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent$4;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/camera/component/CameraComponent$4;->val$rotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/component/n;->rotate(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 894
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 889
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 886
    return-void
.end method
