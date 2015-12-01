.class final Lcom/htc/camera/MediaProvider$2;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$contentUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/htc/camera/MediaProvider$2;->val$contentUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 312
    sget-object v0, Lcom/htc/camera/MediaProvider;->mediaUpdatedEvent:Lcom/htc/camera/event/Event;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/OneValueEventArgs;

    iget-object v3, p0, Lcom/htc/camera/MediaProvider$2;->val$contentUri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 313
    return-void
.end method
