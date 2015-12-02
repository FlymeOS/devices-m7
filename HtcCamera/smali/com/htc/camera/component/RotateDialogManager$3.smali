.class Lcom/htc/camera/component/RotateDialogManager$3;
.super Ljava/lang/Object;
.source "RotateDialogManager.java"

# interfaces
.implements Lcom/htc/camera/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/RotateDialogManager;

.field final synthetic val$rotation:Lcom/htc/camera/rotate/UIRotation;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/htc/camera/component/RotateDialogManager$3;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    iput-object p2, p0, Lcom/htc/camera/component/RotateDialogManager$3;->val$rotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateOrientation(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$3;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # getter for: Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;
    invoke-static {v0}, Lcom/htc/camera/component/RotateDialogManager;->access$300(Lcom/htc/camera/component/RotateDialogManager;)Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$3;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # getter for: Lcom/htc/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/htc/camera/component/RotateDialogManager$DialogContainer;
    invoke-static {v0}, Lcom/htc/camera/component/RotateDialogManager;->access$300(Lcom/htc/camera/component/RotateDialogManager;)Lcom/htc/camera/component/RotateDialogManager$DialogContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager$3;->val$rotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 221
    :cond_0
    return-void
.end method
