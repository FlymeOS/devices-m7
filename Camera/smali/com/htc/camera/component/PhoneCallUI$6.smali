.class Lcom/htc/camera/component/PhoneCallUI$6;
.super Ljava/lang/Object;
.source "PhoneCallUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PhoneCallUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PhoneCallUI;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/htc/camera/component/PhoneCallUI$6;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$6;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$2800(Lcom/htc/camera/component/PhoneCallUI;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$6;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$2800(Lcom/htc/camera/component/PhoneCallUI;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_0

    .line 489
    const v1, -0x9258df

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$6;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$2800(Lcom/htc/camera/component/PhoneCallUI;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_1

    .line 495
    const/high16 v1, -0x170000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 500
    :goto_1
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$6;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$2900(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null button"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$6;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$3000(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null button"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$6;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$3100(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null m_AnswerDialog"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
