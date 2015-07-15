.class final Landroid/app/ContextImpl$49;
.super Landroid/app/ContextImpl$StaticServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticService()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 704
    const-string/jumbo v4, "lte"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 705
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 706
    const-string v4, "ContextImpl"

    const-string v5, "Unable to create Sprint LTE Connection Service due to IBinder b is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 722
    :cond_0
    :goto_0
    return-object v1

    .line 710
    :cond_1
    invoke-static {v0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sprint/net/lte/IConnectionManager;

    move-result-object v2

    .line 711
    .local v2, "s":Lcom/sprint/net/lte/IConnectionManager;
    if-nez v2, :cond_2

    .line 712
    const-string v4, "ContextImpl"

    const-string v5, "Unable to create Sprint LTE Connection Service due to IConnectionService s is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 713
    goto :goto_0

    .line 716
    :cond_2
    new-instance v1, Lcom/sprint/net/lte/ConnectionManager;

    invoke-direct {v1, v2}, Lcom/sprint/net/lte/ConnectionManager;-><init>(Lcom/sprint/net/lte/IConnectionManager;)V

    .line 717
    .local v1, "m":Lcom/sprint/net/lte/ConnectionManager;
    if-nez v1, :cond_0

    .line 718
    const-string v4, "ContextImpl"

    const-string v5, "Unable to create Sprint LTE Connection Service due to ConnectionManager m is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 719
    goto :goto_0
.end method
