.class final Lcom/android/server/display/MLHDAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "MLHDAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MLHDAdapter$MLHDDevice;
    }
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "MLHD"

.field private static final REFRESHRATE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "MLHDAdapter"


# instance fields
.field private mDisplayDevice:Lcom/android/server/display/MLHDAdapter$MLHDDevice;

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    .prologue
    .line 47
    const-string v5, "MLHDAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/MLHDAdapter;)Lcom/android/server/display/MLHDAdapter$MLHDDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MLHDAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter;->mDisplayDevice:Lcom/android/server/display/MLHDAdapter$MLHDDevice;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/display/MLHDAdapter;Lcom/android/server/display/MLHDAdapter$MLHDDevice;)Lcom/android/server/display/MLHDAdapter$MLHDDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MLHDAdapter;
    .param p1, "x1"    # Lcom/android/server/display/MLHDAdapter$MLHDDevice;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/display/MLHDAdapter;->mDisplayDevice:Lcom/android/server/display/MLHDAdapter$MLHDDevice;

    return-object p1
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/android/server/display/MLHDAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/MLHDAdapter$1;-><init>(Lcom/android/server/display/MLHDAdapter;)V

    invoke-virtual {p0}, Lcom/android/server/display/MLHDAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/RemoteDisplay;->MLHDListen(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)Landroid/media/RemoteDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MLHDAdapter;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 86
    return-void
.end method

.method public registerLocked()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 53
    return-void
.end method
