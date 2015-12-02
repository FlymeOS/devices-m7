.class Lcom/htc/camera/component/SettingsDialog$6;
.super Lcom/htc/camera/CloseableHandle;
.source "SettingsDialog.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SettingsDialog;

.field final synthetic val$dialogHandle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SettingsDialog;Ljava/lang/String;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/camera/component/SettingsDialog$6;->this$0:Lcom/htc/camera/component/SettingsDialog;

    iput-object p3, p0, Lcom/htc/camera/component/SettingsDialog$6;->val$dialogHandle:Lcom/htc/camera/Handle;

    invoke-direct {p0, p2}, Lcom/htc/camera/CloseableHandle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$6;->this$0:Lcom/htc/camera/component/SettingsDialog;

    iget-object v1, p0, Lcom/htc/camera/component/SettingsDialog$6;->val$dialogHandle:Lcom/htc/camera/Handle;

    # invokes: Lcom/htc/camera/component/SettingsDialog;->closeSettingsPanel(Lcom/htc/camera/Handle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/SettingsDialog;->access$100(Lcom/htc/camera/component/SettingsDialog;Lcom/htc/camera/Handle;)V

    .line 133
    return-void
.end method
