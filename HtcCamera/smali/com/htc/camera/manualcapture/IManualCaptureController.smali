.class public interface abstract Lcom/htc/camera/manualcapture/IManualCaptureController;
.super Ljava/lang/Object;
.source "IManualCaptureController.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# static fields
.field public static final PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_MANUAL_EXPOSURE:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_MANUAL_FOCUS:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 8
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsManualCaptureEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/manualcapture/IManualCaptureController;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    .line 9
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsManualExposure"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/manualcapture/IManualCaptureController;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_EXPOSURE:Lcom/htc/camera/base/PropertyKey;

    .line 10
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsManualFocus"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/manualcapture/IManualCaptureController;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_FOCUS:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method
