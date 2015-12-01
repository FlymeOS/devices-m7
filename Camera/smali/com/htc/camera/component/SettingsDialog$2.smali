.class Lcom/htc/camera/component/SettingsDialog$2;
.super Ljava/lang/Object;
.source "SettingsDialog.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SettingsDialog;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SettingsDialog;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/camera/component/SettingsDialog$2;->this$0:Lcom/htc/camera/component/SettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog$2;->this$0:Lcom/htc/camera/component/SettingsDialog;

    iget-object v1, p0, Lcom/htc/camera/component/SettingsDialog$2;->this$0:Lcom/htc/camera/component/SettingsDialog;

    # getter for: Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/component/SettingsDialog;->access$000(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/camera/Handle;

    move-result-object v1

    # invokes: Lcom/htc/camera/component/SettingsDialog;->closeSettingsPanel(Lcom/htc/camera/Handle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/SettingsDialog;->access$100(Lcom/htc/camera/component/SettingsDialog;Lcom/htc/camera/Handle;)V

    .line 89
    :cond_0
    return-void
.end method
