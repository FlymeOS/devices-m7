.class Lcom/htc/camera/component/AutoFaceCaptureUI$1;
.super Lcom/htc/lib1/hfmclient/b;
.source "AutoFaceCaptureUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFinish(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$000(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadFinish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-nez p1, :cond_2

    .line 170
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$100(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDownloadFinish() - completed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient;->PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->Support:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->abort()I

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->reserveHFMService()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$300(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHfmDownloadClient:Lcom/htc/lib1/hfmclient/HfmDownloadClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$600(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmDownloadClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHfmDownloadClient:Lcom/htc/lib1/hfmclient/HfmDownloadClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$600(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmDownloadClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->stopDownloadCallback()V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHfmDownloadClient:Lcom/htc/lib1/hfmclient/HfmDownloadClient;
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$602(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/lib1/hfmclient/HfmDownloadClient;)Lcom/htc/lib1/hfmclient/HfmDownloadClient;

    .line 192
    return-void

    .line 177
    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$400(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDownloadFinish() - fail"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient;->PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->NotInstall:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$500(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDownloadFinish() - unknown error"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient;->PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->NotInstall:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method
