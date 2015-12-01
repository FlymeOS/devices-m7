.class public Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;
.super Ljava/lang/Object;
.source "PhotoBoothResolutionProvider.java"


# instance fields
.field private cameraType:Lcom/htc/camera/CameraType;

.field private pixelSize:I

.field private resi:Lcom/htc/camera/Resolution;

.field private sizeMode:Lcom/htc/camera/PhotoSizeMode;


# direct methods
.method public constructor <init>(Lcom/htc/camera/Resolution;Lcom/htc/camera/CameraType;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->setResolution(Lcom/htc/camera/Resolution;)V

    .line 36
    iput-object p2, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->cameraType:Lcom/htc/camera/CameraType;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->cameraType:Lcom/htc/camera/CameraType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->pixelSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;)Lcom/htc/camera/Resolution;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->resi:Lcom/htc/camera/Resolution;

    return-object v0
.end method


# virtual methods
.method public setResolution(Lcom/htc/camera/Resolution;)V
    .locals 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->resi:Lcom/htc/camera/Resolution;

    .line 40
    iget-object v0, p1, Lcom/htc/camera/Resolution;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->sizeMode:Lcom/htc/camera/PhotoSizeMode;

    .line 41
    invoke-virtual {p1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$PatternResolution;->pixelSize:I

    .line 42
    return-void
.end method
