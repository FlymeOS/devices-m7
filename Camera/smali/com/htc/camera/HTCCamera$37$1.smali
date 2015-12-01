.class Lcom/htc/camera/HTCCamera$37$1;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/HTCCamera$37;

.field final synthetic val$e:Lcom/htc/camera/base/EventArgs;

.field final synthetic val$eventKey:Lcom/htc/camera/base/EventKey;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera$37;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 6562
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$37$1;->this$1:Lcom/htc/camera/HTCCamera$37;

    iput-object p2, p0, Lcom/htc/camera/HTCCamera$37$1;->val$eventKey:Lcom/htc/camera/base/EventKey;

    iput-object p3, p0, Lcom/htc/camera/HTCCamera$37$1;->val$e:Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6565
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$37$1;->this$1:Lcom/htc/camera/HTCCamera$37;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera$37;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$37$1;->val$eventKey:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera$37$1;->val$e:Lcom/htc/camera/base/EventArgs;

    # invokes: Lcom/htc/camera/HTCCamera;->onCameraThreadEventReceived(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->access$5100(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 6566
    return-void
.end method
