.class Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$4;
.super Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;
.source "HtcDLNAServiceManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V
    .locals 0

    .prologue
    .line 3143
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$4;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscovered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3149
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRendererAsReadyDongle][onDiscovered] renderId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$4;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$4;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$2600(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->getStatusBarData()Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)I

    .line 3153
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$4;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    const/16 v1, 0x4e20

    const-string v2, "Discover DMR success"

    # invokes: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I
    invoke-static {v0, p1, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$2700(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Ljava/lang/String;ILjava/lang/String;)I

    .line 3154
    return-void
.end method

.method public onTimeout()V
    .locals 3

    .prologue
    .line 3160
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setRendererAsReadyDongle][onTimeout]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3162
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$4;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    const/16 v1, -0x4000

    const-string v2, "Discover Timeout"

    # invokes: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I
    invoke-static {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$700(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;ILjava/lang/String;)I

    .line 3163
    return-void
.end method
