.class Lcom/htc/camera/component/CameraComponent$6;
.super Ljava/lang/Object;
.source "CameraComponent.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraComponent;

.field final synthetic val$completionCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraComponent;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lcom/htc/camera/component/CameraComponent$6;->this$0:Lcom/htc/camera/component/CameraComponent;

    iput-object p2, p0, Lcom/htc/camera/component/CameraComponent$6;->val$completionCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent$6;->val$completionCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 991
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 986
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 983
    return-void
.end method
