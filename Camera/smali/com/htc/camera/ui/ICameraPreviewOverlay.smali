.class public interface abstract Lcom/htc/camera/ui/ICameraPreviewOverlay;
.super Ljava/lang/Object;
.source "ICameraPreviewOverlay.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# static fields
.field public static final EVENT_DRAW_OVERLAY:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "DrawOverlay"

    const-class v2, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;

    const-class v3, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/ui/ICameraPreviewOverlay;->EVENT_DRAW_OVERLAY:Lcom/htc/camera/base/EventKey;

    return-void
.end method


# virtual methods
.method public abstract invalidateOverlay()V
.end method
