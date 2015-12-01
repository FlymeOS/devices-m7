.class Lcom/htc/camera/capturemode/CaptureModeManager$6;
.super Ljava/lang/Object;
.source "CaptureModeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

.field final synthetic val$textBox:Lcom/htc/lib1/cc/widget/HtcEditText;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/CaptureModeManager;Lcom/htc/lib1/cc/widget/HtcEditText;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureModeManager$6;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    iput-object p2, p0, Lcom/htc/camera/capturemode/CaptureModeManager$6;->val$textBox:Lcom/htc/lib1/cc/widget/HtcEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 285
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 286
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$6;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager$6;->val$textBox:Lcom/htc/lib1/cc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/htc/camera/capturemode/CaptureModeManager;->createUserCaptureModeInternal(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$500(Lcom/htc/camera/capturemode/CaptureModeManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$6;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    # invokes: Lcom/htc/camera/capturemode/CaptureModeManager;->showCustomCameraSavedToast()V
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$100(Lcom/htc/camera/capturemode/CaptureModeManager;)V

    .line 288
    :cond_0
    return-void
.end method
