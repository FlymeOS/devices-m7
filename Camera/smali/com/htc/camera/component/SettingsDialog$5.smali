.class Lcom/htc/camera/component/SettingsDialog$5;
.super Ljava/lang/Object;
.source "SettingsDialog.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SettingsDialog;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SettingsDialog;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/camera/component/SettingsDialog$5;->this$0:Lcom/htc/camera/component/SettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$5;->this$0:Lcom/htc/camera/component/SettingsDialog;

    iget-object v1, p0, Lcom/htc/camera/component/SettingsDialog$5;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # getter for: Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/component/SettingsDialog;->access$000(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/camera/Handle;

    move-result-object v1

    # invokes: Lcom/htc/camera/component/SettingsDialog;->closeSettingsPanel(Lcom/htc/camera/Handle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/SettingsDialog;->access$100(Lcom/htc/camera/component/SettingsDialog;Lcom/htc/camera/Handle;)V

    .line 117
    return-void
.end method
