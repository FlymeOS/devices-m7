.class Lcom/htc/camera/zoe/ZoeUI$8;
.super Lcom/htc/camera/trigger/Trigger;
.source "ZoeUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$8;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$8;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$8;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->linkToController()Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$1100(Lcom/htc/camera/zoe/ZoeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$8;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$1200(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/zoe/ZoeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/zoe/ZoeController;->stopCapturingAndWait()Z

    .line 919
    :cond_0
    return-void
.end method
