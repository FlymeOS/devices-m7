.class public abstract Lcom/htc/camera/IViewFinder3D;
.super Lcom/htc/camera/an;
.source "IViewFinder3D.java"


# instance fields
.field public final is3DPreviewRendering:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final sharedEGLContext:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljavax/microedition/khronos/egl/EGLContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 5

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/an;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 140
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IViewFinder3D.Is3DPreviewRendering"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/IViewFinder3D;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IViewFinder3D;->is3DPreviewRendering:Lcom/htc/camera/property/Property;

    .line 141
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IViewFinder3D.SharedEGLContext"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/camera/IViewFinder3D;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IViewFinder3D;->sharedEGLContext:Lcom/htc/camera/property/Property;

    .line 142
    return-void
.end method


# virtual methods
.method public abstract addPreviewFilterRenderer(Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;)Lcom/htc/camera/Handle;
.end method

.method public final attachRenderingSurface(Landroid/view/Surface;IILcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;
    .locals 6

    .prologue
    .line 155
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/IViewFinder3D;->attachRenderingSurface(Landroid/view/Surface;IILcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/ao;)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public abstract attachRenderingSurface(Landroid/view/Surface;IILcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/ao;)Lcom/htc/camera/Handle;
.end method

.method public abstract detachRenderingSurface(Lcom/htc/camera/Handle;)V
.end method

.method public abstract removePreviewFilterRenderer(Lcom/htc/camera/Handle;)V
.end method
