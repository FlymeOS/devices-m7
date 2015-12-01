.class public abstract Lcom/htc/camera/ICaptureBar;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ICaptureBar.java"


# static fields
.field public static final PROPERTY_IS_HW_CAMERA_BUTTON_PRESSED:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isVideoCaptureButtonPressed:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
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
    .line 47
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsHwCameraButtonPressed"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/ICaptureBar;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/ICaptureBar;->PROPERTY_IS_HW_CAMERA_BUTTON_PRESSED:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 55
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureBar.IsPhotoCaptureButtonPressed"

    iget-object v2, p0, Lcom/htc/camera/ICaptureBar;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureBar;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    .line 56
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureBar.IsVideoCaptureButtonPressed"

    iget-object v2, p0, Lcom/htc/camera/ICaptureBar;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureBar;->isVideoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    .line 57
    return-void
.end method


# virtual methods
.method public abstract hideIndicator(Lcom/htc/camera/Handle;)V
.end method

.method public abstract hideRecordingTimer(Lcom/htc/camera/Handle;)V
.end method

.method public abstract invalidateCaptureButtonIcon(Lcom/htc/camera/Handle;)V
.end method

.method public restoreCaptureBarVisibility(Lcom/htc/camera/Handle;)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/ICaptureBar;->restoreCaptureBarVisibility(Lcom/htc/camera/Handle;I)V

    .line 94
    return-void
.end method

.method public abstract restoreCaptureBarVisibility(Lcom/htc/camera/Handle;I)V
.end method

.method public abstract restoreCaptureIcon(Lcom/htc/camera/Handle;)V
.end method

.method public setCaptureBarVisibility(Z)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/ICaptureBar;->setCaptureBarVisibility(ZI)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public abstract setCaptureBarVisibility(ZI)Lcom/htc/camera/Handle;
.end method

.method public abstract setCaptureIcon(Lcom/htc/camera/ICaptureBar$CaptureButton;Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;
.end method

.method public abstract showIndicator(Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;
.end method

.method public abstract showRecordingTimer(Ljava/lang/CharSequence;I)Lcom/htc/camera/Handle;
.end method

.method public abstract updateRecordingTimer(Lcom/htc/camera/Handle;Ljava/lang/CharSequence;)Z
.end method

.method public abstract updateRecordingTimer(Lcom/htc/camera/Handle;Z)Z
.end method
