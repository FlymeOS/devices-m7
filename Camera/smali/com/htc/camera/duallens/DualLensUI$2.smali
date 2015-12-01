.class Lcom/htc/camera/duallens/DualLensUI$2;
.super Ljava/lang/Object;
.source "DualLensUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/duallens/DualLensUI;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensUI;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensUI$2;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    iput-object p2, p0, Lcom/htc/camera/duallens/DualLensUI$2;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$2;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isDualLensHandCovered:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/duallens/DualLensUI$2$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/duallens/DualLensUI$2$1;-><init>(Lcom/htc/camera/duallens/DualLensUI$2;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 133
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$2;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isDualLensHandCovered:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$2;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensUI$2;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    const/16 v2, 0x3e8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move v4, v3

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z
    invoke-static/range {v0 .. v8}, Lcom/htc/camera/duallens/DualLensUI;->access$300(Lcom/htc/camera/duallens/DualLensUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 135
    :cond_0
    return-void
.end method
