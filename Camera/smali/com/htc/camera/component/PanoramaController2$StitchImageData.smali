.class Lcom/htc/camera/component/PanoramaController2$StitchImageData;
.super Ljava/lang/Object;
.source "PanoramaController2.java"


# instance fields
.field private captureRotation:Lcom/htc/camera/rotate/UIRotation;

.field private imageHeight:I

.field private imageWidth:I

.field private jpegRawData:[B

.field private thresholds:[I

.field private thumbnailLongSideLength:I

.field private thumbnailShortSideLength:I


# direct methods
.method public constructor <init>([BIILcom/htc/camera/rotate/UIRotation;II[I)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->jpegRawData:[B

    .line 198
    iput p2, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->imageWidth:I

    .line 199
    iput p3, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->imageHeight:I

    .line 200
    iput-object p4, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->captureRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 201
    iput p5, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->thumbnailLongSideLength:I

    .line 202
    iput p6, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->thumbnailShortSideLength:I

    .line 203
    iput-object p7, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->thresholds:[I

    .line 204
    return-void
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)[B
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->jpegRawData:[B

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->imageWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->imageHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)Lcom/htc/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->captureRotation:Lcom/htc/camera/rotate/UIRotation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->thumbnailLongSideLength:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->thumbnailShortSideLength:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)[I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->thresholds:[I

    return-object v0
.end method
