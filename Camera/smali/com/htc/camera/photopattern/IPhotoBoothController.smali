.class public abstract Lcom/htc/camera/photopattern/IPhotoBoothController;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IPhotoBoothController.java"


# static fields
.field public static final DEFAULTPATTERN:Lcom/htc/camera/photopattern/PhotoBoothPattern;

.field protected static m_AllPatterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/photopattern/PhotoBoothPattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_PatternFactories:[Lcom/htc/camera/photopattern/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/htc/camera/photopattern/e",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field public final currentPattern:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/photopattern/PhotoBoothPattern;",
            ">;"
        }
    .end annotation
.end field

.field public final isPhotoBoothActive:Lcom/htc/camera/property/a;

.field public final isPhotoBoothCountDownEnable:Lcom/htc/camera/property/a;

.field public final mPropertyOwnerKey:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;

    invoke-direct {v0}, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;-><init>()V

    sput-object v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->DEFAULTPATTERN:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/photopattern/e;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/photopattern/b;

    invoke-direct {v2}, Lcom/htc/camera/photopattern/b;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/camera/photopattern/a;

    invoke-direct {v2}, Lcom/htc/camera/photopattern/a;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/htc/camera/photopattern/f;

    invoke-direct {v2}, Lcom/htc/camera/photopattern/f;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->m_PatternFactories:[Lcom/htc/camera/photopattern/e;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 57
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "IPhotoBoothController.isPhotoBoothActive"

    iget-object v2, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    .line 58
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "IPhotoBoothController.isPhotoBoothCoundDownEnable"

    iget-object v2, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->isPhotoBoothCountDownEnable:Lcom/htc/camera/property/a;

    .line 59
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IPhotoBoothController.currentPattern"

    iget-object v2, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/photopattern/IPhotoBoothController;->DEFAULTPATTERN:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->currentPattern:Lcom/htc/camera/property/Property;

    .line 60
    iget-object v0, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->propertyOwnerKey:Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->mPropertyOwnerKey:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 46
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "IPhotoBoothController.isPhotoBoothActive"

    iget-object v2, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    .line 47
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "IPhotoBoothController.isPhotoBoothCoundDownEnable"

    iget-object v2, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->isPhotoBoothCountDownEnable:Lcom/htc/camera/property/a;

    .line 48
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IPhotoBoothController.currentPattern"

    iget-object v2, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/photopattern/IPhotoBoothController;->DEFAULTPATTERN:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->currentPattern:Lcom/htc/camera/property/Property;

    .line 49
    iget-object v0, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->propertyOwnerKey:Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/camera/photopattern/IPhotoBoothController;->mPropertyOwnerKey:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public static getSupportedPattern()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/photopattern/PhotoBoothPattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->m_AllPatterns:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/htc/camera/photopattern/IPhotoBoothController;->m_PatternFactories:[Lcom/htc/camera/photopattern/e;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 81
    sget-object v1, Lcom/htc/camera/photopattern/IPhotoBoothController;->m_PatternFactories:[Lcom/htc/camera/photopattern/e;

    aget-object v3, v1, v0

    .line 85
    :try_start_0
    invoke-virtual {v3}, Lcom/htc/camera/photopattern/e;->b()Lcom/htc/camera/photopattern/PhotoBoothPattern;

    move-result-object v1

    .line 86
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 90
    const-string v4, "IPhotoBoothController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot create pattern by factory \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 93
    :cond_0
    sput-object v2, Lcom/htc/camera/photopattern/IPhotoBoothController;->m_AllPatterns:Ljava/util/ArrayList;

    .line 96
    :cond_1
    sget-object v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->m_AllPatterns:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public enterPhotoBoothMode(ILcom/htc/camera/photopattern/PhotoBoothPattern;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public exitPhotoBoothMode(I)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public abstract setCurrentPattern(Lcom/htc/camera/photopattern/PhotoBoothPattern;)V
.end method
