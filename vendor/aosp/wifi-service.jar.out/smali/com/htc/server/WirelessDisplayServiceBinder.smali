.class public final Lcom/htc/server/WirelessDisplayServiceBinder;
.super Lcom/android/server/SystemService;
.source "WirelessDisplayServiceBinder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WirelessDisplayServiceBinder"


# instance fields
.field final mMLHD:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/htc/server/WirelessDisplayService;

    invoke-direct {v0, p1}, Lcom/htc/server/WirelessDisplayService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/WirelessDisplayServiceBinder;->mMLHD:Lcom/htc/server/WirelessDisplayService;

    .line 33
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 43
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 46
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "WirelessDisplayServiceBinder"

    const-string v1, "Registering wireless_display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "wireless_display"

    iget-object v1, p0, Lcom/htc/server/WirelessDisplayServiceBinder;->mMLHD:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/WirelessDisplayServiceBinder;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 39
    return-void
.end method
