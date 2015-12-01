.class Lcom/htc/camera/component/AutoFaceCaptureUI$2;
.super Lcom/htc/lib1/hfmclient/a;
.source "AutoFaceCaptureUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbortComplete(I)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$1400(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HfmCallback onAbortComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sparse-switch p1, :sswitch_data_0

    .line 278
    :goto_0
    :sswitch_0
    return-void

    .line 271
    :sswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v2, 0x28a3

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 272
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$1500(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfmCallback SUCCESS_USER_ABORT request again"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCancelReservationComplete(I)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$1800(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfmCallback onCancelReservationComplete"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public onHfmShutdown()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$1900(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfmCallback onHfmShutdown"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public onInterrupt()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$1700(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfmCallback onInterrupt"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public onReleaseServiceComplete(I)V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$702(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 228
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$900(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HfmCallback onReleaseServiceComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mbHFMServiceReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z
    invoke-static {v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$700(Lcom/htc/camera/component/AutoFaceCaptureUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onReserveServiceComplete(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 201
    if-ne p1, v6, :cond_0

    .line 204
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z
    invoke-static {v0, v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$702(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 205
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/lib1/hfmclient/HfmClient;->setNotificationSoundEnabled(Z)I

    .line 206
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/lib1/hfmclient/HfmClient;->setDefaultRetryEnabled(Z)I

    .line 207
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/camera/HtcSpeakConfidenceUtility;->getConfidence(Ljava/util/Locale;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/hfmclient/HfmClient;->setConfidenceLevel(I)I

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$800(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HfmCallback onReserveServiceComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mbHFMServiceReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z
    invoke-static {v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$700(Lcom/htc/camera/component/AutoFaceCaptureUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v2, 0x2718

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 222
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$702(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$702(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    goto :goto_0
.end method

.method public onSelectCommandComplete(ILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 243
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$1100(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HfmCallback onSelectCommandComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    if-eqz p2, :cond_2

    move v0, v3

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$1200(Lcom/htc/camera/component/AutoFaceCaptureUI;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$1200(Lcom/htc/camera/component/AutoFaceCaptureUI;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v2, 0x28a4

    move v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 259
    :cond_0
    :goto_1
    return-void

    .line 246
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_2
    const/16 v0, -0x33

    if-ne p1, v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v2, 0x28a3

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 255
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$1300(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfmCallback request again"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSpeakComplete(I)V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$1000(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HfmCallback onSpeakComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public onTimeout()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$1600(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfmCallback onTimeout, should not called since 0 timeout"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public onWakeUpModeComplete(I)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2000(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfmCallback onWakeUpModeComplete"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method
