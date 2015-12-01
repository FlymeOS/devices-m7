.class Lcom/htc/camera/component/HdrUI$2;
.super Lcom/htc/camera/trigger/Trigger;
.source "HdrUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/HdrUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/HdrUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/camera/component/HdrUI$2;->this$0:Lcom/htc/camera/component/HdrUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI$2;->this$0:Lcom/htc/camera/component/HdrUI;

    # getter for: Lcom/htc/camera/component/HdrUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/htc/camera/component/HdrUI;->access$200(Lcom/htc/camera/component/HdrUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI$2;->this$0:Lcom/htc/camera/component/HdrUI;

    # invokes: Lcom/htc/camera/component/HdrUI;->openCaptureUI()V
    invoke-static {v0}, Lcom/htc/camera/component/HdrUI;->access$000(Lcom/htc/camera/component/HdrUI;)V

    .line 269
    :cond_0
    return-void
.end method
