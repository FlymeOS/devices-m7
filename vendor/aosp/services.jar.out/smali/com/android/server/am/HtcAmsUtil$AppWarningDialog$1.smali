.class Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;
.super Landroid/os/Handler;
.source "HtcAmsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;

.field final synthetic val$app:Lcom/android/server/am/ProcessRecord;

.field final synthetic val$result:Lcom/android/server/am/AppErrorResult;

.field final synthetic val$service:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/AppErrorResult;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;->this$0:Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;

    iput-object p2, p0, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;->val$service:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;->val$app:Lcom/android/server/am/ProcessRecord;

    iput-object p4, p0, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;->val$result:Lcom/android/server/am/AppErrorResult;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;->val$service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;->val$app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;->val$app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;->this$0:Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;

    if-ne v0, v2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;->val$app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 183
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v0, p0, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;->val$result:Lcom/android/server/am/AppErrorResult;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 185
    iget-object v0, p0, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;->this$0:Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;->dismiss()V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;->removeMessages(I)V

    .line 187
    return-void

    .line 183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
