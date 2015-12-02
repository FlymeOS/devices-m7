.class public interface abstract Lcom/htc/camera/ui/IOpenGLViewfinder;
.super Ljava/lang/Object;
.source "IOpenGLViewfinder.java"

# interfaces
.implements Lcom/htc/camera/ui/ISurfaceHolderViewfinder;


# static fields
.field public static final PROFILE_GL_OPERATION:Z

.field public static final PROPERTY_PREVIEW_ADAPTER:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/CameraPreviewAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 22
    sget-boolean v0, Lcom/htc/camera/LOG;->DEBUG:Z

    sput-boolean v0, Lcom/htc/camera/ui/IOpenGLViewfinder;->PROFILE_GL_OPERATION:Z

    .line 37
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "PreviewAdapter"

    const-class v2, Lcom/htc/camera/CameraPreviewAdapter;

    const-class v3, Lcom/htc/camera/ui/IOpenGLViewfinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/ui/IOpenGLViewfinder;->PROPERTY_PREVIEW_ADAPTER:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract addPreviewBoundsCalculator(Lcom/htc/camera/ui/a;I)Lcom/htc/camera/CloseableHandle;
.end method

.method public abstract disablePreviewRendering(I)Lcom/htc/camera/CloseableHandle;
.end method

.method public abstract enableHighFrameRate()Lcom/htc/camera/CloseableHandle;
.end method

.method public abstract force3DPreviewRendering(I)Lcom/htc/camera/CloseableHandle;
.end method

.method public abstract invalidatePreviewBounds()V
.end method

.method public abstract queueRenderingEvent(Ljava/lang/Runnable;)V
.end method

.method public abstract setPreviewSourceRect(FFFFI)Lcom/htc/camera/CloseableHandle;
.end method
