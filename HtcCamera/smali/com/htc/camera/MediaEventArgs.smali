.class public Lcom/htc/camera/MediaEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "MediaEventArgs.java"


# instance fields
.field public final captureHandle:Lcom/htc/camera/CaptureHandle;

.field public final contentUri:Landroid/net/Uri;

.field public final deleteFailedReason:Lcom/htc/camera/MediaDeletionFailedReason;

.field public final duration:Lcom/htc/camera/Duration;

.field public final filePath:Lcom/htc/camera/io/Path;

.field public final format:Lcom/htc/camera/io/FileFormat;

.field public final isDualLens:Ljava/lang/Boolean;

.field public final isLastMedia:Z

.field public final orientation:I

.field public final takenTime:J


# direct methods
.method public constructor <init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;JILjava/lang/Boolean;ZLcom/htc/camera/MediaDeletionFailedReason;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/htc/camera/MediaEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    .line 72
    iput-object p2, p0, Lcom/htc/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    .line 73
    iput-object p10, p0, Lcom/htc/camera/MediaEventArgs;->deleteFailedReason:Lcom/htc/camera/MediaDeletionFailedReason;

    .line 74
    iput-object p4, p0, Lcom/htc/camera/MediaEventArgs;->format:Lcom/htc/camera/io/FileFormat;

    .line 75
    iput-object p3, p0, Lcom/htc/camera/MediaEventArgs;->filePath:Lcom/htc/camera/io/Path;

    .line 76
    iput-object p8, p0, Lcom/htc/camera/MediaEventArgs;->isDualLens:Ljava/lang/Boolean;

    .line 77
    iput-boolean p9, p0, Lcom/htc/camera/MediaEventArgs;->isLastMedia:Z

    .line 78
    iput p7, p0, Lcom/htc/camera/MediaEventArgs;->orientation:I

    .line 79
    iput-wide p5, p0, Lcom/htc/camera/MediaEventArgs;->takenTime:J

    .line 80
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaEventArgs;->duration:Lcom/htc/camera/Duration;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;JIZ)V
    .locals 11

    .prologue
    .line 42
    const-wide/16 v5, -0x1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/htc/camera/MediaEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;JLcom/htc/camera/Duration;ILjava/lang/Boolean;Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;JIZLcom/htc/camera/MediaDeletionFailedReason;)V
    .locals 11

    .prologue
    .line 67
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/htc/camera/MediaEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;JILjava/lang/Boolean;ZLcom/htc/camera/MediaDeletionFailedReason;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;JLcom/htc/camera/Duration;ILjava/lang/Boolean;Z)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/htc/camera/MediaEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    .line 47
    iput-object p2, p0, Lcom/htc/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/MediaEventArgs;->deleteFailedReason:Lcom/htc/camera/MediaDeletionFailedReason;

    .line 49
    iput-object p4, p0, Lcom/htc/camera/MediaEventArgs;->format:Lcom/htc/camera/io/FileFormat;

    .line 50
    iput-object p3, p0, Lcom/htc/camera/MediaEventArgs;->filePath:Lcom/htc/camera/io/Path;

    .line 51
    iput-object p9, p0, Lcom/htc/camera/MediaEventArgs;->isDualLens:Ljava/lang/Boolean;

    .line 52
    iput-boolean p10, p0, Lcom/htc/camera/MediaEventArgs;->isLastMedia:Z

    .line 53
    iput p8, p0, Lcom/htc/camera/MediaEventArgs;->orientation:I

    .line 54
    iput-wide p5, p0, Lcom/htc/camera/MediaEventArgs;->takenTime:J

    .line 55
    iput-object p7, p0, Lcom/htc/camera/MediaEventArgs;->duration:Lcom/htc/camera/Duration;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;Z)V
    .locals 9

    .prologue
    .line 38
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/htc/camera/MediaEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;JIZ)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;ZLcom/htc/camera/MediaDeletionFailedReason;)V
    .locals 10

    .prologue
    .line 59
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/htc/camera/MediaEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;JIZLcom/htc/camera/MediaDeletionFailedReason;)V

    .line 60
    return-void
.end method


# virtual methods
.method public final isSuccessful()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/camera/MediaEventArgs;->deleteFailedReason:Lcom/htc/camera/MediaDeletionFailedReason;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
