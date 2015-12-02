.class public abstract Lcom/htc/camera/ICaptureResolutionManager;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ICaptureResolutionManager.java"


# instance fields
.field public final contactPhotoResolution:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private final m_DefaultPhotoResolutionProvider:Lcom/htc/camera/aa;

.field private final m_DefaultVideoResolutionProvider:Lcom/htc/camera/am;

.field public final maxVideoDuration:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/Duration;",
            ">;"
        }
    .end annotation
.end field

.field public final maxVideoFileSize:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final photoPreviewSize:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/imaging/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final photoResolution:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field public final photoResolutionList:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field

.field public final photoResolutionProvider:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/aa;",
            ">;"
        }
    .end annotation
.end field

.field public final photoSizeModes:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/PhotoSizeMode;",
            ">;>;"
        }
    .end annotation
.end field

.field public final videoBitRate:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final videoPreviewSize:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/imaging/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final videoResolution:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field public final videoResolutionList:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field

.field public final videoResolutionProvider:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/am;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 51
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.ContactPhotoResolution"

    iget-object v2, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->contactPhotoResolution:Lcom/htc/camera/property/Property;

    .line 52
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.MaxVideoDuration"

    iget-object v2, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/Duration;->INFINITE:Lcom/htc/camera/Duration;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->maxVideoDuration:Lcom/htc/camera/property/Property;

    .line 53
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.MaxVideoFileSize"

    iget-object v2, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    const-wide v3, 0xff800000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->maxVideoFileSize:Lcom/htc/camera/property/Property;

    .line 54
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.PhotoPreviewSize"

    iget-object v2, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->photoPreviewSize:Lcom/htc/camera/property/Property;

    .line 55
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.PhotoResolution"

    iget-object v2, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    .line 56
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.PhotoResolutionList"

    iget-object v2, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolutionList:Lcom/htc/camera/property/Property;

    .line 57
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.PhotoResolutionProvider"

    iget-object v2, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolutionProvider:Lcom/htc/camera/property/Property;

    .line 58
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.PhotoSizeModes"

    iget-object v2, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->photoSizeModes:Lcom/htc/camera/property/Property;

    .line 59
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.VideoBitRate"

    iget-object v2, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->videoBitRate:Lcom/htc/camera/property/Property;

    .line 60
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.VideoPreviewSize"

    iget-object v2, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->videoPreviewSize:Lcom/htc/camera/property/Property;

    .line 61
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.VideoResolution"

    iget-object v2, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    .line 62
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.VideoResolutionList"

    iget-object v2, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolutionList:Lcom/htc/camera/property/Property;

    .line 63
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.VideoResolutionProvider"

    iget-object v2, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolutionProvider:Lcom/htc/camera/property/Property;

    .line 66
    new-instance v0, Lcom/htc/camera/DefaultPhotoResolutionProvider;

    invoke-direct {v0, p3}, Lcom/htc/camera/DefaultPhotoResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->m_DefaultPhotoResolutionProvider:Lcom/htc/camera/aa;

    .line 67
    new-instance v0, Lcom/htc/camera/DefaultVideoResolutionProvider;

    invoke-direct {v0, p3}, Lcom/htc/camera/DefaultVideoResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->m_DefaultVideoResolutionProvider:Lcom/htc/camera/am;

    .line 68
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 80
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 81
    return-void
.end method

.method public getDefaultPhotoResolutionProvider()Lcom/htc/camera/aa;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->m_DefaultPhotoResolutionProvider:Lcom/htc/camera/aa;

    return-object v0
.end method

.method public getDefaultVideoResolutionProvider()Lcom/htc/camera/am;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/camera/ICaptureResolutionManager;->m_DefaultVideoResolutionProvider:Lcom/htc/camera/am;

    return-object v0
.end method

.method public abstract restorePhotoResolutionProvider(Lcom/htc/camera/Handle;I)V
.end method

.method public abstract restoreVideoResolutionProvider(Lcom/htc/camera/Handle;I)V
.end method

.method public abstract setMaxPhotoResolution(Lcom/htc/camera/Resolution;I)Lcom/htc/camera/CloseableHandle;
.end method

.method public abstract setPhotoResolution(Lcom/htc/camera/Resolution;)V
.end method

.method public abstract setPhotoResolutionProvider(Lcom/htc/camera/aa;I)Lcom/htc/camera/Handle;
.end method

.method public abstract setVideoResolution(Lcom/htc/camera/Resolution;)V
.end method

.method public abstract setVideoResolutionProvider(Lcom/htc/camera/am;I)Lcom/htc/camera/Handle;
.end method
