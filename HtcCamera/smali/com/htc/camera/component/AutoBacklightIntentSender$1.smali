.class Lcom/htc/camera/component/AutoBacklightIntentSender$1;
.super Ljava/lang/Object;
.source "AutoBacklightIntentSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoBacklightIntentSender;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$1;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$1;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$000(Lcom/htc/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableAutoBacklight() - Run"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$1;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->removeMessages(I)V

    .line 80
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$1;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$102(Lcom/htc/camera/component/AutoBacklightIntentSender;I)I

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    const-string v1, "com.htc.intent.action.CAMERA_BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "backlight.delay"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$1;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    invoke-virtual {v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void
.end method
