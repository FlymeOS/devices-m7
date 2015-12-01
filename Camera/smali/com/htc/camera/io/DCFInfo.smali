.class public Lcom/htc/camera/io/DCFInfo;
.super Ljava/lang/Object;
.source "DCFInfo.java"


# static fields
.field public static final DEFAULT:Lcom/htc/camera/io/DCFInfo;


# instance fields
.field public final dirCounterPrefKey:Ljava/lang/String;

.field public final dirFreeChar:Ljava/lang/String;

.field public final fileCounterPrefKey:Ljava/lang/String;

.field public final fileTag:Ljava/lang/String;

.field public final maxDirectoryCounter:I

.field public final maxFileCounter:I

.field public final subCounterDigits:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 10
    new-instance v0, Lcom/htc/camera/io/DCFInfo;

    const-string v1, "MEDIA"

    const-string v2, "IMAG"

    const-string v3, "counter_image"

    const-string v4, "counter_imagefolder"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    .line 32
    sget-object v0, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    invoke-static {v0}, Lcom/htc/camera/io/DCFUtility;->registerDCFInfo(Lcom/htc/camera/io/DCFInfo;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 40
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/htc/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/htc/camera/io/DCFInfo;->fileTag:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/htc/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/htc/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    .line 58
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/htc/camera/io/DCFInfo;->maxDirectoryCounter:I

    .line 59
    const/16 v0, 0x270f

    iput v0, p0, Lcom/htc/camera/io/DCFInfo;->maxFileCounter:I

    .line 60
    iput p5, p0, Lcom/htc/camera/io/DCFInfo;->subCounterDigits:I

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/htc/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/htc/camera/io/DCFInfo;->fileTag:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/htc/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/htc/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    .line 48
    iput p5, p0, Lcom/htc/camera/io/DCFInfo;->maxDirectoryCounter:I

    .line 49
    iput p6, p0, Lcom/htc/camera/io/DCFInfo;->maxFileCounter:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/io/DCFInfo;->subCounterDigits:I

    .line 51
    return-void
.end method
