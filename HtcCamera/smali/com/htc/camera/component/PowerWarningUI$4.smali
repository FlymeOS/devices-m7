.class Lcom/htc/camera/component/PowerWarningUI$4;
.super Lcom/htc/camera/trigger/Trigger;
.source "PowerWarningUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PowerWarningUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PowerWarningUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/camera/component/PowerWarningUI$4;->this$0:Lcom/htc/camera/component/PowerWarningUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI$4;->this$0:Lcom/htc/camera/component/PowerWarningUI;

    # invokes: Lcom/htc/camera/component/PowerWarningUI;->resetPowerWarningSettings()V
    invoke-static {v0}, Lcom/htc/camera/component/PowerWarningUI;->access$100(Lcom/htc/camera/component/PowerWarningUI;)V

    .line 160
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI$4;->this$0:Lcom/htc/camera/component/PowerWarningUI;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/component/PowerWarningUI;->updateWarningLayout(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/PowerWarningUI;->access$200(Lcom/htc/camera/component/PowerWarningUI;Z)V

    .line 161
    return-void
.end method
