.class Lcom/htc/camera/duallens/DualLensUI$3;
.super Ljava/lang/Object;
.source "DualLensUI.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/duallens/DualLensUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensUI;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensUI$3;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$3;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->hideLensBlockUI()V
    invoke-static {v0}, Lcom/htc/camera/duallens/DualLensUI;->access$400(Lcom/htc/camera/duallens/DualLensUI;)V

    .line 146
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$3;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/duallens/DualLensUI;->m_IsBlocked:Z
    invoke-static {v0, v1}, Lcom/htc/camera/duallens/DualLensUI;->access$502(Lcom/htc/camera/duallens/DualLensUI;Z)Z

    .line 148
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$3;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    const/16 v1, 0x3e8

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/duallens/DualLensUI;->access$600(Lcom/htc/camera/duallens/DualLensUI;I)V

    .line 149
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$3;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    const/16 v1, 0x3e9

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/duallens/DualLensUI;->access$700(Lcom/htc/camera/duallens/DualLensUI;I)V

    .line 150
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$3;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    const/16 v1, 0x3ea

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/duallens/DualLensUI;->access$800(Lcom/htc/camera/duallens/DualLensUI;I)V

    .line 151
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$3;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    const/16 v1, 0x3eb

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/duallens/DualLensUI;->access$900(Lcom/htc/camera/duallens/DualLensUI;I)V

    .line 153
    :cond_0
    return-void
.end method
