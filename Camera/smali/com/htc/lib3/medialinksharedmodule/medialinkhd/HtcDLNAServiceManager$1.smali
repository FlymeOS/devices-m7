.class Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;
.super Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
.source "HtcDLNAServiceManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-direct {p0}, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadByteNotify(JJI)V
    .locals 6

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$600(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$600(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNADTCPFillBufferCallback;->onReadByteNotify(JJI)V

    .line 1265
    :cond_0
    return-void
.end method

.method public onServiceEventNotify(II)V
    .locals 3

    .prologue
    const/16 v1, 0x3e9

    .line 1270
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1271
    if-eq p2, v1, :cond_0

    if-ne p2, v1, :cond_1

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    const/16 v1, -0x7ed7

    const-string v2, "Device does not support DTCP-IP"

    # invokes: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I
    invoke-static {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$700(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;ILjava/lang/String;)I

    .line 1283
    :goto_0
    return-void

    .line 1275
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceEventNotify("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - unhandle unknown error event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1277
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1279
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceEventNotify("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - unhandle information event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1281
    :cond_3
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceEventNotify("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - unhandle unknown type event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceStartComplete()V
    .locals 4

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$100(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "onServiceStartComplete()"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$500(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$200(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;
    invoke-static {v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$400(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getInternalDLNAPushMediaInfo()Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushEncryptBuffer(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;)V

    .line 1258
    :cond_0
    return-void
.end method
