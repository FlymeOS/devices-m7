.class Lcom/htc/camera/component/VolumeKeyDialogHintUI$4;
.super Ljava/lang/Object;
.source "VolumeKeyDialogHintUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$4;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$4;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    # getter for: Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_DialogView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->access$100(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 371
    if-eqz v0, :cond_0

    .line 372
    iget-object v1, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$4;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    # getter for: Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_DialogView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->access$100(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$4;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_DialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->access$202(Lcom/htc/camera/component/VolumeKeyDialogHintUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 375
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$4;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    # getter for: Lcom/htc/camera/component/VolumeKeyDialogHintUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->access$300(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogHintPopUp() - onDismiss"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method
