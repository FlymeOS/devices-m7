.class Lcom/htc/camera/capturemode/CaptureModeManager$3;
.super Ljava/lang/Object;
.source "CaptureModeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

.field final synthetic val$saveAsNewCameraRef:Lcom/htc/camera/Reference;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/CaptureModeManager;Lcom/htc/camera/Reference;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureModeManager$3;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    iput-object p2, p0, Lcom/htc/camera/capturemode/CaptureModeManager$3;->val$saveAsNewCameraRef:Lcom/htc/camera/Reference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$3;->val$saveAsNewCameraRef:Lcom/htc/camera/Reference;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 202
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 203
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$3;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    # invokes: Lcom/htc/camera/capturemode/CaptureModeManager;->createUserCaptureModeInternal()V
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$400(Lcom/htc/camera/capturemode/CaptureModeManager;)V

    .line 204
    return-void
.end method
