.class Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;
.super Ljava/lang/Object;
.source "TipsHelpController.java"


# instance fields
.field private mIntentExtra:Ljava/lang/String;

.field private mMode:Lcom/htc/camera/CameraMode;

.field private mPrefCount:Ljava/lang/String;

.field private mPrefTopic:Ljava/lang/String;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/htc/camera/CameraMode;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mPrefTopic:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mPrefCount:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mIntentExtra:Ljava/lang/String;

    .line 94
    iput p4, p0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mThreshold:I

    .line 95
    iput-object p5, p0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mMode:Lcom/htc/camera/CameraMode;

    .line 96
    return-void
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mPrefTopic:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mThreshold:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mIntentExtra:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mPrefCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mMode:Lcom/htc/camera/CameraMode;

    return-object v0
.end method
