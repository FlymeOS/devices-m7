.class Lcom/htc/lib1/hfmclient/HfmClient$2;
.super Lcom/htc/hfm/IHfmServiceCallback$Stub;
.source "HfmClient.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/hfmclient/HfmClient;


# direct methods
.method constructor <init>(Lcom/htc/lib1/hfmclient/HfmClient;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/htc/lib1/hfmclient/HfmClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    invoke-direct {p0}, Lcom/htc/hfm/IHfmServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbortComplete(I)V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->access$600(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/lib1/hfmclient/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/lib1/hfmclient/a;->onAbortComplete(I)V

    .line 451
    return-void
.end method

.method public onHfmShutdown()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    const/4 v1, 0x0

    # setter for: Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/lib1/hfmclient/HfmClient;->access$202(Lcom/htc/lib1/hfmclient/HfmClient;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->access$600(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/lib1/hfmclient/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/a;->onHfmShutdown()V

    .line 464
    return-void
.end method

.method public onInterrupt()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->access$600(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/lib1/hfmclient/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/a;->onInterrupt()V

    .line 459
    return-void
.end method

.method public onReserveServiceComplete(I)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->access$600(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/lib1/hfmclient/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/lib1/hfmclient/a;->onReserveServiceComplete(I)V

    .line 438
    return-void
.end method

.method public onSelectCommandComplete(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->access$600(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/lib1/hfmclient/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/hfmclient/a;->onSelectCommandComplete(ILjava/lang/String;)V

    .line 447
    return-void
.end method

.method public onSpeakComplete(I)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->access$600(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/lib1/hfmclient/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/lib1/hfmclient/a;->onSpeakComplete(I)V

    .line 442
    return-void
.end method

.method public onStartRecording()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->access$600(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/lib1/hfmclient/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/a;->onStartRecording()V

    .line 477
    return-void
.end method

.method public onStopRecording()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->access$600(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/lib1/hfmclient/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/a;->onStopRecording()V

    .line 481
    return-void
.end method

.method public onTestWakeUpPhraseComplete(I)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->access$600(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/lib1/hfmclient/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/lib1/hfmclient/a;->onTestWakeUpPhraseComplete(I)V

    .line 473
    return-void
.end method

.method public onTimeout()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->access$600(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/lib1/hfmclient/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/a;->onTimeout()V

    .line 455
    return-void
.end method

.method public onWakeUpModeComplete(I)V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$2;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->access$600(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/lib1/hfmclient/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/lib1/hfmclient/a;->onWakeUpModeComplete(I)V

    .line 469
    return-void
.end method
