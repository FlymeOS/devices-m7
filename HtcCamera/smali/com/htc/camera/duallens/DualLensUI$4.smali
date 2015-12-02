.class Lcom/htc/camera/duallens/DualLensUI$4;
.super Ljava/lang/Object;
.source "DualLensUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/duallens/DualLensUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensUI;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensUI$4;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
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
    .line 161
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$4;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    # getter for: Lcom/htc/camera/duallens/DualLensUI;->m_IsBlocked:Z
    invoke-static {v0}, Lcom/htc/camera/duallens/DualLensUI;->access$500(Lcom/htc/camera/duallens/DualLensUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$4;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->showLensBlockUI()V
    invoke-static {v0}, Lcom/htc/camera/duallens/DualLensUI;->access$1000(Lcom/htc/camera/duallens/DualLensUI;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$4;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->hideLensBlockUI()V
    invoke-static {v0}, Lcom/htc/camera/duallens/DualLensUI;->access$400(Lcom/htc/camera/duallens/DualLensUI;)V

    goto :goto_0
.end method
