.class Lcom/htc/camera/actionscreen/RequestActionScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "RequestActionScreen.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/RequestActionScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/RequestActionScreen;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/camera/actionscreen/RequestActionScreen$1;->this$0:Lcom/htc/camera/actionscreen/RequestActionScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/htc/camera/actionscreen/RequestActionScreen$1;->this$0:Lcom/htc/camera/actionscreen/RequestActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/RequestActionScreen;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/actionscreen/RequestActionScreen;->access$000(Lcom/htc/camera/actionscreen/RequestActionScreen;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceive() - Control intent received : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    const-string v1, "com.htc.camera.intent.action.ACCEPT_TAKEN_MEDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen$1;->this$0:Lcom/htc/camera/actionscreen/RequestActionScreen;

    # invokes: Lcom/htc/camera/actionscreen/RequestActionScreen;->onDoneClicked()V
    invoke-static {v0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->access$100(Lcom/htc/camera/actionscreen/RequestActionScreen;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v1, "com.htc.camera.intent.action.DROP_TAKEN_MEDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen$1;->this$0:Lcom/htc/camera/actionscreen/RequestActionScreen;

    # invokes: Lcom/htc/camera/actionscreen/RequestActionScreen;->onReCaptureClicked()V
    invoke-static {v0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->access$200(Lcom/htc/camera/actionscreen/RequestActionScreen;)V

    goto :goto_0
.end method
