.class Lcom/htc/camera/component/SettingsDialog$7;
.super Ljava/lang/Object;
.source "SettingsDialog.java"

# interfaces
.implements Lcom/htc/camera/menu/e;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SettingsDialog;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SettingsDialog;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/htc/camera/component/SettingsDialog$7;->this$0:Lcom/htc/camera/component/SettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/htc/camera/menu/MenuListView;Lcom/htc/camera/menu/MenuItem;II)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$7;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # invokes: Lcom/htc/camera/component/SettingsDialog;->onMenuItemClicked(Lcom/htc/camera/menu/MenuItem;II)V
    invoke-static {v0, p2, p3, p4}, Lcom/htc/camera/component/SettingsDialog;->access$200(Lcom/htc/camera/component/SettingsDialog;Lcom/htc/camera/menu/MenuItem;II)V

    .line 210
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$7;->this$0:Lcom/htc/camera/component/SettingsDialog;

    invoke-virtual {v0}, Lcom/htc/camera/component/SettingsDialog;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 211
    return-void
.end method
