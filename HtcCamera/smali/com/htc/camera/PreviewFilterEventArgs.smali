.class public Lcom/htc/camera/PreviewFilterEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "PreviewFilterEventArgs.java"


# instance fields
.field public final isPreviewCoverVisible:Z

.field public final previewBounds:Landroid/graphics/Rect;

.field public final rotation:Lcom/htc/camera/rotate/UIRotation;

.field public final size:Lcom/htc/camera/imaging/Size;


# direct methods
.method public constructor <init>(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/imaging/Size;Landroid/graphics/Rect;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 24
    iput-boolean p4, p0, Lcom/htc/camera/PreviewFilterEventArgs;->isPreviewCoverVisible:Z

    .line 25
    iput-object p3, p0, Lcom/htc/camera/PreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    .line 26
    iput-object p1, p0, Lcom/htc/camera/PreviewFilterEventArgs;->rotation:Lcom/htc/camera/rotate/UIRotation;

    .line 27
    iput-object p2, p0, Lcom/htc/camera/PreviewFilterEventArgs;->size:Lcom/htc/camera/imaging/Size;

    .line 28
    return-void
.end method
