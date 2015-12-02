.class Lcom/htc/camera/HTCCamera$27;
.super Landroid/content/BroadcastReceiver;
.source "HTCCamera.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 3285
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$27;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 3288
    if-eqz p2, :cond_0

    .line 3289
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3290
    const-string v1, "com.htc.intent.action.EASY_ACCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const-string v1, "easy_access_action"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3292
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$27;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3293
    const-string v0, "HTCCamera"

    const-string v1, "ACTION_SENSOR_LOCKSCREEN_EACCESS clear FLAG_SHOW_WHEN_LOCKED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3297
    :cond_0
    return-void
.end method
