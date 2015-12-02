.class public Lcom/htc/camera/share/ShareViaAdapterProvider;
.super Ljava/lang/Object;
.source "ShareViaAdapterProvider.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mediaInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/media/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private shareManager:Lcom/htc/camera/share/ShareIntentManager;

.field private shareViaAdapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

.field private final totalIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->mediaInfos:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->shareManager:Lcom/htc/camera/share/ShareIntentManager;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->totalIntents:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->context:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public createIntent(I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->shareManager:Lcom/htc/camera/share/ShareIntentManager;

    if-nez v0, :cond_0

    .line 42
    const-string v0, "ShareViaAdapterProvider"

    const-string v1, "createIntent() - shareManager is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->shareManager:Lcom/htc/camera/share/ShareIntentManager;

    iget-object v1, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->shareViaAdapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    iget-object v2, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->mediaInfos:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcom/htc/camera/share/ShareIntentManager;->createIntent(Landroid/widget/BaseAdapter;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getShareViaAdapter()Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->shareViaAdapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    return-object v0
.end method

.method public initialize(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/media/MediaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    const-string v0, "ShareViaAdapterProvider"

    const-string v1, "initialize() - mediaInfoList is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->mediaInfos:Ljava/util/List;

    .line 66
    iget-object v0, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->shareManager:Lcom/htc/camera/share/ShareIntentManager;

    if-nez v0, :cond_1

    .line 67
    new-instance v1, Lcom/htc/camera/share/ShareIntentManager;

    iget-object v0, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->context:Landroid/content/Context;

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-direct {v1, v0}, Lcom/htc/camera/share/ShareIntentManager;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v1, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->shareManager:Lcom/htc/camera/share/ShareIntentManager;

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->shareManager:Lcom/htc/camera/share/ShareIntentManager;

    iget-object v1, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->mediaInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/htc/camera/share/ShareIntentManager;->getShareIntentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    const-string v0, "ShareViaAdapterProvider"

    const-string v1, "initialize() - intentList is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->totalIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 74
    iget-object v1, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->totalIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->totalIntents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    const-string v0, "ShareViaAdapterProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KerKer: totalIntents num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->totalIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    iget-object v1, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->totalIntents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/share/ShareViaAdapterProvider;->shareViaAdapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    goto :goto_0
.end method
