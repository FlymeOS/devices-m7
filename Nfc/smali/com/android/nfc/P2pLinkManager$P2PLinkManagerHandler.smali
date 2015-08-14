.class final Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;
.super Landroid/os/Handler;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "P2PLinkManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 304
    :pswitch_0
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcP2pLinkManager"

    const-string v1, "MSG_SET_NDEF_TO_SEND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/nfc/IAppCallback;

    iput-object v0, v2, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    .line 307
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    .line 308
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
