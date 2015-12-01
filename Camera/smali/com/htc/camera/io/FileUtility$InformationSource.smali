.class public final enum Lcom/htc/camera/io/FileUtility$InformationSource;
.super Ljava/lang/Enum;
.source "FileUtility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/io/FileUtility$InformationSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/io/FileUtility$InformationSource;

.field public static final enum Cache:Lcom/htc/camera/io/FileUtility$InformationSource;

.field public static final enum CacheOrFileSystem:Lcom/htc/camera/io/FileUtility$InformationSource;

.field public static final enum FileSystem:Lcom/htc/camera/io/FileUtility$InformationSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/htc/camera/io/FileUtility$InformationSource;

    const-string v1, "CacheOrFileSystem"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/io/FileUtility$InformationSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/io/FileUtility$InformationSource;->CacheOrFileSystem:Lcom/htc/camera/io/FileUtility$InformationSource;

    .line 24
    new-instance v0, Lcom/htc/camera/io/FileUtility$InformationSource;

    const-string v1, "FileSystem"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/io/FileUtility$InformationSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/io/FileUtility$InformationSource;->FileSystem:Lcom/htc/camera/io/FileUtility$InformationSource;

    .line 25
    new-instance v0, Lcom/htc/camera/io/FileUtility$InformationSource;

    const-string v1, "Cache"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/io/FileUtility$InformationSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/io/FileUtility$InformationSource;->Cache:Lcom/htc/camera/io/FileUtility$InformationSource;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/io/FileUtility$InformationSource;

    sget-object v1, Lcom/htc/camera/io/FileUtility$InformationSource;->CacheOrFileSystem:Lcom/htc/camera/io/FileUtility$InformationSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/io/FileUtility$InformationSource;->FileSystem:Lcom/htc/camera/io/FileUtility$InformationSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/io/FileUtility$InformationSource;->Cache:Lcom/htc/camera/io/FileUtility$InformationSource;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/io/FileUtility$InformationSource;->$VALUES:[Lcom/htc/camera/io/FileUtility$InformationSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/io/FileUtility$InformationSource;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/camera/io/FileUtility$InformationSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/FileUtility$InformationSource;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/io/FileUtility$InformationSource;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/camera/io/FileUtility$InformationSource;->$VALUES:[Lcom/htc/camera/io/FileUtility$InformationSource;

    invoke-virtual {v0}, [Lcom/htc/camera/io/FileUtility$InformationSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/io/FileUtility$InformationSource;

    return-object v0
.end method
