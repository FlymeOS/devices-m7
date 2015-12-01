.class public final Lcom/htc/lib1/mediamanager/MediaManagerStore;
.super Ljava/lang/Object;
.source "MediaManagerStore.java"


# static fields
.field public static final SCAN_STATE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "content://mediamanager/media/scan_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/lib1/mediamanager/MediaManagerStore;->SCAN_STATE_URI:Landroid/net/Uri;

    return-void
.end method
