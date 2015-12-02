.class Lcom/htc/camera/component/PowerWarningUI$3;
.super Lcom/htc/camera/trigger/Trigger;
.source "PowerWarningUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PowerWarningUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PowerWarningUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/camera/component/PowerWarningUI$3;->this$0:Lcom/htc/camera/component/PowerWarningUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI$3;->this$0:Lcom/htc/camera/component/PowerWarningUI;

    # invokes: Lcom/htc/camera/component/PowerWarningUI;->resetPowerWarningSettings()V
    invoke-static {v0}, Lcom/htc/camera/component/PowerWarningUI;->access$100(Lcom/htc/camera/component/PowerWarningUI;)V

    .line 151
    return-void
.end method
