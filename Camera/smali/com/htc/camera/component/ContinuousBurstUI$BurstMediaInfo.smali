.class final Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;
.super Lcom/htc/camera/media/ImageMediaInfo;
.source "ContinuousBurstUI.java"


# instance fields
.field public volatile bucketID:Ljava/lang/String;

.field public volatile photoCount:I

.field final synthetic this$0:Lcom/htc/camera/component/ContinuousBurstUI;


# direct methods
.method private constructor <init>(Lcom/htc/camera/component/ContinuousBurstUI;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-direct {p0}, Lcom/htc/camera/media/ImageMediaInfo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/camera/component/ContinuousBurstUI;Lcom/htc/camera/component/ContinuousBurstUI$1;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;-><init>(Lcom/htc/camera/component/ContinuousBurstUI;)V

    return-void
.end method
