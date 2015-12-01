.class Lcom/htc/camera/component/CameraHwKeyDialogHintUI$3;
.super Ljava/lang/Object;
.source "CameraHwKeyDialogHintUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$3;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$3;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    # getter for: Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->m_DialogView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->access$400(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 348
    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$3;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    # getter for: Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->m_DialogView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->access$400(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$3;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->m_DialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->access$502(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 352
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$3;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    # getter for: Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->access$600(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogHintPopUp() - onDismiss"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method
