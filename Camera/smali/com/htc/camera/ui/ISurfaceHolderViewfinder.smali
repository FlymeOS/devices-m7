.class public interface abstract Lcom/htc/camera/ui/ISurfaceHolderViewfinder;
.super Ljava/lang/Object;
.source "ISurfaceHolderViewfinder.java"

# interfaces
.implements Lcom/htc/camera/ui/IViewfinder;


# static fields
.field public static final PROPERTY_PREVIEW_SURFACE_HOLDER:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 15
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "PreviewSurfaceHolder"

    const-class v2, Landroid/view/SurfaceHolder;

    const-class v3, Lcom/htc/camera/ui/ISurfaceHolderViewfinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/ui/ISurfaceHolderViewfinder;->PROPERTY_PREVIEW_SURFACE_HOLDER:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method
