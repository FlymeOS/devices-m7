.class Lcom/htc/camera/component/RotateDialogManager$5;
.super Ljava/lang/Object;
.source "RotateDialogManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/RotateDialogManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RotateDialogManager;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/htc/camera/component/RotateDialogManager$5;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$5;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # getter for: Lcom/htc/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/htc/camera/component/RotateDialogManager;->access$500(Lcom/htc/camera/component/RotateDialogManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$5;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # getter for: Lcom/htc/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/htc/camera/component/RotateDialogManager;->access$500(Lcom/htc/camera/component/RotateDialogManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 321
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
