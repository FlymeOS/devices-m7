.class public interface abstract Lcom/htc/camera/ui/IViewfinder;
.super Ljava/lang/Object;
.source "IViewfinder.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# static fields
.field public static final PROPERTY_IS_PREVIEW_COVER_VISIBLE:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 27
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsPreviewCoverVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/ui/IViewfinder;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_COVER_VISIBLE:Lcom/htc/camera/base/PropertyKey;

    .line 31
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsPreviewResourceReady"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/ui/IViewfinder;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    .line 35
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "PreviewBounds"

    const-class v2, Landroid/graphics/Rect;

    const-class v3, Lcom/htc/camera/ui/IViewfinder;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract convertFromRelativePreviewPosition(FFLandroid/graphics/Point;I)Z
.end method

.method public abstract convertToRelativePreviewPosition(FFLandroid/graphics/PointF;I)Z
.end method

.method public abstract getPreviewResourceLock()Ljava/lang/Object;
.end method

.method public abstract showPreviewCover(I)Lcom/htc/camera/CloseableHandle;
.end method
