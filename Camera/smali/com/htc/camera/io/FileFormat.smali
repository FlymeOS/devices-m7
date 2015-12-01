.class public final enum Lcom/htc/camera/io/FileFormat;
.super Ljava/lang/Enum;
.source "FileFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/io/FileFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/io/FileFormat;

.field public static final enum Gif:Lcom/htc/camera/io/FileFormat;

.field public static final enum Jpeg:Lcom/htc/camera/io/FileFormat;

.field public static final enum Jps:Lcom/htc/camera/io/FileFormat;

.field public static final enum Mpeg4:Lcom/htc/camera/io/FileFormat;

.field public static final enum Mpeg4For3D:Lcom/htc/camera/io/FileFormat;

.field public static final enum Mpo:Lcom/htc/camera/io/FileFormat;

.field public static final enum ThreeGPP:Lcom/htc/camera/io/FileFormat;

.field public static final enum Unknown:Lcom/htc/camera/io/FileFormat;


# instance fields
.field public final fileNameExtension:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/io/FileFormat;

    const-string v1, "Unknown"

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/io/FileFormat;->Unknown:Lcom/htc/camera/io/FileFormat;

    .line 6
    new-instance v0, Lcom/htc/camera/io/FileFormat;

    const-string v1, "Jpeg"

    const-string v2, "image/jpeg"

    const-string v3, ".jpg"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/htc/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    .line 7
    new-instance v0, Lcom/htc/camera/io/FileFormat;

    const-string v1, "Jps"

    const-string v2, "image/jps"

    const-string v3, ".jps"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/htc/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/io/FileFormat;->Jps:Lcom/htc/camera/io/FileFormat;

    .line 8
    new-instance v0, Lcom/htc/camera/io/FileFormat;

    const-string v1, "Mpo"

    const-string v2, "image/mpo"

    const-string v3, ".mpo"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/htc/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/io/FileFormat;->Mpo:Lcom/htc/camera/io/FileFormat;

    .line 9
    new-instance v0, Lcom/htc/camera/io/FileFormat;

    const-string v1, "Mpeg4"

    const-string v2, "video/mp4"

    const-string v3, ".mp4"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/htc/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/io/FileFormat;->Mpeg4:Lcom/htc/camera/io/FileFormat;

    .line 10
    new-instance v0, Lcom/htc/camera/io/FileFormat;

    const-string v1, "Mpeg4For3D"

    const/4 v2, 0x5

    const-string v3, "video/mp4-3d"

    const-string v4, ".mp4"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/io/FileFormat;->Mpeg4For3D:Lcom/htc/camera/io/FileFormat;

    .line 11
    new-instance v0, Lcom/htc/camera/io/FileFormat;

    const-string v1, "ThreeGPP"

    const/4 v2, 0x6

    const-string v3, "video/3gpp"

    const-string v4, ".3gp"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/io/FileFormat;->ThreeGPP:Lcom/htc/camera/io/FileFormat;

    .line 12
    new-instance v0, Lcom/htc/camera/io/FileFormat;

    const-string v1, "Gif"

    const/4 v2, 0x7

    const-string v3, "image/gif"

    const-string v4, ".gif"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/io/FileFormat;->Gif:Lcom/htc/camera/io/FileFormat;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/htc/camera/io/FileFormat;

    sget-object v1, Lcom/htc/camera/io/FileFormat;->Unknown:Lcom/htc/camera/io/FileFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/io/FileFormat;->Jps:Lcom/htc/camera/io/FileFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/camera/io/FileFormat;->Mpo:Lcom/htc/camera/io/FileFormat;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/camera/io/FileFormat;->Mpeg4:Lcom/htc/camera/io/FileFormat;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/io/FileFormat;->Mpeg4For3D:Lcom/htc/camera/io/FileFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/io/FileFormat;->ThreeGPP:Lcom/htc/camera/io/FileFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/camera/io/FileFormat;->Gif:Lcom/htc/camera/io/FileFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/io/FileFormat;->$VALUES:[Lcom/htc/camera/io/FileFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/htc/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static fromMimeType(Ljava/lang/String;)Lcom/htc/camera/io/FileFormat;
    .locals 3

    .prologue
    .line 35
    if-eqz p0, :cond_6

    .line 37
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 38
    if-lez v0, :cond_6

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 41
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Gif:Lcom/htc/camera/io/FileFormat;

    .line 64
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    goto :goto_0

    .line 48
    :cond_1
    const-string v1, "jps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Jps:Lcom/htc/camera/io/FileFormat;

    goto :goto_0

    .line 50
    :cond_2
    const-string v1, "mpo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Mpo:Lcom/htc/camera/io/FileFormat;

    goto :goto_0

    .line 53
    :cond_3
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 55
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Mpeg4:Lcom/htc/camera/io/FileFormat;

    goto :goto_0

    .line 57
    :cond_4
    const-string v1, "mp4-3d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Mpeg4For3D:Lcom/htc/camera/io/FileFormat;

    goto :goto_0

    .line 59
    :cond_5
    const-string v1, "3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 60
    sget-object v0, Lcom/htc/camera/io/FileFormat;->ThreeGPP:Lcom/htc/camera/io/FileFormat;

    goto :goto_0

    .line 64
    :cond_6
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Unknown:Lcom/htc/camera/io/FileFormat;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/io/FileFormat;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/io/FileFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/FileFormat;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/io/FileFormat;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/io/FileFormat;->$VALUES:[Lcom/htc/camera/io/FileFormat;

    invoke-virtual {v0}, [Lcom/htc/camera/io/FileFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/io/FileFormat;

    return-object v0
.end method


# virtual methods
.method public isImage()Z
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVideo()Z
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
