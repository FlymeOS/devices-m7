.class Lcom/htc/camera/component/PhoneCallUI$4;
.super Ljava/lang/Object;
.source "PhoneCallUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PhoneCallUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PhoneCallUI;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/htc/camera/component/PhoneCallUI$4;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$4;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->triggerRecord(Z)V

    .line 467
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$4;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # invokes: Lcom/htc/camera/component/PhoneCallUI;->answerCall()V
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$2600(Lcom/htc/camera/component/PhoneCallUI;)V

    .line 468
    return-void
.end method
