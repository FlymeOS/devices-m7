.class Lcom/htc/camera/component/UIRotationManager$3;
.super Landroid/view/OrientationEventListener;
.source "UIRotationManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/UIRotationManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/camera/component/UIRotationManager$3;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$3;->this$0:Lcom/htc/camera/component/UIRotationManager;

    # invokes: Lcom/htc/camera/component/UIRotationManager;->onOrientationChanged(I)V
    invoke-static {v0, p1}, Lcom/htc/camera/component/UIRotationManager;->access$400(Lcom/htc/camera/component/UIRotationManager;I)V

    .line 116
    return-void
.end method
