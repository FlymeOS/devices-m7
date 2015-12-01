.class Lcom/htc/camera/component/VCMDebugModeUI$5;
.super Ljava/lang/Object;
.source "VCMDebugModeUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/VCMDebugModeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/VCMDebugModeUI;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/camera/component/VCMDebugModeUI$5;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
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
    const/16 v3, 0x3ea

    .line 178
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$5;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_StartMonitor:Z
    invoke-static {v0}, Lcom/htc/camera/component/VCMDebugModeUI;->access$700(Lcom/htc/camera/component/VCMDebugModeUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$5;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    iget-object v1, p0, Lcom/htc/camera/component/VCMDebugModeUI$5;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/camera/component/VCMDebugModeUI;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    .line 184
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$5;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/VCMDebugModeUI;->access$1400(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializeOverride() - start update vcm info"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$5;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/VCMDebugModeUI;->removeMessages(I)V

    .line 189
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$5;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    invoke-virtual {v0, v3}, Lcom/htc/camera/component/VCMDebugModeUI;->removeMessages(I)V

    .line 190
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$5;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/VCMDebugModeUI;->access$1500(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializeOverride() - stop update vcm info"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
