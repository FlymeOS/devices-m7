.class Lcom/htc/camera/component/RotateDialogManager$1;
.super Ljava/lang/Object;
.source "RotateDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/RotateDialogManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RotateDialogManager;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/camera/component/RotateDialogManager$1;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 54
    new-instance v1, Lcom/htc/camera/input/KeyEventArgs;

    invoke-direct {v1, p3}, Lcom/htc/camera/input/KeyEventArgs;-><init>(Landroid/view/KeyEvent;)V

    .line 55
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/htc/camera/component/RotateDialogManager$1;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    iget-object v2, v2, Lcom/htc/camera/component/RotateDialogManager;->dialogKeyDownEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/htc/camera/input/KeyEventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager$1;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # getter for: Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/RotateDialogManager;->access$000(Lcom/htc/camera/component/RotateDialogManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Keyevent is handled by event handler"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_1
    :sswitch_0
    return v0

    .line 57
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 58
    iget-object v2, p0, Lcom/htc/camera/component/RotateDialogManager$1;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    iget-object v2, v2, Lcom/htc/camera/component/RotateDialogManager;->dialogKeyUpEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_0

    .line 66
    :cond_2
    sparse-switch p2, :sswitch_data_0

    .line 75
    const/4 v0, 0x0

    goto :goto_1

    .line 73
    :sswitch_1
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canChangeZoomByVolumeKeys()Z

    move-result v0

    goto :goto_1

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
