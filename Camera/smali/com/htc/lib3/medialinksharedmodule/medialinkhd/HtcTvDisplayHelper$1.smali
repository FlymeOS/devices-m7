.class Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$1;
.super Ljava/lang/Object;
.source "HtcTvDisplayHelper.java"

# interfaces
.implements Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper$OnDMRMirrorListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;


# direct methods
.method constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$1;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDMRMirrorOn(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 568
    const-string v0, "HtcTvDisplayHelper "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDMRMirrorOn] , rendererID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rendererName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filtertype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$1;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->access$300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    move-result-object v0

    .line 570
    if-nez v0, :cond_0

    .line 578
    :goto_0
    return-void

    .line 573
    :cond_0
    if-eqz p1, :cond_1

    .line 574
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onDMRReadyToPlay(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 576
    :cond_1
    const-string v0, "HtcTvDisplayHelper "

    const-string v1, "[onDMRMirrorOn]. Don\'t get rendererID, so don\'t call back"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
