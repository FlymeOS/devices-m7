.class final Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;
.super Lcom/htc/camera/Handle;
.source "GLViewFinder.java"


# instance fields
.field public final renderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;


# direct methods
.method public constructor <init>(Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;)V
    .locals 1

    .prologue
    .line 394
    const-string v0, "PreviewFilterRenderer"

    invoke-direct {p0, v0}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 395
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;->renderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    .line 396
    return-void
.end method
