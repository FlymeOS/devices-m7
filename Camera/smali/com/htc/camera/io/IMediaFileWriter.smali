.class public interface abstract Lcom/htc/camera/io/IMediaFileWriter;
.super Ljava/lang/Object;
.source "IMediaFileWriter.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# static fields
.field public static final EVENT_MEDIA_FILE_SAVED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVE_CANCELLED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVING:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "MediaFileSaved"

    const-class v2, Lcom/htc/camera/io/MediaSaveEventArgs;

    const-class v3, Lcom/htc/camera/io/IMediaFileWriter;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/io/IMediaFileWriter;->EVENT_MEDIA_FILE_SAVED:Lcom/htc/camera/base/EventKey;

    .line 16
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "MediaSaveCancelled"

    const-class v2, Lcom/htc/camera/io/MediaSaveEventArgs;

    const-class v3, Lcom/htc/camera/io/IMediaFileWriter;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/io/IMediaFileWriter;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/htc/camera/base/EventKey;

    .line 20
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "MediaSaveFailed"

    const-class v2, Lcom/htc/camera/io/MediaSaveEventArgs;

    const-class v3, Lcom/htc/camera/io/IMediaFileWriter;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/io/IMediaFileWriter;->EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;

    .line 24
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "MediaSaved"

    const-class v2, Lcom/htc/camera/io/MediaSaveEventArgs;

    const-class v3, Lcom/htc/camera/io/IMediaFileWriter;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/io/IMediaFileWriter;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    .line 28
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "MediaSaving"

    const-class v2, Lcom/htc/camera/io/MediaSaveEventArgs;

    const-class v3, Lcom/htc/camera/io/IMediaFileWriter;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/io/IMediaFileWriter;->EVENT_MEDIA_SAVING:Lcom/htc/camera/base/EventKey;

    return-void
.end method


# virtual methods
.method public abstract getMediaQueueCapacity()J
.end method

.method public abstract getMediaQueueSize()J
.end method

.method public abstract saveMedia(Lcom/htc/camera/io/SaveMediaTask;)Lcom/htc/camera/CloseableHandle;
.end method

.method public abstract suspendUpdatingMediaStore()Lcom/htc/camera/CloseableHandle;
.end method
