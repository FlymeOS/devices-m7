.class Lcom/htc/camera/viewfinder/GLViewFinder$53;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

.field final synthetic val$previewSize:Lcom/htc/camera/imaging/Size;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/imaging/Size;)V
    .locals 0

    .prologue
    .line 3297
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$53;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$53;->val$previewSize:Lcom/htc/camera/imaging/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3302
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$53;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$53;->val$previewSize:Lcom/htc/camera/imaging/Size;

    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder$53;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;
    invoke-static {v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$8300(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget-object v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder$53;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;
    invoke-static {v4}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$8300(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->rotation:Lcom/htc/camera/rotate/UIRotation;

    iget-object v5, p0, Lcom/htc/camera/viewfinder/GLViewFinder$53;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;
    invoke-static {v5}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$8300(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->previewBounds:Landroid/graphics/Rect;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->calculatePreviewBounds(ZLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/rotate/UIRotation;Landroid/graphics/Rect;)V
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$8400(Lcom/htc/camera/viewfinder/GLViewFinder;ZLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/rotate/UIRotation;Landroid/graphics/Rect;)V

    .line 3310
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$53;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_AttachedSurfaceHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$900(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 3311
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$53;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_AttachedSurfaceHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$900(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->previewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3310
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3312
    :cond_0
    return-void
.end method
