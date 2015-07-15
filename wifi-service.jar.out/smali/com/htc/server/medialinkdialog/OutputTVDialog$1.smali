.class Lcom/htc/server/medialinkdialog/OutputTVDialog$1;
.super Landroid/os/Handler;
.source "OutputTVDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/medialinkdialog/OutputTVDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/medialinkdialog/OutputTVDialog;


# direct methods
.method constructor <init>(Lcom/htc/server/medialinkdialog/OutputTVDialog;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog$1;->this$0:Lcom/htc/server/medialinkdialog/OutputTVDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x2711

    .line 74
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog$1;->this$0:Lcom/htc/server/medialinkdialog/OutputTVDialog;

    # getter for: Lcom/htc/server/medialinkdialog/OutputTVDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v1}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->access$000(Lcom/htc/server/medialinkdialog/OutputTVDialog;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v4, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog$1;->this$0:Lcom/htc/server/medialinkdialog/OutputTVDialog;

    # getter for: Lcom/htc/server/medialinkdialog/OutputTVDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v1}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->access$000(Lcom/htc/server/medialinkdialog/OutputTVDialog;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog$1;->this$0:Lcom/htc/server/medialinkdialog/OutputTVDialog;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/htc/server/medialinkdialog/OutputTVDialog;->getText(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->access$100(Lcom/htc/server/medialinkdialog/OutputTVDialog;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 81
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_2

    const-string v1, "OutputTVDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_COUNT_DOWN:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_3

    .line 83
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog$1;->this$0:Lcom/htc/server/medialinkdialog/OutputTVDialog;

    const/4 v2, 0x0

    # invokes: Lcom/htc/server/medialinkdialog/OutputTVDialog;->broadcastIntent(I)V
    invoke-static {v1, v2}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->access$200(Lcom/htc/server/medialinkdialog/OutputTVDialog;I)V

    .line 84
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog$1;->this$0:Lcom/htc/server/medialinkdialog/OutputTVDialog;

    invoke-virtual {v1}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->dismiss()V

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, "m":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 88
    iget v1, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 89
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog$1;->this$0:Lcom/htc/server/medialinkdialog/OutputTVDialog;

    # getter for: Lcom/htc/server/medialinkdialog/OutputTVDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->access$300(Lcom/htc/server/medialinkdialog/OutputTVDialog;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
